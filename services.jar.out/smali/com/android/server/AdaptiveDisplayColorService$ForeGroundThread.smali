.class final Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;
.super Ljava/lang/Thread;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ForeGroundThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AdaptiveDisplayColorService;


# direct methods
.method private constructor <init>(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AdaptiveDisplayColorService;Lcom/android/server/AdaptiveDisplayColorService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;
    .param p2, "x1"    # Lcom/android/server/AdaptiveDisplayColorService$1;

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;-><init>(Lcom/android/server/AdaptiveDisplayColorService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 384
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    # getter for: Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;
    invoke-static {v1}, Lcom/android/server/AdaptiveDisplayColorService;->access$900(Lcom/android/server/AdaptiveDisplayColorService;)Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    invoke-static {}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->interrupted()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 386
    const-wide/16 v1, 0x12c

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 387
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    # getter for: Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z
    invoke-static {v1}, Lcom/android/server/AdaptiveDisplayColorService;->access$1000(Lcom/android/server/AdaptiveDisplayColorService;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    :try_start_2
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    iget-object v1, v1, Lcom/android/server/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 394
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_0

    .line 400
    :cond_1
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    # setter for: Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;
    invoke-static {v1, v5}, Lcom/android/server/AdaptiveDisplayColorService;->access$902(Lcom/android/server/AdaptiveDisplayColorService;Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;)Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    .line 402
    :goto_1
    return-void

    .line 397
    :catch_2
    move-exception v0

    .line 398
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 400
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    # setter for: Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;
    invoke-static {v1, v5}, Lcom/android/server/AdaptiveDisplayColorService;->access$902(Lcom/android/server/AdaptiveDisplayColorService;Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;)Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    # setter for: Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;
    invoke-static {v2, v5}, Lcom/android/server/AdaptiveDisplayColorService;->access$902(Lcom/android/server/AdaptiveDisplayColorService;Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;)Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    throw v1
.end method
