.class Landroid/webkitsec/WebClipboard$1;
.super Landroid/os/Handler;
.source "WebClipboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/WebClipboard;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/WebClipboard;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebClipboard;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Landroid/webkitsec/WebClipboard$1;->this$0:Landroid/webkitsec/WebClipboard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 126
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 131
    :goto_0
    return-void

    .line 128
    :pswitch_0
    iget-object v0, p0, Landroid/webkitsec/WebClipboard$1;->this$0:Landroid/webkitsec/WebClipboard;

    # invokes: Landroid/webkitsec/WebClipboard;->nativeInitPasteboardJni()V
    invoke-static {v0}, Landroid/webkitsec/WebClipboard;->access$000(Landroid/webkitsec/WebClipboard;)V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
