.class Lcom/android/server/ConnectivityService$9;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0

    .prologue
    .line 8827
    iput-object p1, p0, Lcom/android/server/ConnectivityService$9;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 8830
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.carrieriq.iqagent.service.ACTION_SERVER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8831
    iget-object v0, p0, Lcom/android/server/ConnectivityService$9;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v1, Lcom/android/server/ciq/IPConnectivityCIQ;

    invoke-direct {v1}, Lcom/android/server/ciq/IPConnectivityCIQ;-><init>()V

    # setter for: Lcom/android/server/ConnectivityService;->mCiq:Lcom/android/server/ciq/IPConnectivityCIQ;
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$7402(Lcom/android/server/ConnectivityService;Lcom/android/server/ciq/IPConnectivityCIQ;)Lcom/android/server/ciq/IPConnectivityCIQ;

    .line 8833
    :cond_0
    return-void
.end method