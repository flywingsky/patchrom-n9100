.class Lcom/android/server/am/ActivityManagerService$VRSettingsObserver;
.super Landroid/database/ContentObserver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VRSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1

    .prologue
    .line 21772
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$VRSettingsObserver;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 21773
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 21774
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 21778
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 21779
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$VRSettingsObserver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "vrmode_developer_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 21781
    .local v0, "vrDevelopMode":Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$VRSettingsObserver;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 21782
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$VRSettingsObserver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v0, v1, Lcom/android/server/am/ActivityManagerService;->mVRDevelopMode:Z

    .line 21783
    monitor-exit v2

    .line 21784
    return-void

    .line 21783
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
