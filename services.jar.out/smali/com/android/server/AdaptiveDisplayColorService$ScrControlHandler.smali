.class final Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;
.super Landroid/os/Handler;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScrControlHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AdaptiveDisplayColorService;


# direct methods
.method public constructor <init>(Lcom/android/server/AdaptiveDisplayColorService;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 801
    iput-object p1, p0, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    .line 802
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 803
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 807
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 829
    :goto_0
    return-void

    .line 809
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    # invokes: Lcom/android/server/AdaptiveDisplayColorService;->sendRgbAverage()V
    invoke-static {v0}, Lcom/android/server/AdaptiveDisplayColorService;->access$2200(Lcom/android/server/AdaptiveDisplayColorService;)V

    goto :goto_0

    .line 812
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    # invokes: Lcom/android/server/AdaptiveDisplayColorService;->animateScrRGB()V
    invoke-static {v0}, Lcom/android/server/AdaptiveDisplayColorService;->access$2300(Lcom/android/server/AdaptiveDisplayColorService;)V

    goto :goto_0

    .line 815
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    # invokes: Lcom/android/server/AdaptiveDisplayColorService;->setVideoMode()V
    invoke-static {v0}, Lcom/android/server/AdaptiveDisplayColorService;->access$2400(Lcom/android/server/AdaptiveDisplayColorService;)V

    goto :goto_0

    .line 818
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    # invokes: Lcom/android/server/AdaptiveDisplayColorService;->setBrowserMode()V
    invoke-static {v0}, Lcom/android/server/AdaptiveDisplayColorService;->access$2500(Lcom/android/server/AdaptiveDisplayColorService;)V

    goto :goto_0

    .line 821
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    # invokes: Lcom/android/server/AdaptiveDisplayColorService;->terminateVideoMode()V
    invoke-static {v0}, Lcom/android/server/AdaptiveDisplayColorService;->access$2600(Lcom/android/server/AdaptiveDisplayColorService;)V

    goto :goto_0

    .line 824
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    # invokes: Lcom/android/server/AdaptiveDisplayColorService;->terminateScrRGB()V
    invoke-static {v0}, Lcom/android/server/AdaptiveDisplayColorService;->access$2700(Lcom/android/server/AdaptiveDisplayColorService;)V

    goto :goto_0

    .line 807
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
