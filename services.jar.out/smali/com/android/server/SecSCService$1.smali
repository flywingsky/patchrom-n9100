.class Lcom/android/server/SecSCService$1;
.super Ljava/lang/Object;
.source "SecSCService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SecSCService;->SecSC_handleConnectivityStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SecSCService;


# direct methods
.method constructor <init>(Lcom/android/server/SecSCService;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/android/server/SecSCService$1;->this$0:Lcom/android/server/SecSCService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x3e8

    .line 431
    new-instance v0, Landroid/net/SntpClient;

    invoke-direct {v0}, Landroid/net/SntpClient;-><init>()V

    .line 433
    .local v0, "client":Landroid/net/SntpClient;
    const-string v7, "pool.ntp.org"

    const/16 v8, 0x1388

    invoke-virtual {v0, v7, v8}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 435
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v7

    div-long v1, v7, v9

    .line 437
    .local v1, "networktime":J
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v7

    div-long v3, v7, v9

    .line 441
    .local v3, "recvElapsedTime":J
    iget-object v7, p0, Lcom/android/server/SecSCService$1;->this$0:Lcom/android/server/SecSCService;

    invoke-virtual {v7, v1, v2, v3, v4}, Lcom/android/server/SecSCService;->SecSC_onNetworkStateChanged(JJ)V

    .line 455
    .end local v1    # "networktime":J
    .end local v3    # "recvElapsedTime":J
    :goto_0
    return-void

    .line 447
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long v5, v7, v9

    .line 451
    .local v5, "systime":J
    const-string v7, "SecSCService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Network state was changed. NTP time could not checked. noting to do. system time is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
