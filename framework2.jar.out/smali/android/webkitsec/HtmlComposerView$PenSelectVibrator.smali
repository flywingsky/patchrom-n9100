.class Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;
.super Ljava/lang/Object;
.source "HtmlComposerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/HtmlComposerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PenSelectVibrator"
.end annotation


# instance fields
.field hasPermission:Z

.field isHapticFeedbackEnabled:Z

.field private mIvt:[B

.field private mVibrator:Landroid/os/SystemVibrator;

.field final synthetic this$0:Landroid/webkitsec/HtmlComposerView;


# direct methods
.method constructor <init>(Landroid/webkitsec/HtmlComposerView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2532
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;->this$0:Landroid/webkitsec/HtmlComposerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2520
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    .line 2521
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;->isHapticFeedbackEnabled:Z

    .line 2522
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;->hasPermission:Z

    .line 2524
    const/16 v0, 0x1e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;->mIvt:[B

    .line 2533
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    if-nez v0, :cond_0

    .line 2534
    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/webkitsec/HtmlComposerView;->access$400(Landroid/webkitsec/HtmlComposerView;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    .line 2536
    :cond_0
    return-void

    .line 2524
    :array_0
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x0t
        0x16t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x9t
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x0t
        -0x2ft
        0x4dt
        -0x1t
        0x20t
        0x0t
        0x0t
        0x0t
        0x7ft
        0x41t
        -0x7dt
        -0x4et
        0x0t
    .end array-data
.end method


# virtual methods
.method playVibrator()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2539
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    if-nez v0, :cond_0

    .line 2540
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;->this$0:Landroid/webkitsec/HtmlComposerView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/webkitsec/HtmlComposerView;->access$500(Landroid/webkitsec/HtmlComposerView;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    .line 2543
    :cond_0
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;->this$0:Landroid/webkitsec/HtmlComposerView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/webkitsec/HtmlComposerView;->access$600(Landroid/webkitsec/HtmlComposerView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "spen_feedback_haptic"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;->this$0:Landroid/webkitsec/HtmlComposerView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/webkitsec/HtmlComposerView;->access$700(Landroid/webkitsec/HtmlComposerView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "spen_feedback_haptic_pen_gesture"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;->isHapticFeedbackEnabled:Z

    .line 2545
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;->this$0:Landroid/webkitsec/HtmlComposerView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/webkitsec/HtmlComposerView;->access$800(Landroid/webkitsec/HtmlComposerView;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.VIBRATE"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    move v2, v1

    :cond_1
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;->hasPermission:Z

    .line 2547
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;->isHapticFeedbackEnabled:Z

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;->hasPermission:Z

    if-ne v0, v1, :cond_2

    .line 2548
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;->mIvt:[B

    invoke-virtual {v0, v1}, Landroid/os/SystemVibrator;->vibrateImmVibe([B)V

    .line 2550
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 2543
    goto :goto_0
.end method
