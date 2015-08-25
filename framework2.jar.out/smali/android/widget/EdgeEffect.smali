.class public Landroid/widget/EdgeEffect;
.super Ljava/lang/Object;
.source "EdgeEffect.java"


# static fields
.field private static final EPSILON:F = 0.001f

.field private static final HELD_EDGE_SCALE_Y:F = 1.0f

.field private static final MAX_ALPHA:F = 1.0f

.field private static final MAX_GLOW_HEIGHT:F = 6.0f

.field private static final MAX_VELOCITY:I = 0x2710

.field private static final MIN_VELOCITY:I = 0x64

.field private static final MIN_WIDTH:I = 0xdc

.field private static final PULL_DECAY_TIME:I = 0x3e8

.field private static final PULL_DISTANCE_ALPHA_GLOW_FACTOR:F = 1.1f

.field private static final PULL_DISTANCE_EDGE_FACTOR:I = 0x7

.field private static final PULL_DISTANCE_GLOW_FACTOR:I = 0x10

.field private static final PULL_EDGE_BEGIN:F = 0.6f

.field private static final PULL_GLOW_BEGIN:F = 1.0f

.field private static final PULL_TIME:I = 0xa7

.field private static final RECEDE_TIME:I = 0x3e8

.field private static final STATE_ABSORB:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PULL:I = 0x1

.field private static final STATE_PULL_DECAY:I = 0x4

.field private static final STATE_RECEDE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EdgeEffect"

.field private static final VELOCITY_EDGE_FACTOR:I = 0x8

.field private static final VELOCITY_GLOW_FACTOR:I = 0xc


# instance fields
.field private customAPI:Z

.field private final mBounds:Landroid/graphics/Rect;

.field private mDuration:F

.field private mEdge:Landroid/graphics/drawable/Drawable;

.field private mEdgeAlpha:F

.field private mEdgeAlphaFinish:F

.field private mEdgeAlphaStart:F

.field private mEdgeHeight:I

.field private mEdgeScaleY:F

.field private mEdgeScaleYFinish:F

.field private mEdgeScaleYStart:F

.field private mGlow:Landroid/graphics/drawable/Drawable;

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private mGlowHeight:I

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private mGlowWidth:I

.field private mHeight:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsParentThemeDeviceDefault:Z

.field private final mMaxEffectHeight:I

.field private final mMinWidth:I

.field private mOffsetX:I

.field private mPullDistance:F

.field private mStartTime:J

.field private mState:I

