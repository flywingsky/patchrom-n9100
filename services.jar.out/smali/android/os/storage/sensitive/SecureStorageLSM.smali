.class public Landroid/os/storage/sensitive/SecureStorageLSM;
.super Ljava/lang/Object;
.source "SecureStorageLSM.java"


# static fields
.field private static lsmss:Landroid/os/storage/sensitive/SecureStorageLSM;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    new-instance v0, Landroid/os/storage/sensitive/SecureStorageLSM;

    invoke-direct {v0}, Landroid/os/storage/sensitive/SecureStorageLSM;-><init>()V

    sput-object v0, Landroid/os/storage/sensitive/SecureStorageLSM;->lsmss:Landroid/os/storage/sensitive/SecureStorageLSM;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method

.method public static getInstance()Landroid/os/storage/sensitive/SecureStorageLSM;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Landroid/os/storage/sensitive/SecureStorageLSM;->lsmss:Landroid/os/storage/sensitive/SecureStorageLSM;

    return-object v0
.end method

.method public static native lsmDecrypt([B[B)[B
.end method

.method public static native lsmEncrypt([B[BI)[B
.end method

.method public static native lsmGenKeypair([B[B)[B
.end method

.method public static native lsmInitialize()I
.end method

.method public static native lsmKeysReEncrypt([B[B)[B
.end method

.method public static native lsmSetState([BI)I
.end method


# virtual methods
.method public decrypt([B[B)[B
    .locals 1
    .param p1, "dataBlock"    # [B
    .param p2, "password"    # [B

    .prologue
    .line 18
    invoke-static {p1, p2}, Landroid/os/storage/sensitive/SecureStorageLSM;->lsmDecrypt([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public encrypt([B[BI)[B
    .locals 1
    .param p1, "dataBlock"    # [B
    .param p2, "password"    # [B
    .param p3, "flag"    # I

    .prologue
    .line 14
    invoke-static {p1, p2, p3}, Landroid/os/storage/sensitive/SecureStorageLSM;->lsmEncrypt([B[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public gen_keypair([B[B)[B
    .locals 1
    .param p1, "dataBlock"    # [B
    .param p2, "password"    # [B

    .prologue
    .line 22
    invoke-static {p1, p2}, Landroid/os/storage/sensitive/SecureStorageLSM;->lsmGenKeypair([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public initialize()I
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Landroid/os/storage/sensitive/SecureStorageLSM;->lsmInitialize()I

    move-result v0

    return v0
.end method

.method public keys_re_encrypt([B[B)[B
    .locals 1
    .param p1, "dataBlock"    # [B
    .param p2, "password"    # [B

    .prologue
    .line 26
    invoke-static {p1, p2}, Landroid/os/storage/sensitive/SecureStorageLSM;->lsmKeysReEncrypt([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public set_state([BI)I
    .locals 1
    .param p1, "password"    # [B
    .param p2, "flag"    # I

    .prologue
    .line 30
    invoke-static {p1, p2}, Landroid/os/storage/sensitive/SecureStorageLSM;->lsmSetState([BI)I

    move-result v0

    return v0
.end method
