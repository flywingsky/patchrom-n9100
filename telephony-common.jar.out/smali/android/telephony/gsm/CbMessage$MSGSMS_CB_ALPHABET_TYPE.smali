.class final enum Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;
.super Ljava/lang/Enum;
.source "CbMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/gsm/CbMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MSGSMS_CB_ALPHABET_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

.field public static final enum MSGSMS_CB_ALPHABET_8BIT:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

.field public static final enum MSGSMS_CB_ALPHABET_GSM7BIT:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

.field public static final enum MSGSMS_CB_ALPHABET_KSC5601:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

.field public static final enum MSGSMS_CB_ALPHABET_MAX:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

.field public static final enum MSGSMS_CB_ALPHABET_UCS2:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 106
    new-instance v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    const-string v1, "MSGSMS_CB_ALPHABET_GSM7BIT"

    invoke-direct {v0, v1, v3, v3}, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->MSGSMS_CB_ALPHABET_GSM7BIT:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    .line 107
    new-instance v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    const-string v1, "MSGSMS_CB_ALPHABET_8BIT"

    invoke-direct {v0, v1, v4, v4}, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->MSGSMS_CB_ALPHABET_8BIT:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    .line 108
    new-instance v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    const-string v1, "MSGSMS_CB_ALPHABET_UCS2"

    invoke-direct {v0, v1, v5, v5}, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->MSGSMS_CB_ALPHABET_UCS2:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    .line 110
    new-instance v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    const-string v1, "MSGSMS_CB_ALPHABET_KSC5601"

    invoke-direct {v0, v1, v6, v6}, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->MSGSMS_CB_ALPHABET_KSC5601:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    .line 112
    new-instance v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    const-string v1, "MSGSMS_CB_ALPHABET_MAX"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v7, v2}, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->MSGSMS_CB_ALPHABET_MAX:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    .line 105
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    sget-object v1, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->MSGSMS_CB_ALPHABET_GSM7BIT:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->MSGSMS_CB_ALPHABET_8BIT:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->MSGSMS_CB_ALPHABET_UCS2:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->MSGSMS_CB_ALPHABET_KSC5601:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->MSGSMS_CB_ALPHABET_MAX:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    aput-object v1, v0, v7

    sput-object v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->$VALUES:[Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "EnumValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 105
    const-class v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    return-object v0
.end method

.method public static values()[Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->$VALUES:[Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;

    return-object v0
.end method


# virtual methods
.method public getAlphabetType()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->value:I

    return v0
.end method

.method public setAlphabetType(I)V
    .locals 0
    .param p1, "EnumValue"    # I

    .prologue
    .line 119
    iput p1, p0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_ALPHABET_TYPE;->value:I

    return-void
.end method