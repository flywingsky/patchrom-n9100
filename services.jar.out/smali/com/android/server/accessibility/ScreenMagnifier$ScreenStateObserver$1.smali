.class Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver$1;
.super Landroid/os/Handler;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;)V
    .locals 0

    .prologue
    .line 1199
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver$1;->this$1:Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1202
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1208
    :goto_0
    return-void

    .line 1204
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1205
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver$1;->this$1:Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->handleOnScreenStateChange(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->access$2900(Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;Ljava/lang/String;)V

    goto :goto_0

    .line 1202
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
