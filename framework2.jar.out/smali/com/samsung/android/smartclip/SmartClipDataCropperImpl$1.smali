.class Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;
.super Landroid/os/Handler;
.source "SmartClipDataCropperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_GoogleChromeView(Landroid/view/View;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public mResult:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

.field final synthetic this$0:Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;

.field final synthetic val$resultElement:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

.field final synthetic val$setSmartClipResultHandlerMethod:Ljava/lang/reflect/Method;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;Lcom/samsung/android/smartclip/SmartClipDataElementImpl;Landroid/view/View;Ljava/lang/reflect/Method;)V
    .locals 1

    .prologue
    .line 520
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->this$0:Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;

    iput-object p2, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->val$resultElement:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    iput-object p3, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->val$view:Landroid/view/View;

    iput-object p4, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->val$setSmartClipResultHandlerMethod:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 521
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->val$resultElement:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->mResult:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 524
    const-string v8, "SmartClipDataCropperImpl"

    const-string v9, "Meta data arrived from chrome"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 526
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 527
    const-string v8, "SmartClipDataCropperImpl"

    const-string v9, "The bundle is null!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v8, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->this$0:Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;

    iget-object v9, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->val$view:Landroid/view/View;

    iget-object v10, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->mResult:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->setPendingExtractionResult(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z

    .line 569
    :goto_0
    return-void

    .line 532
    :cond_0
    const-string/jumbo v8, "title"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 533
    .local v6, "title":Ljava/lang/String;
    const-string/jumbo v8, "url"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 534
    .local v7, "url":Ljava/lang/String;
    const-string v8, "html"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 535
    .local v3, "html":Ljava/lang/String;
    const-string/jumbo v8, "text"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 536
    .local v5, "text":Ljava/lang/String;
    const-string v8, "area"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 538
    .local v0, "area":Landroid/graphics/Rect;
    # getter for: Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->DEBUG:Z
    invoke-static {}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->access$000()Z

    move-result v8

    if-ne v8, v11, :cond_1

    .line 539
    const-string v8, "SmartClipDataCropperImpl"

    const-string v9, "Title:%s\nURL:%s\nArea:%s\nText:%s\nHTML:%s"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v6, v10, v12

    aput-object v7, v10, v11

    const/4 v11, 0x2

    aput-object v0, v10, v11

    const/4 v11, 0x3

    aput-object v5, v10, v11

    const/4 v11, 0x4

    aput-object v3, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 542
    iget-object v8, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->val$resultElement:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    new-instance v9, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v10, "title"

    invoke-direct {v9, v10, v6}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    .line 544
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 545
    iget-object v8, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->val$resultElement:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    new-instance v9, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v10, "url"

    invoke-direct {v9, v10, v7}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    .line 547
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 548
    iget-object v8, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->val$resultElement:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    new-instance v9, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string v10, "html"

    invoke-direct {v9, v10, v3}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    .line 550
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 551
    iget-object v8, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->val$resultElement:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    new-instance v9, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v10, "plain_text"

    invoke-direct {v9, v10, v5}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)Z

    .line 553
    :cond_5
    if-eqz v0, :cond_6

    .line 555
    iget-object v8, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->this$0:Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;

    iget-object v9, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->val$view:Landroid/view/View;

    # invokes: Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;
    invoke-static {v8, v9}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->access$100(Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v4

    .line 556
    .local v4, "screenPointOfView":Landroid/graphics/Point;
    iget v8, v4, Landroid/graphics/Point;->x:I

    iget v9, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 558
    iget-object v8, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->val$resultElement:Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    invoke-virtual {v8, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->setMetaAreaRect(Landroid/graphics/Rect;)V

    .line 562
    .end local v4    # "screenPointOfView":Landroid/graphics/Point;
    :cond_6
    :try_start_0
    iget-object v9, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->val$setSmartClipResultHandlerMethod:Ljava/lang/reflect/Method;

    iget-object v10, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->val$view:Landroid/view/View;

    const/4 v8, 0x1

    new-array v11, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v8, 0x0

    check-cast v8, Landroid/os/Handler;

    aput-object v8, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    :goto_1
    iget-object v8, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->this$0:Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;

    iget-object v9, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->val$view:Landroid/view/View;

    iget-object v10, p0, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl$1;->mResult:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->setPendingExtractionResult(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z

    goto/16 :goto_0

    .line 563
    :catch_0
    move-exception v2

    .line 564
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "SmartClipDataCropperImpl"

    const-string v9, "Could not invoke set smartclip handler API"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
