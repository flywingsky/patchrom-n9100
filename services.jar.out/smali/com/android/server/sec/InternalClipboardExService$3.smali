.class Lcom/android/server/sec/InternalClipboardExService$3;
.super Ljava/lang/Object;
.source "InternalClipboardExService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/InternalClipboardExService;->SetSyncClipboardData(Ljava/lang/CharSequence;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/InternalClipboardExService;

.field final synthetic val$data:Landroid/sec/clipboard/data/list/ClipboardDataText;

.field final synthetic val$text:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/server/sec/InternalClipboardExService;Landroid/sec/clipboard/data/list/ClipboardDataText;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 916
    iput-object p1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    iput-object p2, p0, Lcom/android/server/sec/InternalClipboardExService$3;->val$data:Landroid/sec/clipboard/data/list/ClipboardDataText;

    iput-object p3, p0, Lcom/android/server/sec/InternalClipboardExService$3;->val$text:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 919
    monitor-enter p0

    .line 920
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$3;->val$data:Landroid/sec/clipboard/data/list/ClipboardDataText;

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->val$text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->val$data:Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService$3;->val$data:Landroid/sec/clipboard/data/list/ClipboardDataText;

    # invokes: Lcom/android/server/sec/InternalClipboardExService;->addData(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;
    invoke-static {v0, v1, v2}, Lcom/android/server/sec/InternalClipboardExService;->access$900(Lcom/android/server/sec/InternalClipboardExService;ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;

    .line 923
    :cond_0
    monitor-exit p0

    .line 924
    return-void

    .line 923
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method