.class Lcom/android/server/NotificationManagerService$OverTurnPlayer$2;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NotificationManagerService$OverTurnPlayer;->registerObs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/NotificationManagerService$OverTurnPlayer;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService$OverTurnPlayer;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 3413
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer$2;->this$1:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 3416
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer$2;->this$1:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    # invokes: Lcom/android/server/NotificationManagerService$OverTurnPlayer;->update()V
    invoke-static {v0}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->access$5800(Lcom/android/server/NotificationManagerService$OverTurnPlayer;)V

    .line 3417
    return-void
.end method
