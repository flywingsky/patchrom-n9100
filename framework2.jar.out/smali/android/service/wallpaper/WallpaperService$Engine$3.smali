.class Landroid/service/wallpaper/WallpaperService$Engine$3;
.super Lcom/android/internal/view/BaseIWindow;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService$Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/wallpaper/WallpaperService$Engine;


# direct methods
.method constructor <init>(Landroid/service/wallpaper/WallpaperService$Engine;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-direct {p0}, Lcom/android/internal/view/BaseIWindow;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchAppVisibility(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    .line 279
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v1, v1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    if-nez v1, :cond_0

    .line 280
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x271a

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    .line 282
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 284
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .line 280
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "sync"    # Z

    .prologue
    .line 309
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v3, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 311
    :try_start_0
    new-instance v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;

    invoke-direct {v0}, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;-><init>()V

    .line 312
    .local v0, "cmd":Landroid/service/wallpaper/WallpaperService$WallpaperCommand;
    iput-object p1, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    .line 313
    iput p2, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->x:I

    .line 314
    iput p3, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->y:I

    .line 315
    iput p4, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->z:I

    .line 316
    iput-object p5, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->extras:Landroid/os/Bundle;

    .line 317
    iput-boolean p6, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    .line 318
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v2, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0x2729

    invoke-virtual {v2, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 319
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 320
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v2, v2, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v2, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 321
    monitor-exit v3

    .line 322
    return-void

    .line 321
    .end local v0    # "cmd":Landroid/service/wallpaper/WallpaperService$WallpaperCommand;
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public dispatchWallpaperOffsets(FFFFZ)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "xStep"    # F
    .param p4, "yStep"    # F
    .param p5, "sync"    # Z

    .prologue
    .line 289
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 291
    :try_start_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iput p1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    .line 292
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iput p2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffset:F

    .line 293
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iput p3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    .line 294
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iput p4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffsetStep:F

    .line 295
    if-eqz p5, :cond_0

    .line 296
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    .line 298
    :cond_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-boolean v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    if-nez v1, :cond_1

    .line 299
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    .line 300
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x2724

    invoke-virtual {v1, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 301
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 303
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    monitor-exit v2

    .line 304
    return-void

    .line 303
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public moved(II)V
    .locals 3
    .param p1, "newX"    # I
    .param p2, "newY"    # I

    .prologue
    .line 271
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x2733

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    .line 272
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 273
    return-void
.end method

.method public resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 4
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "overscanInsets"    # Landroid/graphics/Rect;
    .param p3, "contentInsets"    # Landroid/graphics/Rect;
    .param p4, "visibleInsets"    # Landroid/graphics/Rect;
    .param p5, "reportDraw"    # Z
    .param p6, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 264
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x272e

    if-eqz p5, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    .line 266
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 267
    return-void

    .line 264
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
