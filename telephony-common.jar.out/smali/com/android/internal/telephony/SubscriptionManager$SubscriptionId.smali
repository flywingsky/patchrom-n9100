.class final enum Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
.super Ljava/lang/Enum;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SubscriptionId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

.field public static final enum SUB0:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

.field public static final enum SUB1:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

.field public static final enum SUB2:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 201
    new-instance v0, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    const-string v1, "SUB0"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->SUB0:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    .line 202
    new-instance v0, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    const-string v1, "SUB1"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->SUB1:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    .line 203
    new-instance v0, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    const-string v1, "SUB2"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->SUB2:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    .line 200
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    sget-object v1, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->SUB0:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->SUB1:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->SUB2:Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->$VALUES:[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

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
    .line 200
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 200
    const-class v0, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    .locals 1

    .prologue
    .line 200
    sget-object v0, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->$VALUES:[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    return-object v0
.end method
