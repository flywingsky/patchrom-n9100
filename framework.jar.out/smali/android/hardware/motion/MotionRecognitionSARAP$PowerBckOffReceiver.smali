.class final Landroid/hardware/motion/MotionRecognitionSARAP$PowerBckOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MotionRecognitionSARAP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionSARAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerBckOffReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionSARAP;


# direct methods
.method private constructor <init>(Landroid/hardware/motion/MotionRecognitionSARAP;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionSARAP$PowerBckOffReceiver;->this$0:Landroid/hardware/motion/MotionRecognitionSARAP;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/motion/MotionRecognitionSARAP;Landroid/hardware/motion/MotionRecognitionSARAP$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/hardware/motion/MotionRecognitionSARAP;
    .param p2, "x1"    # Landroid/hardware/motion/MotionRecognitionSARAP$1;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionSARAP$PowerBckOffReceiver;-><init>(Landroid/hardware/motion/MotionRecognitionSARAP;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 112
    const-string v0, "MotionRecognitionSARAP"

    const-string v1, "PowerBckOffReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP$PowerBckOffReceiver;->this$0:Landroid/hardware/motion/MotionRecognitionSARAP;

    # invokes: Landroid/hardware/motion/MotionRecognitionSARAP;->acquire()V
    invoke-static {v0}, Landroid/hardware/motion/MotionRecognitionSARAP;->access$100(Landroid/hardware/motion/MotionRecognitionSARAP;)V

    .line 114
    return-void
.end method
