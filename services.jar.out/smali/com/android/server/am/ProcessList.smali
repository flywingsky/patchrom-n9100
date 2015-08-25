.class final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessList$ILS_Q;
    }
.end annotation


# static fields
.field static final BACKUP_APP_ADJ:I = 0x3

.field static final CACHED_APP_MAX_ADJ:I = 0xf

.field static final CACHED_APP_MIN_ADJ:I = 0x9

.field static DEBUG:Z = false

.field static DHA_INCREASE_THRESHOLD:J = 0x0L

.field static final DHA_MAX_MARGIN:J = 0x800000L

.field static final DHA_MIN_MARGIN:J = 0x400000L

.field static EXTRA_MIN_CACHED_APPS:I = 0x0

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x4

.field static final HOME_APP_ADJ:I = 0x6

.field static INIT_CACHED_APPS:I = 0x0

.field static INIT_EMPTY_APPS:I = 0x0

.field static MAX_CACHED_APPS:I = 0x0

.field static MAX_EMPTY_APPS:I = 0x0

.field static final MAX_EMPTY_TIME:J = 0x1b7740L

.field static MAX_KNOX_CACHED_APPS:I = 0x0

.field static MAX_KNOX_EMPTY_APPS:I = 0x0

.field static MID_EMPTY_APPS_FOR_DHA:I = 0x0

.field static MIN_CACHED_APPS:I = 0x0

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static MIN_EMPTY_APPS_FOR_DHA:I = 0x0

.field static final NATIVE_ADJ:I = -0x11

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0x2

.field static final PERSISTENT_PROC_ADJ:I = -0xc

.field static final PREVIOUS_APP_ADJ:I = 0x7

.field public static final PROC_MEM_CACHED:I = 0x4

.field public static final PROC_MEM_IMPORTANT:I = 0x2

.field public static final PROC_MEM_PERSISTENT:I = 0x0

.field public static final PROC_MEM_SERVICE:I = 0x3

.field public static final PROC_MEM_TOP:I = 0x1

.field public static final PSS_ALL_INTERVAL:I = 0x927c0

.field private static final PSS_FIRST_BACKGROUND_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_CACHED_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_TOP_INTERVAL:I = 0x2710

.field public static final PSS_MAX_INTERVAL:I = 0x1b7740

.field public static final PSS_MIN_TIME_FROM_STATE_CHANGE:I = 0x3a98

.field private static final PSS_SAME_CACHED_INTERVAL:I = 0x1b7740

.field private static final PSS_SAME_IMPORTANT_INTERVAL:I = 0xdbba0

.field private static final PSS_SAME_SERVICE_INTERVAL:I = 0x124f80

.field private static final PSS_SHORT_INTERVAL:I = 0x1d4c0

.field static final SERVICE_ADJ:I = 0x5

.field static final SERVICE_B_ADJ:I = 0x8

.field static SMART_DHA_BG_APPS_MAX:I = 0x0

.field static final SMART_DHA_BG_APPS_MAX_HIGH:I = 0x28

.field static final SMART_DHA_BG_APPS_MAX_LOW:I = 0xf

.field static SMART_DHA_BG_APPS_MIN:I = 0x0

.field static final SMART_DHA_BG_APPS_MIN_HIGH:I = 0x1

.field static final SMART_DHA_MARGIN_MIN_HIGH:J = 0x2800000L

.field static final SMART_DHA_MARGIN_MIN_LOW:J = 0x1400000L

.field static final SYSTEM_ADJ:I = -0x10

.field static final TOTAL_DEVICE_MEMORY:J

.field static TRIM_CACHED_APPS:I = 0x0

.field static TRIM_CRITICAL_THRESHOLD:I = 0x0

.field static TRIM_EMPTY_APPS:I = 0x0

.field static TRIM_LOW_THRESHOLD:I = 0x0

.field static final UNKNOWN_ADJ:I = 0x10

.field static final VISIBLE_APP_ADJ:I = 0x1

.field static mHECEnable:I

.field static mILS_Enable:Z

.field private static mInfo:Lcom/android/internal/util/MemInfoReader;

.field static mMaxCached:I

.field static mSzILSFlag:Z

.field static mWhitelistEnable:I

