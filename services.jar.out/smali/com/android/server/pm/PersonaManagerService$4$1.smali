.class Lcom/android/server/pm/PersonaManagerService$4$1;
.super Ljava/lang/Thread;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PersonaManagerService$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PersonaManagerService$4;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService$4;)V
    .locals 0

    .prologue
    .line 4251
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$4$1;->this$1:Lcom/android/server/pm/PersonaManagerService$4;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4253
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$4$1;->this$1:Lcom/android/server/pm/PersonaManagerService$4;

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$4;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$4$1;->this$1:Lcom/android/server/pm/PersonaManagerService$4;

    iget v1, v1, Lcom/android/server/pm/PersonaManagerService$4;->val$userHandle:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->removeUserStateExternal(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$6000(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 4254
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$4$1;->this$1:Lcom/android/server/pm/PersonaManagerService$4;

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$4;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mInstallLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$6100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4255
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$4$1;->this$1:Lcom/android/server/pm/PersonaManagerService$4;

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$4;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4256
    :try_start_1
    const-string v0, "PersonaManagerService"

    const-string v3, "removeUserStateLocked is called..."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4257
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$4$1;->this$1:Lcom/android/server/pm/PersonaManagerService$4;

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$4;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$4$1;->this$1:Lcom/android/server/pm/PersonaManagerService$4;

    iget v3, v3, Lcom/android/server/pm/PersonaManagerService$4;->val$userHandle:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->removeUserStateLocked(I)V
    invoke-static {v0, v3}, Lcom/android/server/pm/PersonaManagerService;->access$6200(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 4258
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4259
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4260
    return-void

    .line 4258
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 4259
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
