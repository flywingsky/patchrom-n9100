.class Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;
.super Landroid/widget/FrameLayout;
.source "HeaderWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FloatingMenuView"
.end annotation


# instance fields
.field private mCloseButton:Landroid/widget/ImageView;

.field private mContents:Landroid/view/View;

.field private mDragAndDropButton:Landroid/widget/ImageView;

.field private mLeftMargin:I

.field private mMaximizeButton:Landroid/widget/ImageView;

.field private mMinimizeButton:Landroid/widget/ImageView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mParentRectWidth:I

.field private mShowing:Z

.field private mToken:Landroid/os/IBinder;

.field private mTopMargin:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 597
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 598
    iput-object p2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mToken:Landroid/os/IBinder;

    .line 599
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 601
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x109003e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mContents:Landroid/view/View;

    .line 603
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mContents:Landroid/view/View;

    const v2, 0x1020309

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mDragAndDropButton:Landroid/widget/ImageView;

    .line 604
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mDragAndDropButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 607
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mContents:Landroid/view/View;

    const v2, 0x102030a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mMinimizeButton:Landroid/widget/ImageView;

    .line 608
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mMinimizeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 610
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mContents:Landroid/view/View;

    const v2, 0x102030b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mMaximizeButton:Landroid/widget/ImageView;

    .line 611
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mMaximizeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 614
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mContents:Landroid/view/View;

    const v2, 0x102030c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mCloseButton:Landroid/widget/ImageView;

    .line 615
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 617
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mContents:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 618
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    .line 619
    invoke-virtual {p0}, Landroid/view/ViewGroup;->resetResolvedLayoutDirection()V

    .line 620
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 621
    return-void
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mContents:Landroid/view/View;

    return-object v0
.end method

.method private generateLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 687
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 689
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 690
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 691
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 692
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 693
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 694
    const-string v1, "PenWindow Titlebar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 695
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 696
    const v1, 0x40208

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 699
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 701
    return-object v0
.end method

.method private getStringLengthMargin(Landroid/widget/ImageView;)I
    .locals 7
    .param p1, "button"    # Landroid/widget/ImageView;

    .prologue
    .line 718
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 719
    .local v3, "textLength":I
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v1, v5

    .line 720
    .local v1, "byteofText":I
    const/4 v2, 0x0

    .line 721
    .local v2, "margin":I
    const/4 v0, 0x0

    .line 722
    .local v0, "addLength":I
    const/16 v4, 0x14

    .line 723
    .local v4, "textWidth":I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 724
    const/16 v4, 0x1e

    .line 726
    :cond_0
    const/4 v5, 0x5

    if-le v3, v5, :cond_1

    .line 727
    add-int/lit8 v5, v3, -0x4

    div-int/lit8 v0, v5, 0x2

    .line 729
    :cond_1
    if-eq v3, v1, :cond_2

    const/4 v5, 0x3

    if-le v3, v5, :cond_2

    .line 730
    add-int/lit8 v0, v3, -0x4

    .line 732
    :cond_2
    mul-int v2, v0, v4

    .line 733
    return v2
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 670
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mShowing:Z

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 672
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mShowing:Z

    .line 675
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 679
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 680
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->dismiss()V

    .line 681
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mShowing:Z

    .line 683
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 715
    :cond_0
    return-void
.end method

.method public setLeftMargin(I)V
    .locals 0
    .param p1, "leftMargin"    # I

    .prologue
    .line 624
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mLeftMargin:I

    .line 625
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 706
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 707
    return-void
.end method

.method public setParentRectWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 630
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mParentRectWidth:I

    .line 631
    return-void
.end method

.method public setTopMargin(I)V
    .locals 0
    .param p1, "topMargin"    # I

    .prologue
    .line 627
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mTopMargin:I

    .line 628
    return-void
.end method

.method public show(II)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v9, 0x1

    .line 634
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mShowing:Z

    if-nez v6, :cond_1

    .line 635
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->generateLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 636
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 637
    iput p2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 638
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 639
    .local v3, "resource":Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v4, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 640
    .local v4, "screenWidth":I
    iget v6, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mParentRectWidth:I

    int-to-float v6, v6

    int-to-float v7, v4

    div-float v5, v6, v7

    .line 641
    .local v5, "widthRatio":F
    const v6, 0x10e0083

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const v7, 0x10e0084

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v7, v7

    sub-int v0, v6, v7

    .line 643
    .local v0, "buttonMargin":I
    const v6, 0x10e007f

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const v7, 0x10e0080

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v7, v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mLeftMargin:I

    sub-int v1, v6, v7

    .line 646
    .local v1, "defaultLeftMargin":I
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 647
    const v6, 0x10e0081

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const v7, 0x10e0082

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v7, v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mLeftMargin:I

    sub-int v1, v6, v7

    .line 652
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mDragAndDropButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/view/View;->setHoverPopupType(I)V

    .line 653
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mDragAndDropButton:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mDragAndDropButton:Landroid/widget/ImageView;

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->getStringLengthMargin(Landroid/widget/ImageView;)I

    move-result v7

    add-int/2addr v7, v1

    iget v8, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mTopMargin:I

    neg-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 655
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mMinimizeButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/view/View;->setHoverPopupType(I)V

    .line 656
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mMinimizeButton:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v6

    add-int v7, v1, v0

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mMinimizeButton:Landroid/widget/ImageView;

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->getStringLengthMargin(Landroid/widget/ImageView;)I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mTopMargin:I

    neg-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 658
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mMaximizeButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/view/View;->setHoverPopupType(I)V

    .line 659
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mMaximizeButton:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v6

    mul-int/lit8 v7, v0, 0x2

    add-int/2addr v7, v1

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mMaximizeButton:Landroid/widget/ImageView;

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->getStringLengthMargin(Landroid/widget/ImageView;)I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mTopMargin:I

    neg-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 661
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/view/View;->setHoverPopupType(I)V

    .line 662
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v6

    mul-int/lit8 v7, v0, 0x3

    add-int/2addr v7, v1

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mCloseButton:Landroid/widget/ImageView;

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->getStringLengthMargin(Landroid/widget/ImageView;)I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mTopMargin:I

    neg-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 664
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v6, p0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 665
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mShowing:Z

    .line 667
    .end local v0    # "buttonMargin":I
    .end local v1    # "defaultLeftMargin":I
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "resource":Landroid/content/res/Resources;
    .end local v4    # "screenWidth":I
    .end local v5    # "widthRatio":F
    :cond_1
    return-void
.end method
