.class public Landroid/graphics/ImageFilter$SgiBlurFilter;
.super Landroid/graphics/ImageFilter;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SgiBlurFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/graphics/ImageFilter;-><init>(I)V

    .line 319
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/ImageFilter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/ImageFilter$1;

    .prologue
    .line 311
    invoke-direct {p0}, Landroid/graphics/ImageFilter$SgiBlurFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public setRadius(F)V
    .locals 3
    .param p1, "radius"    # F

    .prologue
    .line 327
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/graphics/ImageFilter;->setValue(IF)V

    .line 329
    return-void
.end method
