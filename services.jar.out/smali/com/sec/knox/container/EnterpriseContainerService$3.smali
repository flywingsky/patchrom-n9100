.class Lcom/sec/knox/container/EnterpriseContainerService$3;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseContainerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/EnterpriseContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/knox/container/EnterpriseContainerService;


# direct methods
.method constructor <init>(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 0

    .prologue
    .line 810
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$3;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 812
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Received the DPM state change broadcast"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$3;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->checkIfAdminHasBeenRemoved()Z
    invoke-static {v0}, Lcom/sec/knox/container/EnterpriseContainerService;->access$300(Lcom/sec/knox/container/EnterpriseContainerService;)Z

    .line 814
    return-void
.end method
