.class Landroid/widget/RemoteViews$AddInnerShadowAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddInnerShadowAction"
.end annotation


# static fields
.field public static final TAG:I = 0x16


# instance fields
.field angle:F

.field blendingOpacity:F

.field color:I

.field final methodName:Ljava/lang/String;

.field offset:F

.field softness:F

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IFFFIF)V
    .locals 1
    .param p2, "viewId"    # I
    .param p3, "angle"    # F
    .param p4, "offset"    # F
    .param p5, "softness"    # F
    .param p6, "color"    # I
    .param p7, "blendingOpacity"    # F

    .prologue
    .line 1681
    iput-object p1, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1726
    const-string v0, "addInnerShadowTextEffect"

    iput-object v0, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->methodName:Ljava/lang/String;

    .line 1682
    iput p2, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    .line 1683
    iput p3, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->angle:F

    .line 1684
    iput p4, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->offset:F

    .line 1685
    iput p5, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->softness:F

    .line 1686
    iput p6, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->color:I

    .line 1687
    iput p7, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->blendingOpacity:F

    .line 1688
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1690
    iput-object p1, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1726
    const-string v0, "addInnerShadowTextEffect"

    iput-object v0, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->methodName:Ljava/lang/String;

    .line 1691
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    .line 1692
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->angle:F

    .line 1693
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->offset:F

    .line 1694
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->softness:F

    .line 1695
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->color:I

    .line 1696
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->blendingOpacity:F

    .line 1697
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 1711
    iget v1, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1712
    .local v0, "target":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 1714
    :goto_0
    return-void

    .line 1713
    :cond_0
    iget v1, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->angle:F

    iget v2, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->offset:F

    iget v3, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->softness:F

    iget v4, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->color:I

    iget v5, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->blendingOpacity:F

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->addInnerShadowTextEffect(FFFIF)I

    goto :goto_0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1717
    const-string v0, "AddInnerShadowAction"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1700
    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1701
    iget v0, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1702
    iget v0, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->angle:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1703
    iget v0, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->offset:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1704
    iget v0, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->softness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1705
    iget v0, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1706
    iget v0, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->blendingOpacity:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1707
    return-void
.end method