.field private mWidth:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/high16 v5, 0x40c00000    # 6.0f

    const/high16 v4, 0x3f000000    # 0.5f

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-boolean v2, p0, Landroid/widget/EdgeEffect;->customAPI:Z

    .line 135
    iput v2, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 139
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 152
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x10806cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    .line 153
    const v2, 0x10806ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    .line 155
    iget-object v2, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/EdgeEffect;->mEdgeHeight:I

    .line 156
    iget-object v2, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowHeight:I

    .line 157
    iget-object v2, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowWidth:I

    .line 159
    iget v2, p0, Landroid/widget/EdgeEffect;->mGlowHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    iget v3, p0, Landroid/widget/EdgeEffect;->mGlowHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/widget/EdgeEffect;->mGlowWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/widget/EdgeEffect;->mGlowHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/EdgeEffect;->mMaxEffectHeight:I

    .line 163
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x435c0000    # 220.0f

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/EdgeEffect;->mMinWidth:I

    .line 164
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v2, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 166
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 167
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101046a

    invoke-virtual {v2, v3, v0, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 168
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    .line 169
    iput-boolean v6, p0, Landroid/widget/EdgeEffect;->mIsParentThemeDeviceDefault:Z

    .line 171
    :cond_0
    return-void
.end method

.method private update()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/high16 v10, 0x447a0000    # 1000.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 430
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    .line 431
    .local v3, "time":J
    iget-wide v5, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v5, v3, v5

    long-to-float v5, v5

    iget v6, p0, Landroid/widget/EdgeEffect;->mDuration:F

    div-float/2addr v5, v6

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 433
    .local v2, "t":F
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 435
    .local v1, "interp":F
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    iget v7, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    .line 436
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    iget v7, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    .line 437
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iget v7, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    .line 438
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    iget v7, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 440
    const v5, 0x3f7fbe77    # 0.999f

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_0

    .line 441
    iget v5, p0, Landroid/widget/EdgeEffect;->mState:I

    packed-switch v5, :pswitch_data_0

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 443
    :pswitch_0
    iput v11, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 444
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 445
    iput v10, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 447
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    .line 448
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    .line 449
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 450
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 453
    iput v8, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    .line 454
    iput v8, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    .line 455
    iput v8, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 456
    iput v8, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    .line 459
    :pswitch_1
    const/4 v5, 0x4

    iput v5, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 460
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 461
    iput v10, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 463
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    .line 464
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    .line 465
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 466
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 469
    iput v8, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    .line 470
    iput v8, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    .line 471
    iput v8, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 472
    iput v8, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    .line 477
    :pswitch_2
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_1

    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    mul-float/2addr v5, v6

    div-float v0, v9, v5

    .line 480
    .local v0, "factor":F
    :goto_1
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    iget v7, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    .line 483
    iput v11, p0, Landroid/widget/EdgeEffect;->mState:I

    goto :goto_0

    .line 477
    .end local v0    # "factor":F
    :cond_1
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_1

    .line 486
    :pswitch_3
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/EdgeEffect;->mState:I

    goto :goto_0

    .line 441
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v10, 0x437f0000    # 255.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 374
    invoke-direct {p0}, Landroid/widget/EdgeEffect;->update()V

    .line 376
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    mul-float/2addr v6, v10

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 378
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowHeight:I

    int-to-float v5, v5

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    mul-float/2addr v5, v6

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowHeight:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    const v6, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v6

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowHeight:I

    int-to-float v6, v6

    const/high16 v7, 0x40c00000    # 6.0f

    mul-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    float-to-int v2, v5

    .line 381
    .local v2, "glowBottom":I
    iget v5, p0, Landroid/widget/EdgeEffect;->mWidth:I

    iget v6, p0, Landroid/widget/EdgeEffect;->mMinWidth:I

    if-ge v5, v6, :cond_2

    iget-boolean v5, p0, Landroid/widget/EdgeEffect;->mIsParentThemeDeviceDefault:Z

    if-nez v5, :cond_2

    .line 383
    iget v5, p0, Landroid/widget/EdgeEffect;->mWidth:I

    iget v6, p0, Landroid/widget/EdgeEffect;->mMinWidth:I

    sub-int/2addr v5, v6

    div-int/lit8 v3, v5, 0x2

    .line 384
    .local v3, "glowLeft":I
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/EdgeEffect;->mWidth:I

    sub-int/2addr v6, v3

    invoke-virtual {v5, v3, v4, v6, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 390
    .end local v3    # "glowLeft":I
    :goto_0
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 392
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    mul-float/2addr v6, v10

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 394
    iget v5, p0, Landroid/widget/EdgeEffect;->mEdgeHeight:I

    int-to-float v5, v5

    iget v6, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    mul-float/2addr v5, v6

    float-to-int v0, v5

    .line 395
    .local v0, "edgeBottom":I
    iget v5, p0, Landroid/widget/EdgeEffect;->mWidth:I

    iget v6, p0, Landroid/widget/EdgeEffect;->mMinWidth:I

    if-ge v5, v6, :cond_3

    iget-boolean v5, p0, Landroid/widget/EdgeEffect;->mIsParentThemeDeviceDefault:Z

    if-nez v5, :cond_3

    .line 397
    iget v5, p0, Landroid/widget/EdgeEffect;->mWidth:I

    iget v6, p0, Landroid/widget/EdgeEffect;->mMinWidth:I

    sub-int/2addr v5, v6

    div-int/lit8 v1, v5, 0x2

    .line 398
    .local v1, "edgeLeft":I
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/EdgeEffect;->mWidth:I

    sub-int/2addr v6, v1

    invoke-virtual {v5, v1, v4, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 401
    iget v5, p0, Landroid/widget/EdgeEffect;->mWidth:I

    mul-int/lit8 v6, v1, 0x2

    sub-int/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeEffect;->mWidth:I

    .line 402
    iput v1, p0, Landroid/widget/EdgeEffect;->mOffsetX:I

    .line 408
    .end local v1    # "edgeLeft":I
    :goto_1
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 410
    iget v5, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    .line 411
    iput v4, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 414
    :cond_0
    iget v5, p0, Landroid/widget/EdgeEffect;->mState:I

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4

    .line 387
    .end local v0    # "edgeBottom":I
    :cond_2
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/EdgeEffect;->mWidth:I

    invoke-virtual {v5, v4, v4, v6, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 405
    .restart local v0    # "edgeBottom":I
    :cond_3
    iget-object v5, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/EdgeEffect;->mWidth:I

    invoke-virtual {v5, v4, v4, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 406
    iput v4, p0, Landroid/widget/EdgeEffect;->mOffsetX:I

    goto :goto_1
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 213
    return-void
.end method

.method public getBounds(Z)Landroid/graphics/Rect;
    .locals 4
    .param p1, "reverse"    # Z

    .prologue
    const/4 v0, 0x0

    .line 423
    iget-object v1, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/EdgeEffect;->mWidth:I

    iget v3, p0, Landroid/widget/EdgeEffect;->mMaxEffectHeight:I

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 424
    iget-object v1, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/EdgeEffect;->mX:I

    iget v3, p0, Landroid/widget/EdgeEffect;->mOffsetX:I

    add-int/2addr v2, v3

    iget v3, p0, Landroid/widget/EdgeEffect;->mY:I

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/widget/EdgeEffect;->mMaxEffectHeight:I

    :cond_0
    sub-int v0, v3, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 426
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAbsorb(I)V
    .locals 5
    .param p1, "velocity"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 326
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 327
    const/16 v0, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 329
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 330
    const v0, 0x3e19999a    # 0.15f

    int-to-float v1, p1

    const v2, 0x3ca3d70a    # 0.02f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 334
    iput v3, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    .line 335
    iput v3, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    iput v3, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    .line 338
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 339
    iput v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 343
    const/4 v0, 0x0

    mul-int/lit8 v1, p1, 0x8

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    .line 345
    mul-int/lit8 v0, p1, 0x8

    int-to-float v0, v0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    .line 355
    const v0, 0x3ccccccd    # 0.025f

    div-int/lit8 v1, p1, 0x64

    mul-int/2addr v1, p1

    int-to-float v1, v1

    const v2, 0x391d4952    # 1.5E-4f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 359
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    mul-int/lit8 v1, p1, 0xc

    int-to-float v1, v1

    const v2, 0x3727c5ac    # 1.0E-5f

    mul-float/2addr v1, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 361
    return-void
.end method

.method public onPull(F)V
    .locals 9
    .param p1, "deltaDistance"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 226
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 227
    .local v2, "now":J
    iget v4, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    iget-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    iget v5, p0, Landroid/widget/EdgeEffect;->mDuration:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 271
    :goto_0
    return-void

    .line 230
    :cond_0
    iget v4, p0, Landroid/widget/EdgeEffect;->mState:I

    if-eq v4, v6, :cond_1

    .line 231
    iput v7, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 233
    :cond_1
    iput v6, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 235
    iput-wide v2, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 236
    const/high16 v4, 0x43270000    # 167.0f

    iput v4, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 238
    iget v4, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    add-float/2addr v4, p1

    iput v4, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    .line 239
    iget v4, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 241
    .local v0, "distance":F
    const v4, 0x3f19999a    # 0.6f

    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    .line 242
    const/high16 v4, 0x40e00000    # 7.0f

    mul-float/2addr v4, v0

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    .line 245
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3f8ccccd    # 1.1f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    .line 249
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 250
    .local v1, "glowChange":F
    cmpl-float v4, p1, v8

    if-lez v4, :cond_2

    iget v4, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    cmpg-float v4, v4, v8

    if-gez v4, :cond_2

    .line 251
    neg-float v1, v1

    .line 253
    :cond_2
    iget v4, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_3

    .line 254
    iput v8, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 258
    :cond_3
    const/high16 v4, 0x40c00000    # 6.0f

    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    const/high16 v6, 0x41800000    # 16.0f

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    invoke-static {v8, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 264
    iget-boolean v4, p0, Landroid/widget/EdgeEffect;->customAPI:Z

    if-nez v4, :cond_4

    .line 265
    iput v7, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    iput v7, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    .line 267
    :cond_4
    iget v4, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    .line 268
    iget v4, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    .line 269
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 270
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    goto/16 :goto_0
.end method

.method public onRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 294
    iput v2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    .line 296
    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 313
    :goto_0
    return-void

    .line 300
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 301
    iget v0, p0, Landroid/widget/EdgeEffect;->mEdgeAlpha:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaStart:F

    .line 302
    iget v0, p0, Landroid/widget/EdgeEffect;->mEdgeScaleY:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYStart:F

    .line 303
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 304
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 306
    iput v2, p0, Landroid/widget/EdgeEffect;->mEdgeAlphaFinish:F

    .line 307
    iput v2, p0, Landroid/widget/EdgeEffect;->mEdgeScaleYFinish:F

    .line 308
    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 309
    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 311
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 312
    const/high16 v0, 0x447a0000    # 1000.0f

    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    goto :goto_0
.end method

.method setPosition(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 192
    iput p1, p0, Landroid/widget/EdgeEffect;->mX:I

    .line 193
    iput p2, p0, Landroid/widget/EdgeEffect;->mY:I

    .line 194
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 180
    iput p1, p0, Landroid/widget/EdgeEffect;->mWidth:I

    .line 181
    iput p2, p0, Landroid/widget/EdgeEffect;->mHeight:I

    .line 182
    return-void
.end method

.method public setTouchWizCustomization(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "edgeeffectEdge"    # Landroid/graphics/drawable/Drawable;
    .param p2, "edgeeffectGlow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/EdgeEffect;->customAPI:Z

    .line 280
    iput-object p1, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    .line 281
    iput-object p2, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    .line 282
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeHeight:I

    .line 283
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowHeight:I

    .line 284
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowWidth:I

    .line 285
    return-void
.end method