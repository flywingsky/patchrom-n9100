.class abstract Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SinglePressAction"
.end annotation


# instance fields
.field public customAction:I

.field public isKnoxCustom:Z

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIconResId:I

.field mLayoutId:I

.field private final mMessage:Ljava/lang/CharSequence;

.field private final mMessageResId:I


# direct methods
.method protected constructor <init>(II)V
    .locals 2
    .param p1, "iconResId"    # I
    .param p2, "messageResId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2138
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    .line 2139
    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->customAction:I

    .line 2150
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    .line 2151
    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 2152
    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 2153
    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 2154
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->init()V

    .line 2155
    return-void
.end method

.method protected constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "iconResId"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "message"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 2156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2138
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    .line 2139
    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->customAction:I

    .line 2157
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    .line 2158
    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 2159
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 2160
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 2161
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->init()V

    .line 2162
    return-void
.end method

.method protected constructor <init>(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "iconResId"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 2163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2138
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    .line 2139
    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->customAction:I

    .line 2164
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    .line 2165
    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 2166
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 2167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 2168
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->init()V

    .line 2169
    return-void
.end method

.method protected constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 1
    .param p1, "iconImageDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "messageChar"    # Ljava/lang/String;
    .param p3, "action"    # I

    .prologue
    const/4 v0, 0x0

    .line 2140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2138
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    .line 2139
    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->customAction:I

    .line 2141
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 2142
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 2143
    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    .line 2144
    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 2145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    .line 2146
    iput p3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->customAction:I

    .line 2147
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 2171
    const v0, 0x1090057

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mLayoutId:I

    .line 2172
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 2182
    const v3, 0x1090057

    const/4 v4, 0x0

    invoke-virtual {p4, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 2183
    .local v2, "v":Landroid/view/View;
    const v3, 0x1020006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2184
    .local v0, "icon":Landroid/widget/ImageView;
    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2185
    .local v1, "messageView":Landroid/widget/TextView;
    const v3, 0x102031f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2186
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 2187
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2188
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2192
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    .line 2193
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2198
    :goto_1
    return-object v2

    .line 2189
    :cond_1
    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    if-eqz v3, :cond_0

    .line 2190
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2195
    :cond_2
    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2196
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 2174
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 2178
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onPress()V
.end method
