.class Lcom/android/internal/policy/impl/multiwindow/Docking$1;
.super Landroid/os/Handler;
.source "Docking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/multiwindow/Docking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/Docking;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/multiwindow/Docking;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/Docking;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 239
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 248
    :goto_0
    return-void

    .line 241
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/Docking;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingListener:Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/Docking;->access$000(Lcom/android/internal/policy/impl/multiwindow/Docking;)Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/Docking;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingListener:Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/Docking;->access$000(Lcom/android/internal/policy/impl/multiwindow/Docking;)Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;->onCancel()V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/Docking;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/Docking;->clear()V

    goto :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
