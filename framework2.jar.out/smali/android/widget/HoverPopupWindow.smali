.class public Landroid/widget/HoverPopupWindow;
.super Ljava/lang/Object;
.source "HoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/HoverPopupWindow$Gravity;,
        Landroid/widget/HoverPopupWindow$HoverPopupContainer;,
        Landroid/widget/HoverPopupWindow$TouchablePopupContainer;,
        Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;,
        Landroid/widget/HoverPopupWindow$HoverPopupListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field private static final HOVER_DETECT_TIME_MS:I = 0x12c

.field private static final MSG_DISMISS_POPUP:I = 0x2

.field private static final MSG_SHOW_POPUP:I = 0x1

.field private static final POPUP_TIMEOUT_MS:I = 0x2710

.field static final TAG:Ljava/lang/String; = "HoverPopupWindow"

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_TOOLTIP:I = 0x1

.field public static final TYPE_USER_CUSTOM:I = 0x3

.field public static final TYPE_WIDGET_DEFAULT:I = 0x2

.field private static final UI_THREAD_BUSY_TIME_MS:I = 0x3e8


# instance fields
.field protected final ANCHORVIEW_COORDINATES_TYPE_NONE:I

.field protected final ANCHORVIEW_COORDINATES_TYPE_SCREEN:I

.field protected final ANCHORVIEW_COORDINATES_TYPE_WINDOW:I

.field private final ID_TOOLTIP_VIEW:I

.field protected final MARGIN_FOR_HOVER_RING:I

.field private mAnchorRect:Landroid/graphics/Rect;

.field protected mAnchorView:Landroid/view/View;

.field protected mAnimationStyle:I

.field protected mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

.field private mContentHeight:I

.field protected mContentLP:Landroid/view/ViewGroup$LayoutParams;

.field protected mContentResId:I

.field protected mContentText:Ljava/lang/CharSequence;

.field protected mContentView:Landroid/view/View;

.field private mContentWidth:I

.field protected final mContext:Landroid/content/Context;

.field protected mCoordinatesOfAnchorView:I

.field private mDismissPopupRunnable:Ljava/lang/Runnable;

.field protected mDismissTouchableHPWOnActionUp:Z

.field private mDisplayFrame:Landroid/graphics/Rect;

.field protected mEnabled:Z

.field protected mGuideLineColor:I

.field protected mGuideLineFadeOffset:I

.field protected mGuideRingDrawableId:I

.field private mHashCodeForViewState:I

.field protected mHoverDetectTimeMS:I

.field private mHoverPaddingBottom:I

.field private mHoverPaddingLeft:I

.field private mHoverPaddingRight:I

.field private mHoverPaddingTop:I

.field protected mHoveringPointX:I

.field protected mHoveringPointY:I

.field protected mIsFHAnimationEnabled:Z

.field protected mIsFHAnimationEnabledByApp:Z

.field protected mIsFHGuideLineEnabled:Z

.field protected mIsFHGuideLineEnabledByApp:Z

.field protected mIsFHSoundAndHapticEnabled:Z

.field protected mIsGuideLineEnabled:Z

.field private mIsHoverPaddingEnabled:Z

.field protected mIsInfoPickerMoveEabled:Z

.field protected mIsInfoPickerMoveEabledByApp:Z

.field protected mIsPopupTouchable:Z

.field protected mIsProgressBar:Z

.field private mIsSPenPointChanged:Z

.field protected mIsSetInfoPickerColorToAndMoreBottomImg:Z

.field protected mIsShowMessageSent:Z

.field private mIsTryingShowPopup:Z

.field protected mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

.field protected mNeedToMeasureContentView:Z

.field protected mOverTopBoundary:Z

.field protected final mParentView:Landroid/view/View;

.field protected mPopup:Landroid/widget/PopupWindow;

.field protected mPopupGravity:I

.field protected mPopupOffsetX:I

.field protected mPopupOffsetY:I

.field protected mPopupPosX:I

.field protected mPopupPosY:I

.field protected mPopupType:I

.field protected mPreShowListener:Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;

.field protected mShowPopupAlways:Z

.field private mShowPopupRunnable:Ljava/lang/Runnable;

.field protected mToolType:I

.field protected mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

.field protected mWindowGapX:I

.field protected mWindowGapY:I

.field protected misDialer:Z

.field protected misGravityBottomUnder:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "parentView"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/HoverPopupWindow;-><init>(Landroid/view/View;I)V

    .line 237
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 4
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "type"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const v0, 0x7010001

    iput v0, p0, Landroid/widget/HoverPopupWindow;->ID_TOOLTIP_VIEW:I

    .line 100
    const/16 v0, 0x8

    iput v0, p0, Landroid/widget/HoverPopupWindow;->MARGIN_FOR_HOVER_RING:I

    .line 110
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    .line 112
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    .line 162
    iput v1, p0, Landroid/widget/HoverPopupWindow;->ANCHORVIEW_COORDINATES_TYPE_NONE:I

    .line 163
    iput v3, p0, Landroid/widget/HoverPopupWindow;->ANCHORVIEW_COORDINATES_TYPE_WINDOW:I

    .line 164
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/HoverPopupWindow;->ANCHORVIEW_COORDINATES_TYPE_SCREEN:I

    .line 182
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    .line 184
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    .line 186
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    .line 188
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mContentHeight:I

    .line 191
    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 193
    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsShowMessageSent:Z

    .line 195
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    .line 197
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 204
    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    .line 208
    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    .line 247
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    .line 249
    iput p2, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    .line 251
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->initInstance()V

    .line 252
    invoke-virtual {p0, p2}, Landroid/widget/HoverPopupWindow;->setInstanceByType(I)V

    .line 253
    return-void
.end method

