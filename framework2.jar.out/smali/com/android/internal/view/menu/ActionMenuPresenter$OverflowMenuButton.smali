.class Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;
.super Landroid/widget/ImageButton;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;
.implements Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuButton"
.end annotation


# static fields
.field static final TEMP_TOAST_HEIGHT:I = 0x28


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 827
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 828
    const/4 v0, 0x0

    const v1, 0x10102f6

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 830
    invoke-virtual {p0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 831
    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 832
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 833
    invoke-virtual {p0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 836
    invoke-virtual {p0}, Landroid/view/View;->getHoverUIFeatureLevel()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    # getter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->mIsParentThemeDeviceDefault:Z
    invoke-static {p1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$200(Lcom/android/internal/view/menu/ActionMenuPresenter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 837
    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setHoverPopupType(I)V

    .line 839
    invoke-virtual {p0, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 873
    :cond_1
    return-void
.end method


# virtual methods
.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 993
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 988
    const/4 v0, 0x0

    return v0
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1015
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1017
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1044
    :cond_0
    :goto_0
    return v9

    .line 1019
    :pswitch_0
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "mouse_hovering"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_0

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "mouse_hovering_magnetic_ui"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 1021
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1022
    .local v5, "r":Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 1023
    .local v3, "posX":I
    const/4 v4, 0x0

    .line 1025
    .local v4, "posY":I
    invoke-virtual {p1, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1027
    iget v6, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v3, v6, v7

    .line 1028
    iget v6, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 1030
    const-string v6, "ActionMenuPresenter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_HOVER_ENTER  posX: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " posY : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "onHover"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1033
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "com.sec.android.spc.eventcontrol.ACTION_SET_MOUSE_POS"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1034
    new-instance v1, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.spc.eventcontrol"

    const-string v7, "com.sec.android.spc.eventcontrol.SpcEventControlReceiver"

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    .local v1, "component":Landroid/content/ComponentName;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1036
    const-string v6, "event"

    invoke-virtual {v2, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1037
    const-string/jumbo v6, "x"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1038
    const-string/jumbo v6, "y"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1040
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1017
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1008
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1009
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 1010
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 998
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 1000
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1003
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 1004
    return-void
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 877
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    :goto_0
    return v1

    .line 881
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 884
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 885
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    goto :goto_0

    .line 887
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 888
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 25

    .prologue
    .line 898
    invoke-super/range {p0 .. p0}, Landroid/view/View;->performLongClick()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 899
    const/16 v22, 0x1

    .line 982
    :goto_0
    return v22

    .line 902
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    move-object/from16 v22, v0

    # getter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->mIsParentThemeDeviceDefault:Z
    invoke-static/range {v22 .. v22}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$200(Lcom/android/internal/view/menu/ActionMenuPresenter;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 903
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v14, v0, [I

    .line 904
    .local v14, "screenPos":[I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 905
    .local v7, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 906
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 908
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 909
    .local v5, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v18

    .line 910
    .local v18, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 911
    .local v9, "height":I
    const/16 v22, 0x1

    aget v22, v14, v22

    div-int/lit8 v23, v9, 0x2

    add-int v10, v22, v23

    .line 912
    .local v10, "midy":I
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    move-object/from16 v0, v22

    iget v15, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 913
    .local v15, "screenWidth":I
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    move-object/from16 v0, v22

    iget v13, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 916
    .local v13, "screenHeight":I
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    move-object/from16 v0, v22

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    .line 917
    .local v6, "density":F
    const/high16 v22, 0x42200000    # 40.0f

    mul-float v22, v22, v6

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v17, v0

    .line 919
    .local v17, "tempToastHeight":I
    const/16 v16, 0x0

    .line 921
    .local v16, "statusBarHeight":I
    const-string/jumbo v22, "window"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v19

    .line 923
    .local v19, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface/range {v19 .. v19}, Landroid/view/IWindowManager;->isStatusBarVisible()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 924
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x105000c

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    .line 929
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    move-object/from16 v22, v0

    # getter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->mIsShowCocktailBar:Z
    invoke-static/range {v22 .. v22}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$300(Lcom/android/internal/view/menu/ActionMenuPresenter;)Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 930
    const/4 v12, 0x0

    .line 931
    .local v12, "rotate":I
    const-string/jumbo v22, "window"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 932
    .local v3, "WM":Landroid/view/WindowManager;
    if-eqz v3, :cond_2

    .line 933
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/Display;->getRotation()I

    move-result v12

    .line 934
    :cond_2
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v12, v0, :cond_3

    .line 935
    const/16 v16, 0x0

    .line 937
    .end local v3    # "WM":Landroid/view/WindowManager;
    .end local v12    # "rotate":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v5, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 938
    .local v4, "cheatSheet":Landroid/widget/Toast;
    const/16 v22, 0x1

    aget v22, v14, v22

    add-int v22, v22, v9

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    sub-int v23, v23, v17

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_6

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    move-object/from16 v22, v0

    # getter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->mIsParentThemeDeviceDefault:Z
    invoke-static/range {v22 .. v22}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$200(Lcom/android/internal/view/menu/ActionMenuPresenter;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 941
    const/16 v22, 0x35

    float-to-int v0, v6

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x5

    sub-int v23, v15, v23

    const/16 v24, 0x0

    aget v24, v14, v24

    sub-int v23, v23, v24

    div-int/lit8 v24, v18, 0x2

    sub-int v23, v23, v24

    const/16 v24, 0x1

    aget v24, v14, v24

    add-int v24, v24, v9

    sub-int v24, v24, v16

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v4, v0, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 955
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v11

    .line 956
    .local v11, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 957
    const/4 v8, 0x0

    .line 958
    .local v8, "gravity":I
    const/16 v20, 0x0

    .line 959
    .local v20, "xOffset":I
    const/16 v21, 0x0

    .line 961
    .local v21, "yOffset":I
    const/16 v22, 0x1

    aget v22, v14, v22

    add-int v22, v22, v9

    add-int v22, v22, v17

    move/from16 v0, v22

    if-ge v0, v13, :cond_7

    .line 963
    const/16 v8, 0x35

    .line 964
    const/16 v22, 0x0

    aget v22, v14, v22

    sub-int v22, v15, v22

    div-int/lit8 v23, v18, 0x2

    sub-int v20, v22, v23

    .line 965
    const/16 v22, 0x1

    aget v22, v14, v22

    add-int v21, v22, v9

    .line 974
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v8, v0, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 977
    .end local v8    # "gravity":I
    .end local v20    # "xOffset":I
    .end local v21    # "yOffset":I
    :cond_4
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 978
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 980
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 944
    .end local v11    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_5
    const/16 v22, 0x35

    const/16 v23, 0x0

    aget v23, v14, v23

    sub-int v23, v15, v23

    div-int/lit8 v24, v18, 0x2

    sub-int v23, v23, v24

    const/16 v24, 0x1

    aget v24, v14, v24

    add-int v24, v24, v9

    sub-int v24, v24, v16

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v4, v0, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_2

    .line 950
    :cond_6
    const/16 v22, 0x51

    const/16 v23, 0x0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v24, v13, v24

    add-int v24, v24, v9

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v4, v0, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_2

    .line 968
    .restart local v8    # "gravity":I
    .restart local v11    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v20    # "xOffset":I
    .restart local v21    # "yOffset":I
    :cond_7
    const/16 v8, 0x51

    .line 969
    const/16 v20, 0x0

    .line 970
    move/from16 v21, v9

    goto :goto_3

    .line 982
    .end local v4    # "cheatSheet":Landroid/widget/Toast;
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "density":F
    .end local v7    # "displayFrame":Landroid/graphics/Rect;
    .end local v8    # "gravity":I
    .end local v9    # "height":I
    .end local v10    # "midy":I
    .end local v11    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v13    # "screenHeight":I
    .end local v14    # "screenPos":[I
    .end local v15    # "screenWidth":I
    .end local v16    # "statusBarHeight":I
    .end local v17    # "tempToastHeight":I
    .end local v18    # "width":I
    .end local v19    # "wm":Landroid/view/IWindowManager;
    .end local v20    # "xOffset":I
    .end local v21    # "yOffset":I
    :cond_8
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 926
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v6    # "density":F
    .restart local v7    # "displayFrame":Landroid/graphics/Rect;
    .restart local v9    # "height":I
    .restart local v10    # "midy":I
    .restart local v13    # "screenHeight":I
    .restart local v14    # "screenPos":[I
    .restart local v15    # "screenWidth":I
    .restart local v16    # "statusBarHeight":I
    .restart local v17    # "tempToastHeight":I
    .restart local v18    # "width":I
    .restart local v19    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v22

    goto/16 :goto_1
.end method