.field private static final sFirstAwakePssTimes:[J

.field private static final sProcStateToProcMem:[I

.field private static final sSameAwakePssTimes:[J


# instance fields
.field private mCachedRestoreLevel:J

.field private mHaveDisplaySize:Z

.field private final mOomAdj:[I

.field private final mOomMinFree:[J

.field private final mOomMinFreeHigh:[J

.field private final mOomMinFreeLow:[J

.field private mSmartDHADefaultMargin:J

.field private mSmartDHAKswapdWatermark:J

.field private mSz2ndDHAThreshold:J

.field private mSzDHADefendThreshold:J

.field private mSzDHAStep:I

.field private mSzDHAThreshold:J

.field private mSzDHAThresholdRate:F

.field private mSzMidDHA:I

.field private mSzMidDHA2nd:I

.field private mSzMidDHA2ndStep:I

.field private mSzMidDHAStep:I

.field private mSzUpdateDHACount:I

.field private mSzUpdateDHAMaxCount:I

.field private final mTotalMemMb:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0xe

    .line 47
    sput-boolean v3, Lcom/android/server/am/ProcessList;->DEBUG:Z

    .line 122
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    .line 124
    invoke-static {}, Lcom/android/server/am/ProcessList;->totalDeviceMemory()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    .line 146
    const-string/jumbo v0, "ro.config.dha_cached_max"

    const-string v1, "6"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->INIT_CACHED_APPS:I

    .line 150
    const-string/jumbo v0, "ro.config.dha_cached_min"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MIN_CACHED_APPS:I

    .line 152
    const-string/jumbo v0, "ro.config.dha_cached_extra_min"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->EXTRA_MIN_CACHED_APPS:I

    .line 154
    const-string/jumbo v0, "ro.config.dha_cached_max"

    const-string v1, "6"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    .line 156
    const-string/jumbo v0, "ro.config.dha_cached_max_knox"

    const-string v1, "6"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_KNOX_CACHED_APPS:I

    .line 162
    const-string/jumbo v0, "ro.config.dha_empty_init"

    const-string v1, "30"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->INIT_EMPTY_APPS:I

    .line 164
    const-string/jumbo v0, "ro.config.dha_empty_min"

    const-string v1, "6"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    .line 166
    const-string/jumbo v0, "ro.config.dha_empty_mid"

    const-string v1, "12"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MID_EMPTY_APPS_FOR_DHA:I

    .line 168
    const-string/jumbo v0, "ro.config.dha_empty_max"

    const-string v1, "30"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    .line 170
    const-string/jumbo v0, "ro.config.dha_empty_max_knox"

    const-string v1, "60"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_KNOX_EMPTY_APPS:I

    .line 174
    sget v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_APPS:I

    .line 178
    sget v0, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_CACHED_APPS:I

    .line 181
    const/4 v0, 0x3

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_CRITICAL_THRESHOLD:I

    .line 184
    const/4 v0, 0x5

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_LOW_THRESHOLD:I

    .line 232
    sget v0, Lcom/android/server/am/ProcessList;->INIT_CACHED_APPS:I

    sput v0, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 234
    const-string/jumbo v0, "ro.config.dha_whitelist_enable"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->mWhitelistEnable:I

    .line 237
    const-string/jumbo v0, "ro.config.dha_HEC_enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->mHECEnable:I

    .line 240
    const-string/jumbo v0, "ro.config.dha_ils_enable"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessList;->mILS_Enable:Z

    .line 242
    sput-boolean v3, Lcom/android/server/am/ProcessList;->mSzILSFlag:Z

    .line 248
    const-wide/32 v0, 0x200000

    sput-wide v0, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    .line 259
    const/16 v0, 0x28

    sput v0, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MAX:I

    .line 262
    const/4 v0, 0x1

    sput v0, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MIN:I

    .line 646
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    .line 663
    new-array v0, v2, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    .line 680
    new-array v0, v2, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    return-void

    .line 646
    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    .line 663
    :array_1
    .array-data 8
        0x1d4c0
        0x1d4c0
        0x2710
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x7530
        0x7530
        0x7530
        0x7530
        0x7530
        0x7530
    .end array-data

    .line 680
    :array_2
    .array-data 8
        0xdbba0
        0xdbba0
        0x1d4c0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0x124f80
        0x124f80
        0x1b7740
        0x1b7740
        0x1b7740
        0x1b7740
        0x1b7740
    .end array-data
.end method

.method constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x6

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-array v3, v5, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 195
    new-array v3, v5, [J

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    .line 201
    new-array v3, v5, [J

    fill-array-data v3, :array_2

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[J

    .line 206
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v3, v3

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    .line 210
    const-wide/32 v3, 0x2000000

    iput-wide v3, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    .line 212
    const-wide/32 v3, 0x1000000

    iput-wide v3, p0, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    .line 214
    const-wide/32 v3, 0x800000

    iput-wide v3, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    .line 216
    iput v7, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    .line 218
    const/4 v3, 0x7

    iput v3, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHAMaxCount:I

    .line 220
    iput v5, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    .line 222
    iput v5, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    .line 224
    sget v3, Lcom/android/server/am/ProcessList;->INIT_EMPTY_APPS:I

    iget v4, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    .line 226
    iget v3, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v4, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2nd:I

    .line 228
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    .line 230
    const/high16 v3, 0x40000000    # 2.0f

    iput v3, p0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    .line 251
    const-wide/32 v3, 0x1400000

    iput-wide v3, p0, Lcom/android/server/am/ProcessList;->mSmartDHAKswapdWatermark:J

    .line 252
    const-wide/32 v3, 0x2800000

    iput-wide v3, p0, Lcom/android/server/am/ProcessList;->mSmartDHADefaultMargin:J

    .line 270
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 271
    .local v0, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 272
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v3

    const-wide/32 v5, 0x100000

    div-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    .line 276
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getWatermark()J

    move-result-wide v1

    .line 277
    .local v1, "watermark":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mSmartDHAKswapdWatermark:J

    .line 279
    :cond_0
    invoke-direct {p0, v7, v7, v7}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 280
    return-void

    .line 189
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x9
        0xf
    .end array-data

    .line 195
    :array_1
    .array-data 8
        0x2000
        0x3000
        0x4000
        0x6000
        0x7000
        0x8000
    .end array-data

    .line 201
    :array_2
    .array-data 8
        0xc000
        0xf000
        0x12000
        0x15000
        0x18000
        0x1e000
    .end array-data
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "ramKb"    # J

    .prologue
    .line 602
    const/4 v1, 0x0

    .local v1, "j":I
    const/16 v0, 0xa

    .local v0, "fact":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 603
    int-to-long v2, v0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 604
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 602
    :cond_0
    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 607
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 608
    return-void
.end method

.method private static buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "space"    # Ljava/lang/String;
    .param p2, "val"    # I
    .param p3, "base"    # I

    .prologue
    .line 507
    if-ne p2, p3, :cond_1

    .line 508
    if-nez p1, :cond_0

    .line 511
    .end local p0    # "prefix":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 509
    .restart local p0    # "prefix":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 511
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-int v1, p2, p3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static computeNextPssTime(IZZJ)J
    .locals 3
    .param p0, "procState"    # I
    .param p1, "first"    # Z
    .param p2, "sleeping"    # Z
    .param p3, "now"    # J

    .prologue
    .line 703
    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    .line 710
    .local v0, "table":[J
    :goto_0
    aget-wide v1, v0, p0

    add-long/2addr v1, p3

    return-wide v1

    .line 703
    .end local v0    # "table":[J
    :cond_0
    sget-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    goto :goto_0
.end method

.method public static makeOomAdjString(I)Ljava/lang/String;
    .locals 6
    .param p0, "setAdj"    # I

    .prologue
    const/4 v5, 0x1

    const/16 v4, -0xc

    const/16 v3, -0x10

    const/16 v1, -0x11

    const/4 v2, 0x0

    .line 515
    const/16 v0, 0x9

    if-lt p0, v0, :cond_0

    .line 516
    const-string v0, "cch"

    const-string v1, "  "

    const/16 v2, 0x9

    invoke-static {v0, v1, p0, v2}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 542
    :goto_0
    return-object v0

    .line 517
    :cond_0
    const/16 v0, 0x8

    if-lt p0, v0, :cond_1

    .line 518
    const-string/jumbo v0, "svcb "

    const/16 v1, 0x8

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 519
    :cond_1
    const/4 v0, 0x7

    if-lt p0, v0, :cond_2

    .line 520
    const-string v0, "prev "

    const/4 v1, 0x7

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 521
    :cond_2
    const/4 v0, 0x6

    if-lt p0, v0, :cond_3

    .line 522
    const-string v0, "home "

    const/4 v1, 0x6

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 523
    :cond_3
    const/4 v0, 0x5

    if-lt p0, v0, :cond_4

    .line 524
    const-string/jumbo v0, "svc  "

    const/4 v1, 0x5

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 525
    :cond_4
    const/4 v0, 0x4

    if-lt p0, v0, :cond_5

    .line 526
    const-string v0, "hvy  "

    const/4 v1, 0x4

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 527
    :cond_5
    const/4 v0, 0x3

    if-lt p0, v0, :cond_6

    .line 528
    const-string v0, "bkup "

    const/4 v1, 0x3

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 529
    :cond_6
    const/4 v0, 0x2

    if-lt p0, v0, :cond_7

    .line 530
    const-string v0, "prcp "

    const/4 v1, 0x2

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 531
    :cond_7
    if-lt p0, v5, :cond_8

    .line 532
    const-string/jumbo v0, "vis  "

    invoke-static {v0, v2, p0, v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 533
    :cond_8
    if-ltz p0, :cond_9

    .line 534
    const-string v0, "fore "

    const/4 v1, 0x0

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 535
    :cond_9
    if-lt p0, v4, :cond_a

    .line 536
    const-string v0, "pers "

    invoke-static {v0, v2, p0, v4}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 537
    :cond_a
    if-lt p0, v3, :cond_b

    .line 538
    const-string/jumbo v0, "sys  "

    invoke-static {v0, v2, p0, v3}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 539
    :cond_b
    if-lt p0, v1, :cond_c

    .line 540
    const-string v0, "ntv  "

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 542
    :cond_c
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static makeProcStateString(I)Ljava/lang/String;
    .locals 1
    .param p0, "curProcState"    # I

    .prologue
    .line 548
    packed-switch p0, :pswitch_data_0

    .line 595
    const-string v0, "??"

    .line 598
    .local v0, "procState":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 550
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_0
    const-string v0, "N "

    .line 551
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 553
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_1
    const-string v0, "P "

    .line 554
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 556
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_2
    const-string v0, "PU"

    .line 557
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 559
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_3
    const-string v0, "T "

    .line 560
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 562
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_4
    const-string v0, "IF"

    .line 563
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 565
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_5
    const-string v0, "IB"

    .line 566
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 568
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_6
    const-string v0, "BU"

    .line 569
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 571
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_7
    const-string v0, "HW"

    .line 572
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 574
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_8
    const-string v0, "S "

    .line 575
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 577
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_9
    const-string v0, "R "

    .line 578
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 580
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_a
    const-string v0, "HO"

    .line 581
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 583
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_b
    const-string v0, "LA"

    .line 584
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 586
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_c
    const-string v0, "CA"

    .line 587
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 589
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_d
    const-string v0, "Ca"

    .line 590
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 592
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_e
    const-string v0, "CE"

    .line 593
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 548
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static procStatesDifferForMem(II)Z
    .locals 2
    .param p0, "procState1"    # I
    .param p1, "procState2"    # I

    .prologue
    .line 698
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v0, v0, p0

    sget-object v1, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v1, v1, p1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static totalDeviceMemory()J
    .locals 4

    .prologue
    .line 127
    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    .line 130
    :cond_0
    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 132
    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static updateILS(Ljava/lang/String;)V
    .locals 4
    .param p0, "pName"    # Ljava/lang/String;

    .prologue
    .line 920
    sget-boolean v1, Lcom/android/server/am/ProcessList;->mILS_Enable:Z

    if-nez v1, :cond_1

    .line 929
    :cond_0
    :goto_0
    return-void

    .line 922
    :cond_1
    sget-boolean v0, Lcom/android/server/am/ProcessList;->mSzILSFlag:Z

    .line 924
    .local v0, "ILSPrevFlag":Z
    invoke-static {p0}, Lcom/android/server/am/ProcessList$ILS_Q;->isAppsLaunchFreq(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/ProcessList;->mSzILSFlag:Z

    .line 926
    sget-boolean v1, Lcom/android/server/am/ProcessList;->mSzILSFlag:Z

    if-eq v0, v1, :cond_0

    .line 927
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ILS: FlagChange["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Before "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/am/ProcessList;->mSzILSFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateOomLevels(IIZ)V
    .locals 37
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "write"    # Z

    .prologue
    .line 296
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    move-wide/from16 v31, v0

    const-wide/16 v33, 0x12c

    sub-long v31, v31, v33

    move-wide/from16 v0, v31

    long-to-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x43c80000    # 400.0f

    div-float v29, v31, v32

    .line 299
    .local v29, "scaleMem":F
    const v20, 0x5dc00

    .line 300
    .local v20, "minSize":I
    const v17, 0xfa000

    .line 302
    .local v17, "maxSize":I
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v31

    if-nez v31, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    move-wide/from16 v31, v0

    const-wide/16 v33, 0x600

    cmp-long v31, v31, v33

    if-gez v31, :cond_1

    mul-int v31, p1, p2

    const v32, 0xfa000

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_1

    .line 304
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    move-wide/from16 v31, v0

    const-wide/16 v33, 0x12c

    sub-long v31, v31, v33

    move-wide/from16 v0, v31

    long-to-float v0, v0

    move/from16 v31, v0

    const v32, 0x44b54000    # 1450.0f

    div-float v29, v31, v32

    .line 306
    const v20, 0x25800

    .line 307
    const v17, 0x1fa400

    .line 310
    :cond_1
    sget v31, Lcom/android/server/am/ProcessList;->mWhitelistEnable:I

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    .line 312
    const/high16 v10, 0x3f800000    # 1.0f

    .line 313
    .local v10, "enableWhitelist":F
    const-string/jumbo v31, "ro.sf.lcd_density"

    const-string v32, "160"

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 314
    .local v7, "densityS":Ljava/lang/String;
    const-string/jumbo v31, "ro.build.characteristics"

    const-string/jumbo v32, "smartphone"

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 316
    .local v30, "typeS":Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 317
    .local v6, "densityI":I
    const-string v31, "DHA"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "density is "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    move-wide/from16 v31, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide/from16 v0, v31

    long-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v6

    move/from16 v32, v0

    div-float v10, v31, v32

    .line 325
    .end local v6    # "densityI":I
    :goto_0
    const/high16 v31, 0x41000000    # 8.0f

    cmpl-float v31, v10, v31

    if-lez v31, :cond_5

    const-string/jumbo v31, "tablet"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_5

    .line 327
    const/16 v31, 0x1

    sput v31, Lcom/android/server/am/ProcessList;->mWhitelistEnable:I

    .line 328
    sget v31, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    const/16 v32, 0x6

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    .line 329
    const/16 v31, 0xc

    sput v31, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    .line 335
    .end local v7    # "densityS":Ljava/lang/String;
    .end local v10    # "enableWhitelist":F
    .end local v30    # "typeS":Ljava/lang/String;
    :cond_2
    :goto_1
    mul-int v31, p1, p2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v31, v31, v32

    sub-int v32, v17, v20

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v28, v31, v32

    .line 342
    .local v28, "scaleDisp":F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .local v3, "adjString":Ljava/lang/StringBuilder;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .local v18, "memString":Ljava/lang/StringBuilder;
    cmpl-float v31, v29, v28

    if-lez v31, :cond_6

    move/from16 v27, v29

    .line 348
    .local v27, "scale":F
    :goto_2
    const-string/jumbo v31, "ro.config.dha_lmk_scale"

    const-string v32, "-1"

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 350
    .local v8, "dha_lmk_scale_property":F
    const/high16 v31, -0x40800000    # -1.0f

    cmpl-float v31, v8, v31

    if-eqz v31, :cond_3

    .line 351
    move/from16 v27, v8

    .line 354
    :cond_3
    const/16 v31, 0x0

    cmpg-float v31, v27, v31

    if-gez v31, :cond_7

    const/16 v27, 0x0

    .line 356
    :cond_4
    :goto_3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x10e0009

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v22

    .line 358
    .local v22, "minfree_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x10e0008

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v21

    .line 364
    .local v21, "minfree_abs":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v13, v0, :cond_8

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    move-object/from16 v31, v0

    aget-wide v14, v31, v13

    .line 366
    .local v14, "low":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[J

    move-object/from16 v31, v0

    aget-wide v11, v31, v13

    .line 367
    .local v11, "high":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v31, v0

    long-to-float v0, v14

    move/from16 v32, v0

    sub-long v33, v11, v14

    move-wide/from16 v0, v33

    long-to-float v0, v0

    move/from16 v33, v0

    mul-float v33, v33, v27

    add-float v32, v32, v33

    move/from16 v0, v32

    float-to-long v0, v0

    move-wide/from16 v32, v0

    aput-wide v32, v31, v13

    .line 364
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 320
    .end local v3    # "adjString":Ljava/lang/StringBuilder;
    .end local v8    # "dha_lmk_scale_property":F
    .end local v11    # "high":J
    .end local v13    # "i":I
    .end local v14    # "low":J
    .end local v18    # "memString":Ljava/lang/StringBuilder;
    .end local v21    # "minfree_abs":I
    .end local v22    # "minfree_adj":I
    .end local v27    # "scale":F
    .end local v28    # "scaleDisp":F
    .restart local v7    # "densityS":Ljava/lang/String;
    .restart local v10    # "enableWhitelist":F
    .restart local v30    # "typeS":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 321
    .local v9, "e":Ljava/lang/NumberFormatException;
    const-string v31, "DHA"

    const-string v32, "densityS is invalid"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/high16 v10, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 332
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    const/16 v31, 0x0

    sput v31, Lcom/android/server/am/ProcessList;->mWhitelistEnable:I

    goto/16 :goto_1

    .end local v7    # "densityS":Ljava/lang/String;
    .end local v10    # "enableWhitelist":F
    .end local v30    # "typeS":Ljava/lang/String;
    .restart local v3    # "adjString":Ljava/lang/StringBuilder;
    .restart local v18    # "memString":Ljava/lang/StringBuilder;
    .restart local v28    # "scaleDisp":F
    :cond_6
    move/from16 v27, v28

    .line 345
    goto/16 :goto_2

    .line 355
    .restart local v8    # "dha_lmk_scale_property":F
    .restart local v27    # "scale":F
    :cond_7
    const/high16 v31, 0x3f800000    # 1.0f

    cmpl-float v31, v27, v31

    if-lez v31, :cond_4

    const/high16 v27, 0x3f800000    # 1.0f

    goto :goto_3

    .line 370
    .restart local v13    # "i":I
    .restart local v21    # "minfree_abs":I
    .restart local v22    # "minfree_adj":I
    :cond_8
    if-ltz v21, :cond_9

    .line 371
    const/4 v13, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v13, v0, :cond_9

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v31, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v33, v0

    aget-wide v33, v33, v13

    move-wide/from16 v0, v33

    long-to-float v0, v0

    move/from16 v33, v0

    mul-float v32, v32, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0x1

    aget-wide v33, v33, v34

    move-wide/from16 v0, v33

    long-to-float v0, v0

    move/from16 v33, v0

    div-float v32, v32, v33

    move/from16 v0, v32

    float-to-long v0, v0

    move-wide/from16 v32, v0

    aput-wide v32, v31, v13

    .line 371
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 376
    :cond_9
    if-eqz v22, :cond_b

    .line 377
    const/4 v13, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v13, v0, :cond_b

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v31, v0

    aget-wide v32, v31, v13

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v35, v0

    aget-wide v35, v35, v13

    move-wide/from16 v0, v35

    long-to-float v0, v0

    move/from16 v35, v0

    mul-float v34, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v36, v0

    add-int/lit8 v36, v36, -0x1

    aget-wide v35, v35, v36

    move-wide/from16 v0, v35

    long-to-float v0, v0

    move/from16 v35, v0

    div-float v34, v34, v35

    move/from16 v0, v34

    float-to-long v0, v0

    move-wide/from16 v34, v0

    add-long v32, v32, v34

    aput-wide v32, v31, v13

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v31, v0

    aget-wide v31, v31, v13

    const-wide/16 v33, 0x0

    cmp-long v31, v31, v33

    if-gez v31, :cond_a

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v31, v0

    const-wide/16 v32, 0x0

    aput-wide v32, v31, v13

    .line 377
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 388
    :cond_b
    const/16 v31, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v31

    const-wide/16 v33, 0x400

    div-long v31, v31, v33

    const-wide/16 v33, 0x3

    div-long v31, v31, v33

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    .line 390
    const/4 v13, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v13, v0, :cond_d

    .line 391
    if-lez v13, :cond_c

    .line 392
    const/16 v31, 0x2c

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 393
    const/16 v31, 0x2c

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 395
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v31, v0

    aget v31, v31, v13

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v31, v0

    aget-wide v31, v31, v13

    const-wide/16 v33, 0x400

    mul-long v31, v31, v33

    const-wide/16 v33, 0x1000

    div-long v31, v31, v33

    move-object/from16 v0, v18

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 390
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 401
    :cond_d
    mul-int v31, p1, p2

    mul-int/lit8 v31, v31, 0x4

    mul-int/lit8 v31, v31, 0x3

    move/from16 v0, v31

    div-int/lit16 v0, v0, 0x400

    move/from16 v24, v0

    .line 402
    .local v24, "reserve":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x10e000b

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v26

    .line 403
    .local v26, "reserve_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x10e000a

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v25

    .line 405
    .local v25, "reserve_abs":I
    if-ltz v25, :cond_e

    .line 406
    move/from16 v24, v25

    .line 409
    :cond_e
    if-eqz v26, :cond_f

    .line 410
    add-int v24, v24, v26

    .line 411
    if-gez v24, :cond_f

    .line 412
    const/16 v24, 0x0

    .line 435
    :cond_f
    if-eqz p3, :cond_10

    .line 436
    const-string v31, "/sys/module/lowmemorykiller/parameters/adj"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ProcessList;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v31, "/sys/module/lowmemorykiller/parameters/minfree"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ProcessList;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string/jumbo v31, "sys.sysctl.extra_free_kbytes"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :cond_10
    const/16 v31, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v31

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    .line 444
    const/16 v31, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v31

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget-wide v31, v31, v32

    const-wide/16 v33, 0x400

    mul-long v31, v31, v33

    move-wide/from16 v0, v31

    long-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v27

    move/from16 v0, v31

    float-to-long v0, v0

    move-wide/from16 v31, v0

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    .line 448
    const-string/jumbo v31, "ro.com.google.gmsversion"

    const-string v32, "none"

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v32, "none"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_11

    .line 449
    const-string/jumbo v31, "ro.config.dha_empty_max"

    const-string v32, "30"

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    add-int/lit8 v31, v31, 0xc

    sput v31, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    .line 450
    const-string v31, "DHA_PROPERTY"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "No GMS,  MAX_EMPTY_APPS = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget v33, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_11
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v4

    .line 454
    .local v4, "at":Landroid/app/ActivityThread;
    invoke-virtual {v4}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v5

    .line 456
    .local v5, "context":Landroid/content/Context;
    const-string v31, "persona"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/PersonaManager;

    .line 457
    .local v16, "mPersona":Landroid/os/PersonaManager;
    invoke-virtual/range {v16 .. v16}, Landroid/os/PersonaManager;->getPersonas()Ljava/util/List;

    move-result-object v23

    .line 459
    .local v23, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v23, :cond_12

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v31

    if-lez v31, :cond_12

    .line 461
    sget v31, Lcom/android/server/am/ProcessList;->MAX_KNOX_CACHED_APPS:I

    sput v31, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    .line 462
    sget v31, Lcom/android/server/am/ProcessList;->MAX_KNOX_EMPTY_APPS:I

    sput v31, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    .line 463
    const-string v31, "DHA_PROPERTY"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "KNOX is installed. MAX_CACHED_APPS = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget v33, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " , MAX_EMPTY_APPS = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget v33, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_12
    const-string/jumbo v31, "ro.config.dha_update_max_count"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzUpdateDHAMaxCount:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzUpdateDHAMaxCount:I

    .line 468
    const-string/jumbo v31, "ro.config.dha_mid_step"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    .line 470
    const-string/jumbo v31, "ro.config.dha_mid_2nd_step"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    .line 472
    const-string/jumbo v31, "ro.config.dha_step"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    .line 474
    const-string/jumbo v31, "ro.config.dha_th_rate"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    .line 476
    const-string/jumbo v31, "ro.config.dha_th_level"

    const-string v32, "15"

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v31

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    .line 477
    const-string/jumbo v31, "ro.config.dha_th_2nd_level"

    const-string v32, "3"

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v31

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    move-object/from16 v31, v0

    const-string/jumbo v32, "ro.config.dha_defend_th_level"

    const-string v33, "0"

    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    aget-wide v31, v31, v32

    const-wide/16 v33, 0x400

    mul-long v31, v31, v33

    move-wide/from16 v0, v31

    long-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v27

    move/from16 v0, v31

    float-to-long v0, v0

    move-wide/from16 v31, v0

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    .line 479
    const-string/jumbo v31, "ro.config.dha_increase_th"

    sget-wide v32, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v31

    sput-wide v31, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    .line 481
    const-string v31, "DHA_PROPERTY"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "DHA UPDATE MAX COUNT "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzUpdateDHAMaxCount:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const-string v31, "DHA_PROPERTY"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "DHA MID STEP "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const-string v31, "DHA_PROPERTY"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "DHA MID 2ND STEP "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const-string v31, "DHA_PROPERTY"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "DHA STEP "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const-string v31, "DHA_PROPERTY"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "DHA TH RATE "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const-string v31, "DHA_PROPERTY"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "DHA mSzDHAThreshold "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    move-wide/from16 v33, v0

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const-string v31, "DHA_PROPERTY"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "DHA mSz2ndDHAThreshold "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    move-wide/from16 v33, v0

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const-string v31, "DHA_PROPERTY"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "DHA mSzDHADefendThreshold "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    move-wide/from16 v33, v0

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const-string v31, "DHA_PROPERTY"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "DHA DHA_INCREASE_THRESHOLD "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-wide v33, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/high16 v31, 0x4ba00000    # 2.097152E7f

    const/high16 v32, 0x4ba00000    # 2.097152E7f

    mul-float v32, v32, v27

    add-float v31, v31, v32

    move/from16 v0, v31

    float-to-long v0, v0

    move-wide/from16 v31, v0

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSmartDHADefaultMargin:J

    .line 495
    const/high16 v31, 0x3f800000    # 1.0f

    mul-float v31, v31, v27

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    add-int/lit8 v19, v31, 0x1

    .line 496
    .local v19, "minBG":I
    const/16 v31, 0x1

    move/from16 v0, v19

    move/from16 v1, v31

    if-ge v0, v1, :cond_13

    sput v19, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MIN:I

    .line 497
    :cond_13
    const/high16 v31, 0x41700000    # 15.0f

    const/high16 v32, 0x41c80000    # 25.0f

    mul-float v32, v32, v27

    add-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    sput v31, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MAX:I

    .line 500
    return-void
.end method

.method private writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 750
    const/4 v1, 0x0

    .line 752
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 757
    if-eqz v2, :cond_2

    .line 759
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 764
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 760
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 761
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 754
    :catch_1
    move-exception v0

    .line 755
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 757
    if-eqz v1, :cond_0

    .line 759
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 760
    :catch_2
    move-exception v3

    goto :goto_0

    .line 757
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 759
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 761
    :cond_1
    :goto_3
    throw v3

    .line 760
    :catch_3
    move-exception v4

    goto :goto_3

    .line 757
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 754
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0
.end method


# virtual methods
.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v3, 0x1

    .line 283
    iget-boolean v1, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v1, :cond_0

    .line 284
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 285
    .local v0, "p":Landroid/graphics/Point;
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 286
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_0

    .line 287
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 288
    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    .line 291
    .end local v0    # "p":Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method decrementEmptyAppCount(II)I
    .locals 3
    .param p1, "empty"    # I
    .param p2, "cached"    # I

    .prologue
    .line 878
    const/4 v0, 0x0

    .line 880
    .local v0, "ret":I
    iget v1, p0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    sub-int v0, p1, v1

    .line 882
    sget v1, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    if-ge v0, v1, :cond_0

    .line 883
    sget v0, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    .line 885
    :cond_0
    sget v1, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    iget v2, p0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_3

    sget v1, Lcom/android/server/am/ProcessList;->EXTRA_MIN_CACHED_APPS:I

    sget v2, Lcom/android/server/am/ProcessList;->MIN_CACHED_APPS:I

    if-ge v1, v2, :cond_3

    .line 887
    sget v1, Lcom/android/server/am/ProcessList;->EXTRA_MIN_CACHED_APPS:I

    if-le p2, v1, :cond_1

    .line 888
    add-int/lit8 v1, p2, -0x1

    sput v1, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 896
    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    if-nez v1, :cond_2

    .line 897
    iget v1, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    .line 899
    :cond_2
    return v0

    .line 892
    :cond_3
    sget v1, Lcom/android/server/am/ProcessList;->MIN_CACHED_APPS:I

    if-le p2, v1, :cond_1

    .line 893
    add-int/lit8 v1, p2, -0x1

    sput v1, Lcom/android/server/am/ProcessList;->mMaxCached:I

    goto :goto_0
.end method

.method getCachedRestoreThresholdKb()J
    .locals 2

    .prologue
    .line 727
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    return-wide v0
.end method

.method getKswapdWatermark()J
    .locals 2

    .prologue
    .line 741
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mSmartDHAKswapdWatermark:J

    return-wide v0
.end method

.method getLMKThreshold(I)J
    .locals 2
    .param p1, "adj"    # I

    .prologue
    const/16 v0, 0xf

    .line 733
    if-ge p1, v0, :cond_0

    const/16 v0, 0x9

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxMinfree()J
    .locals 4

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method getMemLevel(I)J
    .locals 5
    .param p1, "adjustment"    # I

    .prologue
    const-wide/16 v3, 0x400

    .line 714
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 715
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_0

    .line 716
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    aget-wide v1, v1, v0

    mul-long/2addr v1, v3

    .line 719
    :goto_1
    return-wide v1

    .line 714
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 719
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-wide v1, v1, v2

    mul-long/2addr v1, v3

    goto :goto_1
.end method

.method getSmartDHADefaultMargin()J
    .locals 2

    .prologue
    .line 737
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mSmartDHADefaultMargin:J

    return-wide v0
.end method

.method public setSmartDHADefaultMargin(J)V
    .locals 0
    .param p1, "margin"    # J

    .prologue
    .line 745
    iput-wide p1, p0, Lcom/android/server/am/ProcessList;->mSmartDHADefaultMargin:J

    .line 746
    return-void
.end method

.method public setTrimCachedApps(I)V
    .locals 0
    .param p1, "lValue"    # I

    .prologue
    .line 908
    sput p1, Lcom/android/server/am/ProcessList;->TRIM_CACHED_APPS:I

    .line 909
    return-void
.end method

.method public setTrimCriticalTH(I)V
    .locals 0
    .param p1, "lValue"    # I

    .prologue
    .line 912
    sput p1, Lcom/android/server/am/ProcessList;->TRIM_CRITICAL_THRESHOLD:I

    .line 913
    return-void
.end method

.method public setTrimEmptyApps(I)V
    .locals 0
    .param p1, "lValue"    # I

    .prologue
    .line 904
    sput p1, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_APPS:I

    .line 905
    return-void
.end method

.method public setTrimLowlTH(I)V
    .locals 0
    .param p1, "lValue"    # I

    .prologue
    .line 916
    sput p1, Lcom/android/server/am/ProcessList;->TRIM_LOW_THRESHOLD:I

    .line 917
    return-void
.end method

.method public updateHiddenAppNum(III)I
    .locals 19
    .param p1, "maxEmptyApp"    # I
    .param p2, "curCached"    # I
    .param p3, "curEmpty"    # I

    .prologue
    .line 774
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    if-lez v13, :cond_0

    .line 775
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/am/ProcessList;->mSzUpdateDHAMaxCount:I

    if-ge v13, v14, :cond_5

    .line 776
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    .line 785
    :cond_0
    :goto_0
    move/from16 v5, p1

    .line 787
    .local v5, "ret":I
    sget-object v13, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    if-eqz v13, :cond_b

    .line 789
    sget-object v13, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v13}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 792
    sget-object v13, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v13}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v11

    .line 793
    .local v11, "szFreeMem":J
    sget-object v13, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v13}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v13

    sget-object v15, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v15}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v15

    add-long v7, v13, v15

    .line 794
    .local v7, "szAvailableMem":J
    const-wide/16 v9, 0x0

    .line 795
    .local v9, "szFragMem":J
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    cmp-long v13, v11, v13

    if-gez v13, :cond_1

    .line 796
    sget-object v13, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v13}, Lcom/android/internal/util/MemInfoReader;->readBuddyInfo()V

    .line 797
    sget-object v13, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v13}, Lcom/android/internal/util/MemInfoReader;->getFragRate()J

    move-result-wide v9

    .line 800
    :cond_1
    move/from16 v4, p1

    .line 801
    .local v4, "maxEmpty":I
    div-int/lit8 v13, v4, 0x2

    sput v13, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 803
    sget v13, Lcom/android/server/am/ProcessList;->mMaxCached:I

    sget v14, Lcom/android/server/am/ProcessList;->MIN_CACHED_APPS:I

    if-ge v13, v14, :cond_2

    .line 804
    sget v13, Lcom/android/server/am/ProcessList;->MIN_CACHED_APPS:I

    sput v13, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 806
    :cond_2
    sget v13, Lcom/android/server/am/ProcessList;->mMaxCached:I

    sget v14, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    if-le v13, v14, :cond_3

    .line 807
    sget v13, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    sput v13, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 810
    :cond_3
    sget-boolean v13, Lcom/android/server/am/ProcessList;->DEBUG:Z

    if-eqz v13, :cond_4

    .line 811
    const-string v13, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AvailableMem = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-wide/16 v15, 0x400

    div-long v15, v7, v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "kB (Free: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v15}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v15

    const-wide/16 v17, 0x400

    div-long v15, v15, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "kB, Cached: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v15}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v15

    const-wide/16 v17, 0x400

    div-long v15, v15, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "kB) "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Threshold = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    const-wide/16 v17, 0x400

    div-long v15, v15, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "kB [MaxHidden: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/android/server/am/ProcessList;->mMaxCached:I

    add-int v15, v15, p1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", Current Hidden"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", Current Empty"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const-string v13, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Frag.Mem = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-wide/16 v15, 0x400

    div-long v15, v9, v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "KB, Avail-Frag.Mem = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-long v15, v7, v9

    const-wide/16 v17, 0x400

    div-long v15, v15, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "KB, Free-Frag.Mem = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-long v15, v11, v9

    const-wide/16 v17, 0x400

    div-long v15, v15, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "KB"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_4
    const-wide/16 v13, 0x0

    cmp-long v13, v11, v13

    if-gtz v13, :cond_8

    move v6, v5

    .line 874
    .end local v4    # "maxEmpty":I
    .end local v5    # "ret":I
    .end local v7    # "szAvailableMem":J
    .end local v9    # "szFragMem":J
    .end local v11    # "szFreeMem":J
    .local v6, "ret":I
    :goto_1
    return v6

    .line 779
    .end local v6    # "ret":I
    :cond_5
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    .line 780
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v13, p1, v13

    sget v14, Lcom/android/server/am/ProcessList;->MID_EMPTY_APPS_FOR_DHA:I

    if-ge v13, v14, :cond_6

    sget v13, Lcom/android/server/am/ProcessList;->MID_EMPTY_APPS_FOR_DHA:I

    :goto_2
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    .line 781
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v13, v14

    sget v14, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    if-ge v13, v14, :cond_7

    sget v13, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    :goto_3
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/am/ProcessList;->mSzMidDHA2nd:I

    goto/16 :goto_0

    .line 780
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v13, p1, v13

    goto :goto_2

    .line 781
    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v13, v14

    goto :goto_3

    .line 821
    .restart local v4    # "maxEmpty":I
    .restart local v5    # "ret":I
    .restart local v7    # "szAvailableMem":J
    .restart local v9    # "szFragMem":J
    .restart local v11    # "szFreeMem":J
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    .line 823
    .local v3, "mFinalDHAThresholdRate":F
    sget-boolean v13, Lcom/android/server/am/ProcessList;->mSzILSFlag:Z

    if-eqz v13, :cond_9

    .line 824
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    # getter for: Lcom/android/server/am/ProcessList$ILS_Q;->DHA_TH_HARD_RATE:F
    invoke-static {}, Lcom/android/server/am/ProcessList$ILS_Q;->access$000()F

    move-result v14

    mul-float v3, v13, v14

    .line 828
    :cond_9
    sub-long v13, v7, v9

    long-to-float v13, v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    long-to-float v14, v14

    mul-float/2addr v14, v3

    cmpg-float v13, v13, v14

    if-ltz v13, :cond_a

    sub-long v13, v11, v9

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    cmp-long v13, v13, v15

    if-gez v13, :cond_c

    :cond_a
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    if-gt v5, v13, :cond_c

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/ProcessList;->mSzMidDHA2nd:I

    if-le v5, v13, :cond_c

    .line 830
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessList;->decrementEmptyAppCount(II)I

    move-result v5

    .line 831
    sget-boolean v13, Lcom/android/server/am/ProcessList;->DEBUG:Z

    if-eqz v13, :cond_b

    .line 832
    const-string v13, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Decrease Hidden App1 Number from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "mFinalDHAThresholdRate":F
    .end local v4    # "maxEmpty":I
    .end local v7    # "szAvailableMem":J
    .end local v9    # "szFragMem":J
    .end local v11    # "szFreeMem":J
    :cond_b
    :goto_4
    move v6, v5

    .line 874
    .end local v5    # "ret":I
    .restart local v6    # "ret":I
    goto/16 :goto_1

    .line 836
    .end local v6    # "ret":I
    .restart local v3    # "mFinalDHAThresholdRate":F
    .restart local v4    # "maxEmpty":I
    .restart local v5    # "ret":I
    .restart local v7    # "szAvailableMem":J
    .restart local v9    # "szFragMem":J
    .restart local v11    # "szFreeMem":J
    :cond_c
    sub-long v13, v7, v9

    long-to-float v13, v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    long-to-float v14, v14

    mul-float/2addr v14, v3

    cmpg-float v13, v13, v14

    if-ltz v13, :cond_d

    sub-long v13, v11, v9

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    cmp-long v13, v13, v15

    if-gez v13, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    if-le v5, v13, :cond_e

    .line 838
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessList;->decrementEmptyAppCount(II)I

    move-result v5

    .line 839
    sget-boolean v13, Lcom/android/server/am/ProcessList;->DEBUG:Z

    if-eqz v13, :cond_b

    .line 840
    const-string v13, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Decrease Hidden App2 Number from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 845
    :cond_e
    sub-long v13, v7, v9

    long-to-float v13, v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    long-to-float v14, v14

    mul-float/2addr v14, v3

    sget-wide v15, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    long-to-float v15, v15

    add-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-lez v13, :cond_12

    sub-long v13, v11, v9

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    cmp-long v13, v13, v15

    if-lez v13, :cond_12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    if-ge v5, v13, :cond_12

    move/from16 v0, p3

    if-lt v0, v4, :cond_12

    .line 848
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    add-int/2addr v5, v13

    .line 849
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    .line 850
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    if-gt v13, v5, :cond_f

    .line 851
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v13, v5, v13

    sget v14, Lcom/android/server/am/ProcessList;->MID_EMPTY_APPS_FOR_DHA:I

    if-ge v13, v14, :cond_10

    sget v13, Lcom/android/server/am/ProcessList;->MID_EMPTY_APPS_FOR_DHA:I

    :goto_5
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    .line 852
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v13, v14

    sget v14, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    if-ge v13, v14, :cond_11

    sget v13, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    :goto_6
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/am/ProcessList;->mSzMidDHA2nd:I

    .line 854
    :cond_f
    sget-boolean v13, Lcom/android/server/am/ProcessList;->DEBUG:Z

    if-eqz v13, :cond_b

    .line 855
    const-string v13, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Increase Hidden App1 Number from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 851
    :cond_10
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v13, v5, v13

    goto :goto_5

    .line 852
    :cond_11
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v13, v14

    goto :goto_6

    .line 859
    :cond_12
    sub-long v13, v7, v9

    long-to-float v13, v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    long-to-float v14, v14

    mul-float/2addr v14, v3

    sget-wide v15, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    long-to-float v15, v15

    add-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-lez v13, :cond_b

    sub-long v13, v11, v9

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    cmp-long v13, v13, v15

    if-lez v13, :cond_b

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    if-lt v5, v13, :cond_b

    sget v13, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    if-ge v5, v13, :cond_b

    move/from16 v0, p3

    if-lt v0, v4, :cond_b

    .line 862
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    add-int/2addr v5, v13

    .line 863
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    .line 864
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    if-gt v13, v5, :cond_13

    .line 865
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v13, v5, v13

    sget v14, Lcom/android/server/am/ProcessList;->MID_EMPTY_APPS_FOR_DHA:I

    if-ge v13, v14, :cond_14

    sget v13, Lcom/android/server/am/ProcessList;->MID_EMPTY_APPS_FOR_DHA:I

    :goto_7
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    .line 866
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v13, v14

    sget v14, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    if-ge v13, v14, :cond_15

    sget v13, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    :goto_8
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/am/ProcessList;->mSzMidDHA2nd:I

    .line 868
    :cond_13
    sget-boolean v13, Lcom/android/server/am/ProcessList;->DEBUG:Z

    if-eqz v13, :cond_b

    .line 869
    const-string v13, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Increase Hidden App2 Number from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 865
    :cond_14
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v13, v5, v13

    goto :goto_7

    .line 866
    :cond_15
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v13, v14

    goto :goto_8
.end method
