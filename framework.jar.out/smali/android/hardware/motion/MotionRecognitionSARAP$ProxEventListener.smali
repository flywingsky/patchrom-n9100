.class public Landroid/hardware/motion/MotionRecognitionSARAP$ProxEventListener;
.super Ljava/lang/Object;
.source "MotionRecognitionSARAP.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionSARAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProxEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionSARAP;


# direct methods
.method public constructor <init>(Landroid/hardware/motion/MotionRecognitionSARAP;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionSARAP$ProxEventListener;->this$0:Landroid/hardware/motion/MotionRecognitionSARAP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 83
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v2, 0x0

    .line 64
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 65
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 66
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP$ProxEventListener;->this$0:Landroid/hardware/motion/MotionRecognitionSARAP;

    const/4 v1, 0x1

    # setter for: Landroid/hardware/motion/MotionRecognitionSARAP;->mbProximity:Z
    invoke-static {v0, v1}, Landroid/hardware/motion/MotionRecognitionSARAP;->access$002(Landroid/hardware/motion/MotionRecognitionSARAP;Z)Z

    .line 67
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP$ProxEventListener;->this$0:Landroid/hardware/motion/MotionRecognitionSARAP;

    # invokes: Landroid/hardware/motion/MotionRecognitionSARAP;->acquire()V
    invoke-static {v0}, Landroid/hardware/motion/MotionRecognitionSARAP;->access$100(Landroid/hardware/motion/MotionRecognitionSARAP;)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP$ProxEventListener;->this$0:Landroid/hardware/motion/MotionRecognitionSARAP;

    # setter for: Landroid/hardware/motion/MotionRecognitionSARAP;->mbProximity:Z
    invoke-static {v0, v2}, Landroid/hardware/motion/MotionRecognitionSARAP;->access$002(Landroid/hardware/motion/MotionRecognitionSARAP;Z)Z

    .line 71
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionSARAP$ProxEventListener;->this$0:Landroid/hardware/motion/MotionRecognitionSARAP;

    # invokes: Landroid/hardware/motion/MotionRecognitionSARAP;->acquire()V
    invoke-static {v0}, Landroid/hardware/motion/MotionRecognitionSARAP;->access$100(Landroid/hardware/motion/MotionRecognitionSARAP;)V

    goto :goto_0
.end method
