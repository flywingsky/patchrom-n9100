.class Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupRestoreResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .locals 0

    .prologue
    .line 6012
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Lcom/android/server/enterprise/application/ApplicationPolicy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;
    .param p2, "x1"    # Lcom/android/server/enterprise/application/ApplicationPolicy$1;

    .prologue
    .line 6012
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 6015
    const-string v0, "ApplicationPolicy"

    const-string v1, "onReceiveResult "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6016
    const-string v0, "edm.intent.action.backup.result"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6017
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6018
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v2, "backupResult"

    const/4 v3, -0x2

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupReturnCode:I
    invoke-static {v0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2402(Lcom/android/server/enterprise/application/ApplicationPolicy;I)I

    .line 6020
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 6021
    monitor-exit v1

    .line 6029
    :cond_0
    :goto_0
    return-void

    .line 6021
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 6022
    :cond_1
    const-string v0, "edm.intent.action.restore.result"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6023
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6024
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string/jumbo v2, "restoreResult"

    const/4 v3, -0x2

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreReturnCode:I
    invoke-static {v0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2502(Lcom/android/server/enterprise/application/ApplicationPolicy;I)I

    .line 6026
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 6027
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method