.method static synthetic access$000(Landroid/widget/HoverPopupWindow;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->dismissPopup()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/HoverPopupWindow;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->showPopup()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/HoverPopupWindow;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 74
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private dismissPopup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1945
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsShowMessageSent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1946
    :cond_0
    const-string v0, "HoverPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissPopup(), remove message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1949
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1950
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    .line 1951
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 1952
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsShowMessageSent:Z

    .line 1958
    :cond_1
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 1959
    const-string v0, "HoverPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissPopup(), close popup  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1962
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1964
    :cond_2
    return-void
.end method

.method private getStateHashCode()I
    .locals 4

    .prologue
    .line 2010
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    .line 2011
    .local v0, "hashCode":I
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 2013
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    shl-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 2020
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 2021
    .local v1, "location":[I
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2022
    const/4 v2, 0x0

    aget v2, v1, v2

    shl-int/lit8 v2, v2, 0x14

    const/4 v3, 0x1

    aget v3, v1, v3

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 2025
    .end local v1    # "location":[I
    :cond_0
    return v0
.end method

.method private getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 702
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 706
    :goto_0
    return-object v0

    .line 703
    :cond_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 704
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 706
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isViewCoverClose()Z
    .locals 5

    .prologue
    .line 482
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 483
    .local v2, "windowManager":Landroid/view/IWindowManager;
    const/4 v1, 0x1

    .line 484
    .local v1, "isCoverOpen":Z
    if-eqz v2, :cond_0

    .line 486
    :try_start_0
    invoke-interface {v2}, Landroid/view/IWindowManager;->isCoverOpen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 491
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "HoverPopupWindow"

    const-string v4, "isLockScreenMode() : failed to windowManager.isCoverOpen()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 491
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private makeToolTipContentView()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const v4, 0x7010001

    .line 922
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 924
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 926
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 937
    :goto_0
    return-void

    .line 929
    :cond_0
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v4, :cond_2

    .line 930
    :cond_1
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 931
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x1090062

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 932
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setHoverPopupType(I)V

    .line 933
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .line 935
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private playSoundAndHapticFeedback()V
    .locals 3

    .prologue
    .line 713
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 714
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 715
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIBRATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 716
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 718
    :cond_0
    return-void
.end method

.method private pointInValidHoverArea(FF)Z
    .locals 2
    .param p1, "localX"    # F
    .param p2, "localY"    # F

    .prologue
    .line 1993
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingLeft:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingRight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingTop:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingBottom:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPopupContent()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 875
    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    packed-switch v3, :pswitch_data_0

    .line 899
    iput-object v5, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 904
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    if-eqz v3, :cond_1

    .line 905
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-interface {v3, v4, p0}, Landroid/widget/HoverPopupWindow$HoverPopupListener;->onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z

    .line 908
    :cond_1
    return-void

    .line 877
    :pswitch_0
    iput-object v5, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    .line 880
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->makeToolTipContentView()V

    goto :goto_0

    .line 883
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->makeDefaultContentView()V

    goto :goto_0

    .line 886
    :pswitch_3
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 887
    iget v3, p0, Landroid/widget/HoverPopupWindow;->mContentResId:I

    if-eqz v3, :cond_0

    .line 888
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 890
    .local v1, "inflater":Landroid/view/LayoutInflater;
    :try_start_0
    iget v3, p0, Landroid/widget/HoverPopupWindow;->mContentResId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 891
    .local v2, "v":Landroid/view/View;
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 892
    .end local v2    # "v":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 893
    .local v0, "ie":Landroid/view/InflateException;
    iput-object v5, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    .line 875
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPopup()V
    .locals 3

    .prologue
    .line 817
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHashCodeForViewState:I

    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getStateHashCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 818
    const-string v0, "HoverPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showPopup() is cancelled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mHashCodeForViewState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getStateHashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->dismiss()V

    .line 836
    :goto_0
    return-void

    .line 823
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/HoverPopupWindow;->showPenPointEffect(Z)V

    .line 826
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 827
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 830
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->createPopupWindow()Landroid/widget/PopupWindow;

    .line 831
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->setPopupContent()V

    .line 832
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->updateHoverPopup()V

    .line 835
    const-string/jumbo v0, "timestamp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PERF][Hovering] Displayed ( view : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected computePopupPosition(Landroid/view/View;III)V
    .locals 42
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "offX"    # I
    .param p4, "offY"    # I

    .prologue
    .line 949
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_0

    .line 1225
    :goto_0
    return-void

    .line 953
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 954
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    .line 955
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 956
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    .line 958
    if-eqz p1, :cond_b

    move-object/from16 v14, p1

    .line 959
    .local v14, "anchorView":Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v26

    .line 962
    .local v26, "displayMetrics":Landroid/util/DisplayMetrics;
    const/4 v13, 0x0

    .line 963
    .local v13, "anchorRect":Landroid/graphics/Rect;
    const/4 v4, 0x2

    new-array v12, v4, [I

    .line 964
    .local v12, "anchorLocOnScr":[I
    const/4 v4, 0x2

    new-array v11, v4, [I

    .line 965
    .local v11, "anchorLocInWindow":[I
    invoke-virtual {v14, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 966
    invoke-virtual {v14, v11}, Landroid/view/View;->getLocationInWindow([I)V

    .line 969
    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    .line 970
    .local v25, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 978
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v35

    .line 979
    .local v35, "rootview":Landroid/view/View;
    const/16 v29, 0x0

    .line 980
    .local v29, "isRootViewFullScreen":Z
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getWidth()I

    move-result v37

    .line 981
    .local v37, "rootviewWidth":I
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getHeight()I

    move-result v36

    .line 983
    .local v36, "rootviewHeight":I
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v0, v37

    if-ne v0, v4, :cond_1

    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v0, v36

    if-ne v0, v4, :cond_1

    .line 985
    const/16 v29, 0x1

    .line 989
    :cond_1
    invoke-virtual {v14}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_c

    .line 992
    const/4 v4, 0x0

    aget v4, v12, v4

    const/4 v5, 0x0

    aget v5, v11, v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    .line 993
    const/4 v4, 0x1

    aget v4, v12, v4

    const/4 v5, 0x1

    aget v5, v11, v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    .line 994
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    .line 996
    new-instance v13, Landroid/graphics/Rect;

    .end local v13    # "anchorRect":Landroid/graphics/Rect;
    const/4 v4, 0x0

    aget v4, v11, v4

    const/4 v5, 0x1

    aget v5, v11, v5

    const/4 v6, 0x0

    aget v6, v11, v6

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v6, v9

    const/4 v9, 0x1

    aget v9, v11, v9

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v13, v4, v5, v6, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1018
    .restart local v13    # "anchorRect":Landroid/graphics/Rect;
    :goto_2
    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_3

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_3

    .line 1019
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v34

    .line 1020
    .local v34, "root":Landroid/view/View;
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v39

    .line 1022
    .local v39, "vlp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v39

    instance-of v4, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_3

    move-object/from16 v41, v39

    .line 1023
    check-cast v41, Landroid/view/WindowManager$LayoutParams;

    .line 1024
    .local v41, "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v41

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move-object/from16 v0, v41

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v4, v5

    and-int/lit16 v4, v4, 0x404

    if-nez v4, :cond_d

    const/16 v30, 0x1

    .line 1027
    .local v30, "isSystemUiVisible":Z
    :goto_3
    const/16 v38, 0x0

    .line 1029
    .local v38, "statusBarHeight":I
    move-object/from16 v0, v41

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, 0x200

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    if-eqz v30, :cond_2

    .line 1030
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v38

    .line 1033
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 1034
    move/from16 v0, v38

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1035
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 1036
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 1041
    .end local v30    # "isSystemUiVisible":Z
    .end local v34    # "root":Landroid/view/View;
    .end local v38    # "statusBarHeight":I
    .end local v39    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v41    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 1042
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 1052
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    if-nez v4, :cond_e

    .line 1053
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v40

    .line 1055
    .local v40, "widthMeasureSpec":I
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    .line 1078
    .local v27, "heightMeasureSpec":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    move/from16 v0, v40

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1079
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 1080
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    .line 1081
    .local v24, "contentWidth":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    .line 1083
    .local v22, "contentHeight":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1084
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1087
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v24

    move/from16 v3, v22

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/widget/HoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 1092
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    move/from16 v32, v0

    .line 1093
    .local v32, "posX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    move/from16 v33, v0

    .line 1094
    .local v33, "posY":I
    const/4 v15, 0x0

    .line 1095
    .local v15, "canDraw":Z
    add-int v4, v33, v22

    iget v5, v13, Landroid/graphics/Rect;->top:I

    if-le v4, v5, :cond_4

    iget v4, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v33

    if-lt v0, v4, :cond_5

    .line 1096
    :cond_4
    const/4 v15, 0x1

    .line 1099
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-eqz v4, :cond_17

    if-eqz v15, :cond_17

    .line 1101
    const/16 v28, 0x1

    .line 1103
    .local v28, "isPopupAboveHorizontal":Z
    const/high16 v4, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v31

    .line 1106
    .local v31, "marginForHoverRing":I
    const/16 v16, 0x0

    .line 1107
    .local v16, "containerLeftOnWindow":I
    const/16 v21, 0x0

    .line 1108
    .local v21, "containerRightOnWindow":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_11

    .line 1109
    iget v4, v13, Landroid/graphics/Rect;->left:I

    move/from16 v0, v32

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 1111
    add-int v4, v32, v24

    iget v5, v13, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v26

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 1123
    :cond_6
    :goto_5
    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    move/from16 v0, v33

    if-le v0, v4, :cond_12

    .line 1124
    const/16 v28, 0x0

    .line 1130
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-nez v4, :cond_7

    .line 1131
    new-instance v4, Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;-><init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    .line 1132
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1133
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mGuideRingDrawableId:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineColor:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(II)V

    .line 1137
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    .line 1138
    .local v23, "contentLP":Landroid/view/ViewGroup$LayoutParams;
    if-nez v23, :cond_13

    .line 1139
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v0, v24

    move/from16 v1, v22

    invoke-direct {v5, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1146
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1147
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1150
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_9

    .line 1151
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1154
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1155
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1158
    sub-int v4, v16, v32

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v18

    .line 1159
    .local v18, "containerPaddingLeft":I
    add-int v4, v32, v24

    sub-int v4, v21, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v19

    .line 1160
    .local v19, "containerPaddingRight":I
    const/16 v20, 0x0

    .line 1161
    .local v20, "containerPaddingTop":I
    const/16 v17, 0x0

    .line 1162
    .local v17, "containerPaddingBottom":I
    if-eqz v28, :cond_14

    .line 1163
    iget v4, v13, Landroid/graphics/Rect;->bottom:I

    add-int v4, v4, v31

    add-int v5, v33, v22

    sub-int v17, v4, v5

    .line 1164
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v4, v0, v5, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1171
    :goto_8
    if-eqz v28, :cond_15

    .line 1172
    move/from16 v32, v16

    .line 1179
    :goto_9
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    sub-int v4, v4, v32

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    sub-int v7, v4, v5

    .line 1180
    .local v7, "hoverPointXonContainer":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    sub-int v4, v4, v33

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    sub-int v8, v4, v5

    .line 1181
    .local v8, "hoverPointYonContainer":I
    if-eqz v28, :cond_16

    .line 1182
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v6, v22, v6

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    .line 1219
    .end local v7    # "hoverPointXonContainer":I
    .end local v8    # "hoverPointYonContainer":I
    .end local v16    # "containerLeftOnWindow":I
    .end local v17    # "containerPaddingBottom":I
    .end local v18    # "containerPaddingLeft":I
    .end local v19    # "containerPaddingRight":I
    .end local v20    # "containerPaddingTop":I
    .end local v21    # "containerRightOnWindow":I
    .end local v23    # "contentLP":Landroid/view/ViewGroup$LayoutParams;
    .end local v28    # "isPopupAboveHorizontal":Z
    .end local v31    # "marginForHoverRing":I
    :cond_a
    :goto_a
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    .line 1220
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    .line 1222
    const-string v4, "HoverPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "computePopupPosition: mPopupPosX = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    const-string v4, "HoverPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "computePopupPosition: mPopupPosY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    const-string v4, "HoverPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "computePopupPosition: mContentWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 958
    .end local v11    # "anchorLocInWindow":[I
    .end local v12    # "anchorLocOnScr":[I
    .end local v13    # "anchorRect":Landroid/graphics/Rect;
    .end local v14    # "anchorView":Landroid/view/View;
    .end local v15    # "canDraw":Z
    .end local v22    # "contentHeight":I
    .end local v24    # "contentWidth":I
    .end local v25    # "displayFrame":Landroid/graphics/Rect;
    .end local v26    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v27    # "heightMeasureSpec":I
    .end local v29    # "isRootViewFullScreen":Z
    .end local v32    # "posX":I
    .end local v33    # "posY":I
    .end local v35    # "rootview":Landroid/view/View;
    .end local v36    # "rootviewHeight":I
    .end local v37    # "rootviewWidth":I
    .end local v40    # "widthMeasureSpec":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto/16 :goto_1

    .line 1001
    .restart local v11    # "anchorLocInWindow":[I
    .restart local v12    # "anchorLocOnScr":[I
    .restart local v13    # "anchorRect":Landroid/graphics/Rect;
    .restart local v14    # "anchorView":Landroid/view/View;
    .restart local v25    # "displayFrame":Landroid/graphics/Rect;
    .restart local v26    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v29    # "isRootViewFullScreen":Z
    .restart local v35    # "rootview":Landroid/view/View;
    .restart local v36    # "rootviewHeight":I
    .restart local v37    # "rootviewWidth":I
    :cond_c
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    .line 1002
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    .line 1003
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    .line 1005
    new-instance v13, Landroid/graphics/Rect;

    .end local v13    # "anchorRect":Landroid/graphics/Rect;
    const/4 v4, 0x0

    aget v4, v12, v4

    const/4 v5, 0x1

    aget v5, v12, v5

    const/4 v6, 0x0

    aget v6, v12, v6

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v6, v9

    const/4 v9, 0x1

    aget v9, v12, v9

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v13, v4, v5, v6, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1011
    .restart local v13    # "anchorRect":Landroid/graphics/Rect;
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 1012
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 1013
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 1014
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    .line 1024
    .restart local v34    # "root":Landroid/view/View;
    .restart local v39    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v41    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_d
    const/16 v30, 0x0

    goto/16 :goto_3

    .line 1058
    .end local v34    # "root":Landroid/view/View;
    .end local v39    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v41    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v4, :cond_f

    .line 1059
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v40

    .line 1067
    .restart local v40    # "widthMeasureSpec":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v4, :cond_10

    .line 1068
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    .restart local v27    # "heightMeasureSpec":I
    goto/16 :goto_4

    .line 1062
    .end local v27    # "heightMeasureSpec":I
    .end local v40    # "widthMeasureSpec":I
    :cond_f
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v40

    .restart local v40    # "widthMeasureSpec":I
    goto :goto_b

    .line 1071
    :cond_10
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    .restart local v27    # "heightMeasureSpec":I
    goto/16 :goto_4

    .line 1114
    .restart local v15    # "canDraw":Z
    .restart local v16    # "containerLeftOnWindow":I
    .restart local v21    # "containerRightOnWindow":I
    .restart local v22    # "contentHeight":I
    .restart local v24    # "contentWidth":I
    .restart local v28    # "isPopupAboveHorizontal":Z
    .restart local v31    # "marginForHoverRing":I
    .restart local v32    # "posX":I
    .restart local v33    # "posY":I
    :cond_11
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 1115
    iget v4, v13, Landroid/graphics/Rect;->left:I

    move/from16 v0, v32

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 1117
    add-int v4, v32, v24

    iget v5, v13, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v25

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v21

    goto/16 :goto_5

    .line 1126
    :cond_12
    const/16 v28, 0x1

    goto/16 :goto_6

    .line 1141
    .restart local v23    # "contentLP":Landroid/view/ViewGroup$LayoutParams;
    :cond_13
    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1142
    move/from16 v0, v22

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_7

    .line 1166
    .restart local v17    # "containerPaddingBottom":I
    .restart local v18    # "containerPaddingLeft":I
    .restart local v19    # "containerPaddingRight":I
    .restart local v20    # "containerPaddingTop":I
    :cond_14
    iget v4, v13, Landroid/graphics/Rect;->top:I

    sub-int v4, v4, v31

    sub-int v20, v33, v4

    .line 1167
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_8

    .line 1175
    :cond_15
    move/from16 v32, v16

    .line 1176
    sub-int v33, v33, v20

    goto/16 :goto_9

    .line 1186
    .restart local v7    # "hoverPointXonContainer":I
    .restart local v8    # "hoverPointYonContainer":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    add-int v6, v6, v20

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_a

    .line 1193
    .end local v7    # "hoverPointXonContainer":I
    .end local v8    # "hoverPointYonContainer":I
    .end local v16    # "containerLeftOnWindow":I
    .end local v17    # "containerPaddingBottom":I
    .end local v18    # "containerPaddingLeft":I
    .end local v19    # "containerPaddingRight":I
    .end local v20    # "containerPaddingTop":I
    .end local v21    # "containerRightOnWindow":I
    .end local v23    # "contentLP":Landroid/view/ViewGroup$LayoutParams;
    .end local v28    # "isPopupAboveHorizontal":Z
    .end local v31    # "marginForHoverRing":I
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v4, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-nez v4, :cond_1b

    .line 1194
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    if-nez v4, :cond_18

    .line 1195
    new-instance v4, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;-><init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    .line 1197
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_1a

    .line 1198
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1206
    :cond_19
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mToolType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_a

    .line 1207
    const-string v4, "HoverPopupWindow"

    const-string v5, "computePopupPosition: Call resetTimeout()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->resetTimeout()V

    goto/16 :goto_a

    .line 1199
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 1200
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1201
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_c

    .line 1212
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v4, :cond_a

    .line 1214
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1215
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    goto/16 :goto_a
.end method

.method protected computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 23
    .param p1, "anchorRect"    # Landroid/graphics/Rect;
    .param p2, "displayFrame"    # Landroid/graphics/Rect;
    .param p3, "contentWidth"    # I
    .param p4, "contentHeight"    # I

    .prologue
    .line 1234
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/HoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    .line 1235
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    .line 1236
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    .line 1237
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mContentHeight:I

    .line 1239
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 1240
    .local v7, "posX":I
    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    .line 1246
    .local v8, "posY":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    move/from16 v20, v0

    move/from16 v0, v20

    and-int/lit16 v5, v0, 0xf0f

    .line 1247
    .local v5, "hGravity":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    move/from16 v20, v0

    const v21, 0xf0f0

    and-int v14, v20, v21

    .line 1249
    .local v14, "vGravity":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1050174

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 1251
    .local v13, "tooltipShiftX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    move/from16 v20, v0

    if-nez v20, :cond_6

    .line 1253
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 1254
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v7, v20, v21

    .line 1255
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v8, v20, v21

    .line 1342
    :cond_0
    :goto_0
    const-string v20, "HoverPopupWindow"

    const-string v21, "computePopupPositionInternal: check window boundary "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->isScaleWindow()Z

    move-result v20

    if-nez v20, :cond_b

    .line 1344
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1346
    .local v4, "displayMetrics":Landroid/util/DisplayMetrics;
    if-gez v7, :cond_7

    .line 1347
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1350
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 1351
    const/high16 v20, 0x41000000    # 8.0f

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v20

    add-int v7, v7, v20

    .line 1436
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1a

    .line 1437
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1438
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    .line 1439
    .local v10, "root":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .local v16, "vlp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v17, v16

    .line 1440
    check-cast v17, Landroid/view/WindowManager$LayoutParams;

    .line 1441
    .local v17, "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v21, v0

    or-int v20, v20, v21

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x404

    move/from16 v20, v0

    if-nez v20, :cond_13

    const/4 v6, 0x1

    .line 1443
    .local v6, "isSystemUiVisible":Z
    :goto_2
    const/4 v12, 0x0

    .line 1445
    .local v12, "statusBarHeight":I
    if-eqz v6, :cond_2

    .line 1446
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x105000c

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 1448
    :cond_2
    if-ge v8, v12, :cond_17

    .line 1451
    const/16 v20, 0x3030

    move/from16 v0, v20

    if-ne v14, v0, :cond_16

    .line 1452
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    move/from16 v1, p4

    if-lt v0, v1, :cond_14

    .line 1453
    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 1454
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v20, v0

    add-int v8, v8, v20

    .line 1455
    const-string v20, "HoverPopupWindow"

    const-string v21, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    .line 1594
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v6    # "isSystemUiVisible":Z
    .end local v10    # "root":Landroid/view/View;
    .end local v12    # "statusBarHeight":I
    .end local v16    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v17    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iput v7, v0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    .line 1595
    move-object/from16 v0, p0

    iput v8, v0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    .line 1597
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->isScaleWindow()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1598
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "window"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/WindowManager;

    .line 1599
    .local v18, "wm":Landroid/view/WindowManager;
    if-eqz v18, :cond_4

    .line 1600
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1601
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1602
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getHeight()I

    move-result v20

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    sub-int v19, v20, v21

    .line 1603
    .local v19, "yOffset":I
    if-lez v19, :cond_4

    .line 1604
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    move/from16 v20, v0

    sub-int v20, v20, v19

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    .line 1609
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v18    # "wm":Landroid/view/WindowManager;
    .end local v19    # "yOffset":I
    :cond_4
    return-void

    .line 1256
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 1257
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 1258
    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    goto/16 :goto_0

    .line 1262
    :cond_6
    sparse-switch v5, :sswitch_data_0

    .line 1300
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 1305
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    move/from16 v20, v0

    add-int v7, v7, v20

    .line 1309
    sparse-switch v14, :sswitch_data_1

    .line 1327
    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    .line 1332
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v20, v0

    add-int v8, v8, v20

    goto/16 :goto_0

    .line 1264
    :sswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    sub-int v7, v20, p3

    .line 1265
    goto :goto_4

    .line 1268
    :sswitch_1
    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 1269
    goto :goto_4

    .line 1272
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v20

    sub-int v20, v20, p3

    add-int v7, v20, v13

    .line 1273
    goto :goto_4

    .line 1276
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v20

    div-int/lit8 v21, p3, 0x2

    sub-int v7, v20, v21

    .line 1277
    goto :goto_4

    .line 1280
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    .line 1281
    goto :goto_4

    .line 1284
    :sswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    sub-int v7, v20, p3

    .line 1285
    goto :goto_4

    .line 1288
    :sswitch_6
    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/Rect;->right:I

    .line 1289
    goto :goto_4

    .line 1292
    :sswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v20

    div-int/lit8 v21, p3, 0x2

    sub-int v7, v20, v21

    .line 1293
    goto :goto_4

    .line 1296
    :sswitch_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    move/from16 v20, v0

    div-int/lit8 v21, p3, 0x2

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    move/from16 v21, v0

    sub-int v7, v20, v21

    .line 1297
    goto :goto_4

    .line 1311
    :sswitch_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v8, v20, p4

    .line 1312
    goto :goto_5

    .line 1314
    :sswitch_a
    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/Rect;->top:I

    .line 1315
    goto :goto_5

    .line 1317
    :sswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v20

    div-int/lit8 v21, p4, 0x2

    sub-int v8, v20, v21

    .line 1318
    goto :goto_5

    .line 1320
    :sswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    sub-int v8, v20, p4

    .line 1321
    goto :goto_5

    .line 1323
    :sswitch_d
    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 1324
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    goto/16 :goto_5

    .line 1353
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_7
    add-int v20, v7, p3

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    .line 1354
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    sub-int v20, v20, p3

    move/from16 v0, v20

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto/16 :goto_1

    .line 1356
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1358
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int v20, v20, v7

    if-gtz v20, :cond_9

    .line 1359
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v20, v20, p3

    move/from16 v0, v20

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1361
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1364
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 1366
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v20, v20, p3

    const/high16 v21, 0x41000000    # 8.0f

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    .line 1367
    const/high16 v20, 0x41000000    # 8.0f

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v20

    add-int v7, v7, v20

    goto/16 :goto_1

    .line 1369
    :cond_9
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int v20, v20, v7

    add-int v20, v20, p3

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_a

    .line 1370
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v20, v20, p3

    move/from16 v0, v20

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto/16 :goto_1

    .line 1372
    :cond_a
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    if-lez v20, :cond_1

    .line 1373
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v20, v20, p3

    move/from16 v0, v20

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto/16 :goto_1

    .line 1385
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 1386
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1387
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 1388
    .local v3, "anchorView":Landroid/view/View;
    :goto_6
    invoke-virtual {v3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v15

    .line 1389
    .local v15, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v15, :cond_1

    .line 1390
    invoke-virtual {v15}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v11

    .line 1392
    .local v11, "scaleFactor":Landroid/graphics/PointF;
    if-gez v7, :cond_d

    .line 1393
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1396
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 1397
    const/high16 v20, 0x41000000    # 8.0f

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v20

    add-int v7, v7, v20

    goto/16 :goto_1

    .line 1387
    .end local v3    # "anchorView":Landroid/view/View;
    .end local v11    # "scaleFactor":Landroid/graphics/PointF;
    .end local v15    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_6

    .line 1399
    .restart local v3    # "anchorView":Landroid/view/View;
    .restart local v11    # "scaleFactor":Landroid/graphics/PointF;
    .restart local v15    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_d
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int v21, v7, p3

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v11, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    .line 1400
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v11, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto/16 :goto_1

    .line 1403
    .end local v3    # "anchorView":Landroid/view/View;
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v11    # "scaleFactor":Landroid/graphics/PointF;
    .end local v15    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 1404
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1405
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 1406
    .restart local v3    # "anchorView":Landroid/view/View;
    :goto_7
    invoke-virtual {v3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v15

    .line 1407
    .restart local v15    # "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v15, :cond_1

    .line 1408
    invoke-virtual {v15}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v11

    .line 1410
    .restart local v11    # "scaleFactor":Landroid/graphics/PointF;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    int-to-float v0, v7

    move/from16 v21, v0

    iget v0, v11, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v20, v20, v21

    if-gez v20, :cond_10

    .line 1411
    const/4 v7, 0x0

    .line 1414
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 1415
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v20, v20, p3

    const/high16 v21, 0x41000000    # 8.0f

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    .line 1416
    const/high16 v20, 0x41000000    # 8.0f

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v20

    add-int v7, v7, v20

    goto/16 :goto_1

    .line 1405
    .end local v3    # "anchorView":Landroid/view/View;
    .end local v11    # "scaleFactor":Landroid/graphics/PointF;
    .end local v15    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_7

    .line 1419
    .restart local v3    # "anchorView":Landroid/view/View;
    .restart local v11    # "scaleFactor":Landroid/graphics/PointF;
    .restart local v15    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_10
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int v21, v7, p3

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v11, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_11

    .line 1420
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    iget v0, v11, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    sub-int v20, v20, p3

    move/from16 v0, v20

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto/16 :goto_1

    .line 1421
    :cond_11
    if-gez v7, :cond_12

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, p3

    move/from16 v1, v20

    if-gt v0, v1, :cond_12

    .line 1422
    const/4 v7, 0x0

    .line 1424
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 1425
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v20, v20, p3

    const/high16 v21, 0x41000000    # 8.0f

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    .line 1426
    const/high16 v20, 0x41000000    # 8.0f

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v20

    add-int v7, v7, v20

    goto/16 :goto_1

    .line 1429
    :cond_12
    add-int v20, v7, p3

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    .line 1430
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    sub-int v7, v20, p3

    goto/16 :goto_1

    .line 1441
    .end local v3    # "anchorView":Landroid/view/View;
    .end local v11    # "scaleFactor":Landroid/graphics/PointF;
    .end local v15    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v10    # "root":Landroid/view/View;
    .restart local v16    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v17    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_13
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 1457
    .restart local v6    # "isSystemUiVisible":Z
    .restart local v12    # "statusBarHeight":I
    :cond_14
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v21, v21, v12

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_15

    .line 1458
    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 1460
    const-string v20, "HoverPopupWindow"

    const-string v21, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_3

    .line 1464
    :cond_15
    move v8, v12

    .line 1465
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    .line 1466
    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: #2: mOverTopBoundary = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1471
    :cond_16
    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal #2-1: mOverTopBoundary = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto/16 :goto_3

    .line 1474
    :cond_17
    add-int v20, v8, p4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_19

    .line 1476
    const/16 v20, 0x5050

    move/from16 v0, v20

    if-ne v14, v0, :cond_18

    .line 1477
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p4

    if-lt v0, v1, :cond_3

    .line 1478
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v8, v20, p4

    .line 1479
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v20, v0

    sub-int v8, v8, v20

    .line 1481
    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: Gravity.BOTTOM_UNDER #3: misGravityBottomUnder = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 1483
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    .line 1484
    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: #4 set misGravityBottomUnder = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1488
    :cond_18
    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: #5 set misGravityBottomUnder = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v8, v20, p4

    goto/16 :goto_3

    .line 1493
    :cond_19
    const/16 v20, 0x3030

    move/from16 v0, v20

    if-ne v14, v0, :cond_3

    .line 1494
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    .line 1495
    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: #6 set mOverTopBoundary = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1498
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v6    # "isSystemUiVisible":Z
    .end local v10    # "root":Landroid/view/View;
    .end local v12    # "statusBarHeight":I
    .end local v16    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v17    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 1502
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    .line 1503
    .restart local v10    # "root":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .restart local v16    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v17, v16

    .line 1504
    check-cast v17, Landroid/view/WindowManager$LayoutParams;

    .line 1505
    .restart local v17    # "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v21, v0

    or-int v20, v20, v21

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x404

    move/from16 v20, v0

    if-nez v20, :cond_1e

    const/4 v6, 0x1

    .line 1507
    .restart local v6    # "isSystemUiVisible":Z
    :goto_8
    const/4 v12, 0x0

    .line 1509
    .restart local v12    # "statusBarHeight":I
    if-eqz v6, :cond_1b

    .line 1510
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x105000c

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 1512
    :cond_1b
    move v9, v12

    .line 1513
    .local v9, "realStatusBarHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1514
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v12, :cond_1c

    .line 1515
    const/4 v12, 0x0

    .line 1517
    :cond_1c
    if-gez v8, :cond_24

    .line 1519
    const/16 v20, 0x3030

    move/from16 v0, v20

    if-ne v14, v0, :cond_23

    .line 1520
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v20, v20, v12

    move/from16 v0, v20

    move/from16 v1, p4

    if-lt v0, v1, :cond_1f

    .line 1521
    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 1522
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v20, v20, v12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    move/from16 v1, p4

    if-lt v0, v1, :cond_1d

    .line 1523
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v20, v0

    add-int v8, v8, v20

    .line 1525
    :cond_1d
    const-string v20, "HoverPopupWindow"

    const-string v21, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_3

    .line 1505
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v6    # "isSystemUiVisible":Z
    .end local v9    # "realStatusBarHeight":I
    .end local v12    # "statusBarHeight":I
    :cond_1e
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 1527
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v6    # "isSystemUiVisible":Z
    .restart local v9    # "realStatusBarHeight":I
    .restart local v12    # "statusBarHeight":I
    :cond_1f
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v20, v20, v12

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_20

    .line 1528
    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 1530
    const-string v20, "HoverPopupWindow"

    const-string v21, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_3

    .line 1533
    :cond_20
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v20, v20, v21

    sub-int v20, v20, p4

    sub-int v20, v20, v9

    if-lez v20, :cond_21

    .line 1535
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_3

    .line 1536
    :cond_21
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    add-int v21, v21, v22

    sub-int v20, v20, v21

    sub-int v20, v20, p4

    if-lez v20, :cond_22

    .line 1538
    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 1539
    const-string v20, "HoverPopupWindow"

    const-string v21, "computePopupPositionInternal: Set mOverTopBoundary = true #1-2"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_3

    .line 1542
    :cond_22
    move v8, v12

    .line 1543
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    .line 1544
    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: #2: mOverTopBoundary = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1548
    :cond_23
    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal #2-1: mOverTopBoundary = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto/16 :goto_3

    .line 1551
    :cond_24
    add-int v20, v8, p4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_27

    .line 1552
    const/16 v20, 0x5050

    move/from16 v0, v20

    if-ne v14, v0, :cond_26

    .line 1553
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p4

    if-lt v0, v1, :cond_25

    .line 1554
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v8, v20, p4

    .line 1555
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v20, v0

    sub-int v8, v8, v20

    .line 1557
    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: Gravity.BOTTOM_UNDER #3: misGravityBottomUnder = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 1559
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    .line 1560
    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: #4 set misGravityBottomUnder = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1564
    :cond_25
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    add-int v20, v20, v8

    add-int v20, v20, p4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    .line 1565
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v8, v20, p4

    .line 1566
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v20, v0

    sub-int v8, v8, v20

    .line 1568
    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: Gravity.BOTTOM_UNDER #3-2: misGravityBottomUnder = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 1570
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    .line 1571
    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: #4 set misGravityBottomUnder = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1576
    :cond_26
    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: #5 set misGravityBottomUnder = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v20, v20, p4

    move/from16 v0, v20

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto/16 :goto_3

    .line 1580
    :cond_27
    const/16 v20, 0x3030

    move/from16 v0, v20

    if-ne v14, v0, :cond_3

    .line 1581
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    .line 1582
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    .line 1583
    if-ge v8, v12, :cond_28

    .line 1584
    add-int v20, v8, p4

    add-int v20, v20, v12

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_28

    .line 1585
    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 1586
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    .line 1589
    :cond_28
    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: #6 set mOverTopBoundary = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1262
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_1
        0x5 -> :sswitch_5
        0x101 -> :sswitch_7
        0x103 -> :sswitch_2
        0x105 -> :sswitch_4
        0x201 -> :sswitch_8
        0x303 -> :sswitch_0
        0x505 -> :sswitch_6
    .end sparse-switch

    .line 1309
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_b
        0x30 -> :sswitch_a
        0x50 -> :sswitch_c
        0x3030 -> :sswitch_9
        0x5050 -> :sswitch_d
    .end sparse-switch
.end method

.method protected convertDPtoPX(FLandroid/util/DisplayMetrics;)I
    .locals 2
    .param p1, "dp"    # F
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 2003
    if-nez p2, :cond_0

    .line 2004
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 2006
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected createPopupWindow()Landroid/widget/PopupWindow;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 845
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_1

    .line 846
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 847
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 848
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 849
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 850
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 851
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 852
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 854
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 855
    .local v0, "anchorView":Landroid/view/View;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 856
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isScaleWindow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 857
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 860
    :cond_0
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 862
    .end local v0    # "anchorView":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v1

    .line 854
    :cond_2
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 1934
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/HoverPopupWindow;->showPenPointEffect(Z)V

    .line 1936
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->dismissPopup()V

    .line 1937
    return-void
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 518
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    return v0
.end method

.method public getFHAnimationEnabled()Z
    .locals 1

    .prologue
    .line 1826
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    return v0
.end method

.method public getFHGuideLineEnabled()Z
    .locals 1

    .prologue
    .line 1822
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    return v0
.end method

.method public getInfoPickerMoveEabled()Z
    .locals 1

    .prologue
    .line 1830
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    return v0
.end method

.method public getIsDismissTouchableHPWOnActionUp()Z
    .locals 1

    .prologue
    .line 504
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    return v0
.end method

.method public getParentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method protected getPriorityContentText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 687
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 688
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 692
    :goto_0
    return-object v0

    .line 689
    :cond_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 690
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 692
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initInstance()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 259
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 260
    iput-boolean v4, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    .line 261
    const/16 v1, 0x12c

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    .line 263
    const/16 v1, 0x3031

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    .line 264
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    .line 265
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    .line 266
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    .line 267
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    .line 268
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 269
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    .line 270
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    .line 271
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    .line 272
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingLeft:I

    .line 273
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingRight:I

    .line 274
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingTop:I

    .line 275
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingBottom:I

    .line 277
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    .line 278
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 280
    const v1, 0x1030355

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    .line 282
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    .line 284
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    .line 286
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->misDialer:Z

    .line 287
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsProgressBar:Z

    .line 289
    iput-boolean v4, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    .line 290
    iput-boolean v4, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    .line 291
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabledByApp:Z

    .line 292
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabledByApp:Z

    .line 293
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabledByApp:Z

    .line 294
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsSetInfoPickerColorToAndMoreBottomImg:Z

    .line 295
    iput-boolean v4, p0, Landroid/widget/HoverPopupWindow;->mIsFHSoundAndHapticEnabled:Z

    .line 296
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    .line 297
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    .line 298
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    .line 300
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    .line 301
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 302
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    .line 303
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    .line 304
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 305
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsSPenPointChanged:Z

    .line 306
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    .line 307
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    .line 308
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mShowPopupAlways:Z

    .line 310
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 311
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x15b

    const v2, 0x1080467

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mGuideRingDrawableId:I

    .line 312
    const/16 v1, 0x15a

    const v2, -0x866e57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mGuideLineColor:I

    .line 313
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 314
    return-void
.end method

.method public isDialer()Z
    .locals 1

    .prologue
    .line 351
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->misDialer:Z

    return v0
.end method

.method protected isFingerHoveringSettingsEnabled(I)Z
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v5, -0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 406
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v0, v2

    .line 408
    .local v0, "isFingerHoveringOn":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 409
    if-eq p1, v2, :cond_0

    .line 411
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_information_preview"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 413
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_pregress_bar_preview"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isProgressBar()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 440
    :cond_0
    :goto_1
    return v1

    .end local v0    # "isFingerHoveringOn":Z
    :cond_1
    move v0, v1

    .line 406
    goto :goto_0

    .line 418
    .restart local v0    # "isFingerHoveringOn":Z
    :cond_2
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_speed_dial_tip"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_3

    move v1, v2

    .line 420
    goto :goto_1

    .line 422
    :cond_3
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isDialer()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 423
    goto :goto_1

    .line 428
    :cond_4
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_speed_dial_tip"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_5

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isDialer()Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    .line 430
    goto :goto_1

    .line 432
    :cond_5
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_pregress_bar_preview"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isProgressBar()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 434
    goto :goto_1
.end method

.method public isHoverPopupPossible()Z
    .locals 3

    .prologue
    .line 334
    const/4 v0, 0x1

    .line 336
    .local v0, "ret":Z
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    if-nez v1, :cond_1

    .line 337
    const/4 v0, 0x0

    .line 347
    :cond_0
    :goto_0
    return v0

    .line 338
    :cond_1
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 339
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 342
    :cond_3
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 343
    const/4 v0, 0x0

    goto :goto_0

    .line 344
    :cond_4
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 345
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isHoveringSettingEnabled(I)Z
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 370
    const/4 v0, 0x0

    .line 376
    .local v0, "ret":Z
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 377
    invoke-virtual {p0, p1}, Landroid/widget/HoverPopupWindow;->isSPenHoveringSettingsEnabled(I)Z

    move-result v0

    .line 383
    :cond_0
    :goto_0
    return v0

    .line 379
    :cond_1
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 380
    invoke-virtual {p0, p1}, Landroid/widget/HoverPopupWindow;->isFingerHoveringSettingsEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isLockScreenMode()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 455
    iget-object v9, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    iget-object v10, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    const-string v10, "keyguard"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    .line 456
    .local v5, "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v4, 0x0

    .line 457
    .local v4, "isLockState":Z
    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    .line 459
    iget-object v9, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "window"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v6

    .line 460
    .local v6, "windowManager":Landroid/view/IWindowManager;
    const/4 v1, 0x1

    .line 461
    .local v1, "isCoverOpen":Z
    if-eqz v6, :cond_0

    .line 463
    :try_start_0
    invoke-interface {v6}, Landroid/view/IWindowManager;->isCoverOpen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 469
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 470
    .local v2, "isDayNoteRunning":Z
    iget-object v9, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "is_cover_note_running"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_1

    .line 471
    const/4 v2, 0x1

    .line 473
    :cond_1
    const/4 v3, 0x0

    .line 474
    .local v3, "isLockScreenAndExceptionalCase":Z
    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    move v3, v7

    .line 476
    :goto_1
    return v3

    .line 464
    .end local v2    # "isDayNoteRunning":Z
    .end local v3    # "isLockScreenAndExceptionalCase":Z
    :catch_0
    move-exception v0

    .line 465
    .local v0, "e":Landroid/os/RemoteException;
    const-string v9, "HoverPopupWindow"

    const-string v10, "isLockScreenMode() : failed to windowManager.isCoverOpen()"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "isDayNoteRunning":Z
    .restart local v3    # "isLockScreenAndExceptionalCase":Z
    :cond_2
    move v3, v8

    .line 474
    goto :goto_1
.end method

.method protected isMouseHoveringSettingsEnabled(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 445
    const/4 v0, 0x0

    return v0
.end method

.method public isMultiWindows()Z
    .locals 2

    .prologue
    .line 508
    const-string v0, "1"

    const-string/jumbo v1, "sys.multiwindow.running"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isProgressBar()Z
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsProgressBar:Z

    return v0
.end method

.method protected isSPenHoveringSettingsEnabled(I)Z
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v5, -0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 389
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 390
    .local v0, "isSPenHoveringOn":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 391
    if-ne p1, v1, :cond_2

    .line 392
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering_icon_label"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_4

    .line 402
    :cond_0
    :goto_1
    return v1

    .end local v0    # "isSPenHoveringOn":Z
    :cond_1
    move v0, v2

    .line 389
    goto :goto_0

    .line 394
    .restart local v0    # "isSPenHoveringOn":Z
    :cond_2
    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    .line 395
    :cond_3
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering_information_preview"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eq v3, v1, :cond_0

    move v1, v2

    .line 398
    goto :goto_1

    :cond_4
    move v1, v2

    .line 402
    goto :goto_1
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 613
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected makeDefaultContentView()V
    .locals 0

    .prologue
    .line 915
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->makeToolTipContentView()V

    .line 916
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1837
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1838
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 1839
    .local v8, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 1841
    .local v9, "y":F
    const/16 v10, 0x9

    if-ne v0, v10, :cond_3

    .line 1843
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    sub-long v6, v10, v12

    .line 1844
    .local v6, "timeDealy":J
    const-wide/16 v10, 0x3e8

    cmp-long v10, v6, v10

    if-lez v10, :cond_0

    .line 1845
    const-string v10, "HoverPopupWindow"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Not show HoverPopup because UI thread seems busy.1  event delay : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    const/4 v10, 0x1

    .line 1915
    .end local v6    # "timeDealy":J
    :goto_0
    return v10

    .line 1850
    .restart local v6    # "timeDealy":J
    :cond_0
    iget-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v10, :cond_1

    .line 1851
    invoke-direct {p0, v8, v9}, Landroid/widget/HoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v2

    .line 1853
    .local v2, "isPointInValidHoverArea":Z
    if-eqz v2, :cond_2

    .line 1854
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    .line 1915
    .end local v2    # "isPointInValidHoverArea":Z
    .end local v6    # "timeDealy":J
    :cond_1
    :goto_1
    const/4 v10, 0x0

    goto :goto_0

    .line 1856
    .restart local v2    # "isPointInValidHoverArea":Z
    .restart local v6    # "timeDealy":J
    :cond_2
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    goto :goto_1

    .line 1859
    .end local v2    # "isPointInValidHoverArea":Z
    .end local v6    # "timeDealy":J
    :cond_3
    const/4 v10, 0x7

    if-ne v0, v10, :cond_9

    .line 1860
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v10

    float-to-int v4, v10

    .line 1861
    .local v4, "rawX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v10

    float-to-int v5, v10

    .line 1862
    .local v5, "rawY":I
    invoke-virtual {p0, v4, v5}, Landroid/widget/HoverPopupWindow;->setHoveringPoint(II)V

    .line 1864
    iget-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v10, :cond_6

    .line 1865
    invoke-direct {p0, v8, v9}, Landroid/widget/HoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v2

    .line 1867
    .restart local v2    # "isPointInValidHoverArea":Z
    if-eqz v2, :cond_5

    iget-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    if-nez v10, :cond_5

    .line 1871
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    sub-long v6, v10, v12

    .line 1872
    .restart local v6    # "timeDealy":J
    const-wide/16 v10, 0x3e8

    cmp-long v10, v6, v10

    if-lez v10, :cond_4

    .line 1873
    const-string v10, "HoverPopupWindow"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Not show HoverPopup because UI thread seems busy.2  event delay : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    .line 1875
    const/4 v10, 0x1

    goto :goto_0

    .line 1880
    :cond_4
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    .line 1881
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->show()V

    .line 1882
    const/4 v10, 0x1

    goto :goto_0

    .line 1883
    .end local v6    # "timeDealy":J
    :cond_5
    if-nez v2, :cond_6

    iget-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    if-eqz v10, :cond_6

    iget-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    if-nez v10, :cond_6

    .line 1887
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    .line 1888
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->dismiss()V

    .line 1889
    const/4 v10, 0x1

    goto :goto_0

    .line 1894
    .end local v2    # "isPointInValidHoverArea":Z
    :cond_6
    iget-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-nez v10, :cond_7

    iget-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-eqz v10, :cond_1

    :cond_7
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1895
    iget-object v10, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    .line 1896
    .local v3, "popupView":Landroid/view/View;
    instance-of v10, v3, Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v10, :cond_1

    move-object v1, v3

    .line 1897
    check-cast v1, Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    .line 1898
    .local v1, "containerView":Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    iget v10, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    sub-int v10, v4, v10

    iget v11, p0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    sub-int v11, v5, v11

    iget v12, p0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    sub-int/2addr v11, v12

    invoke-virtual {v1, v10, v11}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLineEndPoint(II)V

    .line 1901
    iget-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-eqz v10, :cond_8

    .line 1902
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setFHGuideLineForCotainer(Z)V

    .line 1905
    :cond_8
    invoke-virtual {v1}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->updateDecoration()V

    goto/16 :goto_1

    .line 1908
    .end local v1    # "containerView":Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    .end local v3    # "popupView":Landroid/view/View;
    .end local v4    # "rawX":I
    .end local v5    # "rawY":I
    :cond_9
    const/16 v10, 0xa

    if-ne v0, v10, :cond_1

    .line 1911
    iget-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v10, :cond_1

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1912
    const/4 v10, 0x1

    goto/16 :goto_0
.end method

.method protected postDismiss(I)V
    .locals 4
    .param p1, "ms"    # I

    .prologue
    .line 1920
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    new-instance v1, Landroid/widget/HoverPopupWindow$3;

    invoke-direct {v1, p0}, Landroid/widget/HoverPopupWindow$3;-><init>(Landroid/widget/HoverPopupWindow;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1927
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 651
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 652
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 2
    .param p1, "aniStyle"    # I

    .prologue
    .line 1689
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    .line 1690
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1691
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1693
    :cond_0
    return-void
.end method

.method public setContent(I)V
    .locals 1
    .param p1, "resId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 558
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mContentResId:I

    .line 559
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 560
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 568
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/widget/HoverPopupWindow;->setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 569
    return-void

    .line 568
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 579
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 580
    iput-object p2, p0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    .line 581
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 582
    return-void
.end method

.method public setContent(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 591
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 592
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 593
    return-void
.end method

.method public setDismissTouchableHPWOnActionUp(Z)V
    .locals 0
    .param p1, "bDismissTouchableHPWOnActionUp"    # Z

    .prologue
    .line 500
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    .line 501
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 513
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    .line 514
    return-void
.end method

.method public setFHAnimationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    .line 1753
    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabledByApp:Z

    .line 1754
    invoke-virtual {p0, p1, v0}, Landroid/widget/HoverPopupWindow;->setFHAnimationEnabledByApp(ZZ)V

    .line 1756
    return-void
.end method

.method public setFHAnimationEnabledByApp(ZZ)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "calledByApp"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1759
    if-ne p2, v1, :cond_1

    .line 1760
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    .line 1769
    :cond_0
    :goto_0
    return-void

    .line 1763
    :cond_1
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabledByApp:Z

    if-eq v0, v1, :cond_0

    .line 1766
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    goto :goto_0
.end method

.method public setFHGuideLineEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    .line 1718
    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabledByApp:Z

    .line 1719
    invoke-virtual {p0, p1, v0}, Landroid/widget/HoverPopupWindow;->setFHGuideLineEnabledByApp(ZZ)V

    .line 1720
    return-void
.end method

.method public setFHGuideLineEnabledByApp(ZZ)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "calledByApp"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1723
    if-ne p2, v1, :cond_2

    .line 1724
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    .line 1726
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-ne v0, v1, :cond_1

    .line 1727
    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    .line 1750
    :cond_0
    :goto_0
    return-void

    .line 1730
    :cond_1
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-nez v0, :cond_0

    .line 1731
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    goto :goto_0

    .line 1735
    :cond_2
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabledByApp:Z

    if-eq v0, v1, :cond_0

    .line 1738
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    .line 1740
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-ne v0, v1, :cond_3

    .line 1741
    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    goto :goto_0

    .line 1744
    :cond_3
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-nez v0, :cond_0

    .line 1745
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    goto :goto_0
.end method

.method public setFHSoundAndHapticEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1796
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsFHSoundAndHapticEnabled:Z

    .line 1797
    return-void
.end method

.method public setGuideLineEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1713
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    .line 1714
    return-void
.end method

.method public setGuideLineFadeOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 1806
    int-to-float v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    .line 1807
    return-void
.end method

.method public setGuideLineStyle(II)V
    .locals 0
    .param p1, "ringDrawable"    # I
    .param p2, "lineColor"    # I

    .prologue
    .line 1813
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mGuideRingDrawableId:I

    .line 1814
    iput p2, p0, Landroid/widget/HoverPopupWindow;->mGuideLineColor:I

    .line 1815
    return-void
.end method

.method public setHoverDetectTime(I)V
    .locals 0
    .param p1, "ms"    # I

    .prologue
    .line 623
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    .line 624
    return-void
.end method

.method public setHoverPaddingArea(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 628
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingLeft:I

    .line 629
    iput p3, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingRight:I

    .line 630
    iput p2, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingTop:I

    .line 631
    iput p4, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingBottom:I

    .line 633
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingLeft:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingRight:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingTop:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingBottom:I

    if-eqz v0, :cond_1

    .line 635
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    .line 637
    :cond_1
    return-void
.end method

.method public setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/HoverPopupWindow$HoverPopupListener;

    .prologue
    .line 537
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    .line 538
    return-void
.end method

.method public setHoverPopupPreShowListener(Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;

    .prologue
    .line 547
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mPreShowListener:Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;

    .line 548
    return-void
.end method

.method public setHoverPopupToolType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 449
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    .line 450
    return-void
.end method

.method public setHoveringPoint(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 681
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    .line 682
    iput p2, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    .line 683
    return-void
.end method

.method public setInfoPickerColorToAndMoreBottomImg(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1792
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsSetInfoPickerColorToAndMoreBottomImg:Z

    .line 1793
    return-void
.end method

.method public setInfoPickerMoveEabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    .line 1772
    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabledByApp:Z

    .line 1773
    invoke-virtual {p0, p1, v0}, Landroid/widget/HoverPopupWindow;->setInfoPickerMoveEabledByApp(ZZ)V

    .line 1775
    return-void
.end method

.method public setInfoPickerMoveEabledByApp(ZZ)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "calledByApp"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1779
    if-ne p2, v1, :cond_1

    .line 1780
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    .line 1789
    :cond_0
    :goto_0
    return-void

    .line 1783
    :cond_1
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabledByApp:Z

    if-eq v0, v1, :cond_0

    .line 1786
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    goto :goto_0
.end method

.method protected setInstanceByType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 321
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 322
    const/16 v0, 0x12c

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    .line 323
    const/16 v0, 0x5153

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    .line 324
    const v0, 0x1030355

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    .line 326
    :cond_0
    return-void
.end method

.method public setInstanceOfDialer(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 355
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->misDialer:Z

    .line 356
    return-void
.end method

.method public setInstanceOfProgressBar(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 363
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsProgressBar:Z

    .line 364
    return-void
.end method

.method public setPopupGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 660
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    .line 661
    return-void
.end method

.method public setPopupPosOffset(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 670
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 671
    iput p2, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    .line 672
    return-void
.end method

.method public setShowPopupAlways(Z)V
    .locals 0
    .param p1, "always"    # Z

    .prologue
    .line 640
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mShowPopupAlways:Z

    .line 641
    return-void
.end method

.method public setTouchablePopup(Z)V
    .locals 2
    .param p1, "isTouchable"    # Z

    .prologue
    .line 1701
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    .line 1702
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1703
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1705
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 722
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    invoke-virtual {p0, v0}, Landroid/widget/HoverPopupWindow;->show(I)V

    .line 723
    return-void
.end method

.method public show(I)V
    .locals 8
    .param p1, "type"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 734
    const-string/jumbo v3, "timestamp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PERF][Hovering] Focused ( view : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    if-eq p1, v3, :cond_0

    .line 737
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    .line 738
    invoke-virtual {p0, p1}, Landroid/widget/HoverPopupWindow;->setInstanceByType(I)V

    .line 742
    :cond_0
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mPreShowListener:Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;

    if-eqz v3, :cond_2

    .line 743
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mPreShowListener:Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;

    invoke-interface {v3}, Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;->onHoverPopupPreShow()Z

    move-result v3

    if-nez v3, :cond_2

    .line 809
    :cond_1
    :goto_0
    return-void

    .line 749
    :cond_2
    iget-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsShowMessageSent:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    if-eqz v3, :cond_1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isHoverPopupPossible()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/HoverPopupWindow;->isHoveringSettingEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->isViewCoverClose()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isLockScreenMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 757
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 758
    .local v0, "root":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 759
    .local v1, "vlp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_4

    move-object v2, v1

    .line 760
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 761
    .local v2, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x8ac

    if-ne v3, v4, :cond_4

    .line 762
    invoke-virtual {p0, v6}, Landroid/widget/HoverPopupWindow;->setFHGuideLineEnabled(Z)V

    .line 768
    .end local v2    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_4
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getStateHashCode()I

    move-result v3

    iput v3, p0, Landroid/widget/HoverPopupWindow;->mHashCodeForViewState:I

    .line 771
    invoke-virtual {p0, v7}, Landroid/widget/HoverPopupWindow;->showPenPointEffect(Z)V

    .line 775
    iget-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsFHSoundAndHapticEnabled:Z

    if-eqz v3, :cond_5

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    if-ne v3, v7, :cond_5

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_sound_and_haptic_feedback"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_5

    .line 778
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->playSoundAndHapticFeedback()V

    .line 782
    :cond_5
    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    if-ne v3, v7, :cond_6

    .line 783
    new-instance v3, Landroid/widget/HoverPopupWindow$1;

    invoke-direct {v3, p0}, Landroid/widget/HoverPopupWindow$1;-><init>(Landroid/widget/HoverPopupWindow;)V

    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 790
    :cond_6
    new-instance v3, Landroid/widget/HoverPopupWindow$2;

    invoke-direct {v3, p0}, Landroid/widget/HoverPopupWindow$2;-><init>(Landroid/widget/HoverPopupWindow;)V

    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    .line 799
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iget v5, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 800
    iput-boolean v7, p0, Landroid/widget/HoverPopupWindow;->mIsShowMessageSent:Z

    goto/16 :goto_0
.end method

.method protected showPenPointEffect(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1967
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1968
    if-ne p1, v3, :cond_1

    .line 1972
    const/16 v1, 0xa

    const/4 v2, -0x1

    :try_start_0
    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1977
    :goto_0
    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsSPenPointChanged:Z

    .line 1990
    :cond_0
    :goto_1
    return-void

    .line 1973
    :catch_0
    move-exception v0

    .line 1974
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HoverPopupWindow"

    const-string v2, "Failed to change Pen Point to HOVERING_SPENICON_MORE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1978
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    if-nez p1, :cond_0

    iget-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsSPenPointChanged:Z

    if-ne v1, v3, :cond_0

    .line 1982
    const/16 v1, 0x14

    const/4 v2, -0x1

    :try_start_1
    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1987
    :goto_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsSPenPointChanged:Z

    goto :goto_1

    .line 1983
    :catch_1
    move-exception v0

    .line 1984
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "HoverPopupWindow"

    const-string v2, "Failed to change Pen Point to HOVERING_SPENICON_HOVERPOPUP_DEFAULT"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public updateHoverPopup()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1615
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    if-nez v0, :cond_0

    .line 1616
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mContentHeight:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/HoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 1617
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1621
    :goto_0
    return-void

    .line 1619
    :cond_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    :goto_1
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/HoverPopupWindow;->updateHoverPopup(Landroid/view/View;III)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_1
.end method

.method public updateHoverPopup(Landroid/view/View;III)V
    .locals 6
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "offsetX"    # I
    .param p4, "offsetY"    # I

    .prologue
    const/4 v5, 0x0

    .line 1627
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 1680
    :goto_0
    return-void

    .line 1633
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/HoverPopupWindow;->computePopupPosition(Landroid/view/View;III)V

    .line 1635
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    if-nez v1, :cond_1

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mContentHeight:I

    if-nez v1, :cond_1

    .line 1636
    const-string v1, "HoverPopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateHoverPopup(), returns dueto content size 0   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1641
    :cond_1
    iget-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    if-eqz v1, :cond_2

    .line 1642
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1657
    :goto_1
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_5

    .line 1658
    const-string v1, "HoverPopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateHoverPopup(), returns dueto mPopup.getContentView()==null   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1643
    :cond_2
    iget-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v1, :cond_3

    .line 1644
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_1

    .line 1646
    :cond_3
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 1648
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1649
    .local v0, "oldParent":Landroid/view/ViewParent;
    if-eqz v0, :cond_4

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 1650
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "oldParent":Landroid/view/ViewParent;
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1654
    :cond_4
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_1

    .line 1663
    :cond_5
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1664
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    iget v4, p0, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    iget v5, p0, Landroid/widget/HoverPopupWindow;->mContentHeight:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_0

    .line 1667
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_7

    .line 1668
    const-string v1, "HoverPopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent view may be on sub-panel window, popup will be attached with Application Token : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget v4, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto/16 :goto_0

    .line 1673
    :cond_7
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v1, p1, v5, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0
.end method
