.class public final enum Lcom/itsoninc/android/SmsType;
.super Ljava/lang/Enum;
.source "SmsType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/itsoninc/android/SmsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsoninc/android/SmsType;

.field public static final enum SMS:Lcom/itsoninc/android/SmsType;

.field public static final enum VMI:Lcom/itsoninc/android/SmsType;

.field public static final enum WAP_PUSH:Lcom/itsoninc/android/SmsType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/itsoninc/android/SmsType;

    const-string v1, "SMS"

    invoke-direct {v0, v1, v2}, Lcom/itsoninc/android/SmsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsoninc/android/SmsType;->SMS:Lcom/itsoninc/android/SmsType;

    .line 5
    new-instance v0, Lcom/itsoninc/android/SmsType;

    const-string v1, "VMI"

    invoke-direct {v0, v1, v3}, Lcom/itsoninc/android/SmsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsoninc/android/SmsType;->VMI:Lcom/itsoninc/android/SmsType;

    .line 6
    new-instance v0, Lcom/itsoninc/android/SmsType;

    const-string v1, "WAP_PUSH"

    invoke-direct {v0, v1, v4}, Lcom/itsoninc/android/SmsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsoninc/android/SmsType;->WAP_PUSH:Lcom/itsoninc/android/SmsType;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/itsoninc/android/SmsType;

    sget-object v1, Lcom/itsoninc/android/SmsType;->SMS:Lcom/itsoninc/android/SmsType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/itsoninc/android/SmsType;->VMI:Lcom/itsoninc/android/SmsType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/itsoninc/android/SmsType;->WAP_PUSH:Lcom/itsoninc/android/SmsType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/itsoninc/android/SmsType;->$VALUES:[Lcom/itsoninc/android/SmsType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsoninc/android/SmsType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/itsoninc/android/SmsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itsoninc/android/SmsType;

    return-object v0
.end method

.method public static values()[Lcom/itsoninc/android/SmsType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/itsoninc/android/SmsType;->$VALUES:[Lcom/itsoninc/android/SmsType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsoninc/android/SmsType;

    return-object v0
.end method
