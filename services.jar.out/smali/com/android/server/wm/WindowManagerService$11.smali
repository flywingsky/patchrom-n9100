.class Lcom/android/server/wm/WindowManagerService$11;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;->captureFullScreen(Landroid/os/IBinder;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;

.field final synthetic val$saveCaptureThread:Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;)V
    .locals 0

    .prologue
    .line 15701
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$11;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$11;->val$saveCaptureThread:Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 15704
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$11;->val$saveCaptureThread:Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 15705
    return-void
.end method
