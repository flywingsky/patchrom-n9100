.class public final enum Landroid/webkitsec/HtmlComposerView$CursorDirection;
.super Ljava/lang/Enum;
.source "HtmlComposerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/HtmlComposerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CursorDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/webkitsec/HtmlComposerView$CursorDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/webkitsec/HtmlComposerView$CursorDirection;

.field public static final enum BACKWARD:Landroid/webkitsec/HtmlComposerView$CursorDirection;

.field public static final enum FORWARD:Landroid/webkitsec/HtmlComposerView$CursorDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6411
    new-instance v0, Landroid/webkitsec/HtmlComposerView$CursorDirection;

    const-string v1, "FORWARD"

    invoke-direct {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView$CursorDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkitsec/HtmlComposerView$CursorDirection;->FORWARD:Landroid/webkitsec/HtmlComposerView$CursorDirection;

    .line 6412
    new-instance v0, Landroid/webkitsec/HtmlComposerView$CursorDirection;

    const-string v1, "BACKWARD"

    invoke-direct {v0, v1, v3}, Landroid/webkitsec/HtmlComposerView$CursorDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkitsec/HtmlComposerView$CursorDirection;->BACKWARD:Landroid/webkitsec/HtmlComposerView$CursorDirection;

    .line 6410
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/webkitsec/HtmlComposerView$CursorDirection;

    sget-object v1, Landroid/webkitsec/HtmlComposerView$CursorDirection;->FORWARD:Landroid/webkitsec/HtmlComposerView$CursorDirection;

    aput-object v1, v0, v2

    sget-object v1, Landroid/webkitsec/HtmlComposerView$CursorDirection;->BACKWARD:Landroid/webkitsec/HtmlComposerView$CursorDirection;

    aput-object v1, v0, v3

    sput-object v0, Landroid/webkitsec/HtmlComposerView$CursorDirection;->$VALUES:[Landroid/webkitsec/HtmlComposerView$CursorDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6410
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/webkitsec/HtmlComposerView$CursorDirection;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6410
    const-class v0, Landroid/webkitsec/HtmlComposerView$CursorDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/webkitsec/HtmlComposerView$CursorDirection;

    return-object v0
.end method

.method public static values()[Landroid/webkitsec/HtmlComposerView$CursorDirection;
    .locals 1

    .prologue
    .line 6410
    sget-object v0, Landroid/webkitsec/HtmlComposerView$CursorDirection;->$VALUES:[Landroid/webkitsec/HtmlComposerView$CursorDirection;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/webkitsec/HtmlComposerView$CursorDirection;

    return-object v0
.end method
