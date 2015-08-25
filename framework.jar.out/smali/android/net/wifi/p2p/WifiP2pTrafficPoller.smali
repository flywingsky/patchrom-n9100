.class final Landroid/net/wifi/p2p/WifiP2pTrafficPoller;
.super Ljava/lang/Object;
.source "WifiP2pTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;,
        Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;
    }
.end annotation


# static fields
.field static final BOOSTER_BTCOEX_FLAG:I = 0x2

.field private static final DBG:Z

.field private static final DBG_BOOSTER:Z = false

.field private static final ENABLE_TRAFFIC_STATS_POLL:I = 0x1

.field private static final POLL_TRAFFIC_STATS_INTERVAL_MSECS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "WifiP2pTrafficPoller"

.field private static final THRESHOLD_FILE:Ljava/lang/String; = "/data/misc/wifi/.threshold"

.field private static final TRAFFIC_STATS_POLL:I = 0x2

.field static mBoosterFLAG:I

.field private static mCurrentMode:Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCpuBooster:Landroid/os/DVFSHelper;

.field private mCpuCoreBooster:Landroid/os/DVFSHelper;

.field private mCpuFreqindex:[I

.field private mEnableTrafficStatsPoll:Z

.field private final mInterface:Ljava/lang/String;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mRxBytes:J

.field private mRxPkts:J

.field private mThresholdKbytes:[J

.field private final mTrafficHandler:Landroid/net/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;

.field private mTrafficStatsPollToken:I

.field private mTxBytes:J

.field private mTxPkts:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    .line 77
    sput v1, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mBoosterFLAG:I

    .line 90
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->FullMode:Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCurrentMode:Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x6

    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean v10, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mEnableTrafficStatsPoll:Z

    .line 66
    iput v10, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mTrafficStatsPollToken:I

    .line 70
    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 71
    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    .line 75
    new-array v0, v2, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    .line 82
    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mContext:Landroid/content/Context;

    .line 84
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCpuFreqindex:[I

    .line 93
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mInterface:Ljava/lang/String;

    .line 95
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;-><init>(Landroid/net/wifi/p2p/WifiP2pTrafficPoller;Landroid/net/wifi/p2p/WifiP2pTrafficPoller$1;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mTrafficHandler:Landroid/net/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;

    .line 97
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pTrafficPoller$1;

    invoke-direct {v1, p0}, Landroid/net/wifi/p2p/WifiP2pTrafficPoller$1;-><init>(Landroid/net/wifi/p2p/WifiP2pTrafficPoller;)V

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mContext:Landroid/content/Context;

    const-string v2, "WIFI_P2P"

    const/16 v3, 0xc

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 139
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v9

    .line 141
    .local v9, "supportedCPUFreqTable":[I
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->setCpuFreqIndex()V

    .line 142
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCpuFreqindex:[I

    sget-object v1, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCurrentMode:Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->ordinal()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x0

    aget v7, v0, v1

    .line 147
    .local v7, "mCpuFreqIndex_0":I
    if-eqz v9, :cond_0

    .line 148
    const-string v0, "WifiP2pTrafficPoller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportedCPUFreqTable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v9, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget v3, v9, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "WIFI_P2P"

    const/16 v3, 0xe

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    .line 156
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v8

    .line 157
    .local v8, "supportedCPUCoreTable":[I
    if-eqz v8, :cond_2

    .line 158
    sget-boolean v0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiP2pTrafficPoller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportedCPUCoreTable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v8, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    aget v2, v8, v10

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 162
    :cond_2
    return-void

    .line 75
    nop

    :array_0
    .array-data 8
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 84
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$100(Landroid/net/wifi/p2p/WifiP2pTrafficPoller;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pTrafficPoller;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$102(Landroid/net/wifi/p2p/WifiP2pTrafficPoller;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pTrafficPoller;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 52
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$202(Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;)Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    .prologue
    .line 52
    sput-object p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCurrentMode:Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    return-object p0
.end method

.method static synthetic access$300(Landroid/net/wifi/p2p/WifiP2pTrafficPoller;)Landroid/net/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pTrafficPoller;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mTrafficHandler:Landroid/net/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/wifi/p2p/WifiP2pTrafficPoller;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pTrafficPoller;

    .prologue
    .line 52
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mEnableTrafficStatsPoll:Z

    return v0
.end method

.method static synthetic access$402(Landroid/net/wifi/p2p/WifiP2pTrafficPoller;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pTrafficPoller;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mEnableTrafficStatsPoll:Z

    return p1
.end method

.method static synthetic access$500(Landroid/net/wifi/p2p/WifiP2pTrafficPoller;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pTrafficPoller;

    .prologue
    .line 52
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$508(Landroid/net/wifi/p2p/WifiP2pTrafficPoller;)I
    .locals 2
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pTrafficPoller;

    .prologue
    .line 52
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mTrafficStatsPollToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mTrafficStatsPollToken:I

    return v0
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnableTrafficStatsPoll "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mEnableTrafficStatsPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTrafficStatsPollToken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mTrafficStatsPollToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTxPkts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mTxPkts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRxPkts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mRxPkts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public notifyOnDataActivity()V
    .locals 25

    .prologue
    .line 192
    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mTxPkts:J

    .local v12, "preTxPkts":J
    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mRxPkts:J

    .line 195
    .local v8, "preRxPkts":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mInterface:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mTxPkts:J

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mInterface:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mRxPkts:J

    .line 198
    const-wide/16 v21, 0x0

    cmp-long v21, v12, v21

    if-gtz v21, :cond_0

    const-wide/16 v21, 0x0

    cmp-long v21, v8, v21

    if-lez v21, :cond_3

    .line 201
    :cond_0
    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mTxBytes:J

    .local v10, "preTxBytes":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mRxBytes:J

    .line 203
    .local v6, "preRxBytes":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mInterface:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mTxBytes:J

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mInterface:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mRxBytes:J

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    move-object/from16 v21, v0

    sget-object v22, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCurrentMode:Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->ordinal()I

    move-result v22

    mul-int/lit8 v22, v22, 0x2

    add-int/lit8 v22, v22, 0x0

    aget-wide v21, v21, v22

    const-wide/16 v23, 0x400

    mul-long v15, v21, v23

    .line 212
    .local v15, "threshold_0":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    move-object/from16 v21, v0

    sget-object v22, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCurrentMode:Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->ordinal()I

    move-result v22

    mul-int/lit8 v22, v22, 0x2

    add-int/lit8 v22, v22, 0x1

    aget-wide v21, v21, v22

    const-wide/16 v23, 0x400

    mul-long v17, v21, v23

    .line 213
    .local v17, "threshold_1":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    move-object/from16 v21, v0

    sget-object v22, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCurrentMode:Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->ordinal()I

    move-result v22

    mul-int/lit8 v22, v22, 0x2

    add-int/lit8 v22, v22, 0x2

    aget-wide v21, v21, v22

    const-wide/16 v23, 0x400

    mul-long v19, v21, v23

    .line 214
    .local v19, "threshold_2":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v14

    .line 217
    .local v14, "supportedCPUFreqTable":[I
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->setCpuFreqIndex()V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCpuFreqindex:[I

    move-object/from16 v21, v0

    sget-object v22, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCurrentMode:Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->ordinal()I

    move-result v22

    mul-int/lit8 v22, v22, 0x2

    add-int/lit8 v22, v22, 0x0

    aget v3, v21, v22

    .line 219
    .local v3, "mCpuFreqIndex_0":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCpuFreqindex:[I

    move-object/from16 v21, v0

    sget-object v22, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCurrentMode:Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->ordinal()I

    move-result v22

    mul-int/lit8 v22, v22, 0x2

    add-int/lit8 v22, v22, 0x1

    aget v4, v21, v22

    .line 220
    .local v4, "mCpuFreqIndex_1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCpuFreqindex:[I

    move-object/from16 v21, v0

    sget-object v22, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCurrentMode:Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->ordinal()I

    move-result v22

    mul-int/lit8 v22, v22, 0x2

    add-int/lit8 v22, v22, 0x2

    aget v5, v21, v22

    .line 222
    .local v5, "mCpuFreqIndex_2":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mTxBytes:J

    move-wide/from16 v21, v0

    sub-long v21, v21, v10

    cmp-long v21, v21, v15

    if-gtz v21, :cond_1

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mRxBytes:J

    move-wide/from16 v21, v0

    sub-long v21, v21, v6

    cmp-long v21, v21, v15

    if-lez v21, :cond_4

    .line 227
    :cond_1
    if-eqz v14, :cond_2

    .line 228
    const-string v21, "WifiP2pTrafficPoller"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Dynamic booster is mCpuFreqIndex_0. mCpuFreqIndex_0 is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v21, v0

    const-string v22, "CPU"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    aget v24, v14, v3

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v21, v0

    const/16 v22, 0x7d0

    invoke-virtual/range {v21 .. v22}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 241
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 242
    const-string v21, "WifiP2pTrafficPoller"

    const-string v22, "mCpuCoreBooster Lock"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    move-object/from16 v21, v0

    const/16 v22, 0x7d0

    invoke-virtual/range {v21 .. v22}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 296
    .end local v3    # "mCpuFreqIndex_0":I
    .end local v4    # "mCpuFreqIndex_1":I
    .end local v5    # "mCpuFreqIndex_2":I
    .end local v6    # "preRxBytes":J
    .end local v10    # "preTxBytes":J
    .end local v14    # "supportedCPUFreqTable":[I
    .end local v15    # "threshold_0":J
    .end local v17    # "threshold_1":J
    .end local v19    # "threshold_2":J
    :cond_3
    :goto_0
    return-void

    .line 246
    .restart local v3    # "mCpuFreqIndex_0":I
    .restart local v4    # "mCpuFreqIndex_1":I
    .restart local v5    # "mCpuFreqIndex_2":I
    .restart local v6    # "preRxBytes":J
    .restart local v10    # "preTxBytes":J
    .restart local v14    # "supportedCPUFreqTable":[I
    .restart local v15    # "threshold_0":J
    .restart local v17    # "threshold_1":J
    .restart local v19    # "threshold_2":J
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mTxBytes:J

    move-wide/from16 v21, v0

    sub-long v21, v21, v10

    cmp-long v21, v21, v17

    if-gtz v21, :cond_5

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mRxBytes:J

    move-wide/from16 v21, v0

    sub-long v21, v21, v6

    cmp-long v21, v21, v17

    if-lez v21, :cond_6

    .line 251
    :cond_5
    if-eqz v14, :cond_3

    .line 252
    const-string v21, "WifiP2pTrafficPoller"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Dynamic booster is mCpuFreqIndex_1. mCpuFreqIndex_1 is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v21, v0

    const-string v22, "CPU"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    aget v24, v14, v4

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v21, v0

    const/16 v22, 0x7d0

    invoke-virtual/range {v21 .. v22}, Landroid/os/DVFSHelper;->acquire(I)V

    goto :goto_0

    .line 262
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mTxBytes:J

    move-wide/from16 v21, v0

    sub-long v21, v21, v10

    cmp-long v21, v21, v19

    if-gtz v21, :cond_7

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mRxBytes:J

    move-wide/from16 v21, v0

    sub-long v21, v21, v6

    cmp-long v21, v21, v19

    if-lez v21, :cond_3

    .line 267
    :cond_7
    if-eqz v14, :cond_3

    .line 268
    const-string v21, "WifiP2pTrafficPoller"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Dynamic booster is mCpuFreqIndex_2. mCpuFreqIndex_2 is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v21, v0

    const-string v22, "CPU"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    aget v24, v14, v5

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v21, v0

    const/16 v22, 0x7d0

    invoke-virtual/range {v21 .. v22}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_0
.end method

.method public setCpuFreqIndex()V
    .locals 5

    .prologue
    .line 412
    const-string v0, "0,1,5,2,3,8,2,3,8"

    .line 413
    .local v0, "dbCpuFreq":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 415
    .local v2, "values":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    .line 416
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCpuFreqindex:[I

    aget v3, v3, v1

    if-gez v3, :cond_0

    .line 417
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCpuFreqindex:[I

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v1

    .line 415
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 420
    :cond_1
    const/4 v1, 0x3

    :goto_1
    const/4 v3, 0x6

    if-ge v1, v3, :cond_3

    .line 421
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCpuFreqindex:[I

    aget v3, v3, v1

    if-gez v3, :cond_2

    .line 422
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCpuFreqindex:[I

    add-int/lit8 v4, v1, 0x3

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v1

    .line 420
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 425
    :cond_3
    return-void
.end method

.method public setDynamicThresholdValues()V
    .locals 13

    .prologue
    .line 348
    const/4 v0, 0x0

    .line 350
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    const-string v9, "/data/misc/wifi/.threshold"

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, "brRead":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 353
    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 355
    .local v7, "values":[Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 356
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v8, 0x3

    if-ge v5, v8, :cond_1

    .line 357
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    aget-wide v8, v8, v5

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 358
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    aget-object v9, v7, v5

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    aput-wide v9, v8, v5

    .line 356
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 362
    :cond_1
    const/4 v5, 0x3

    :goto_1
    const/4 v8, 0x6

    if-ge v5, v8, :cond_3

    .line 363
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    aget-wide v8, v8, v5

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    .line 364
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    add-int/lit8 v9, v5, 0x3

    aget-object v9, v7, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    aput-wide v9, v8, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 362
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 386
    .end local v5    # "i":I
    .end local v7    # "values":[Ljava/lang/String;
    :cond_3
    sget-boolean v8, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v8, :cond_4

    .line 387
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[FullMode_0] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[FullMode_1] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[FullMode_2] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x2

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[BTcoex_0] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x3

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[BTcoex_1] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x4

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[BTcoex_2] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x5

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_4
    if-eqz v1, :cond_5

    .line 402
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_5
    :goto_2
    move-object v0, v1

    .line 408
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "brRead":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_6
    :goto_3
    return-void

    .line 370
    :catch_0
    move-exception v6

    .line 371
    .local v6, "ignore":Ljava/lang/Exception;
    :goto_4
    :try_start_3
    sget-boolean v8, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v8, :cond_7

    .line 372
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception name : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_7
    const-string v3, "10240,5120,1280,10240,5120,1280,10240,5120,1280"

    .line 374
    .local v3, "dbThreshold":Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 375
    .restart local v7    # "values":[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_5
    const/4 v8, 0x3

    if-ge v5, v8, :cond_9

    .line 376
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    aget-wide v8, v8, v5

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_8

    .line 377
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    aget-object v9, v7, v5

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    aput-wide v9, v8, v5

    .line 375
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 380
    :cond_9
    const/4 v5, 0x3

    :goto_6
    const/4 v8, 0x6

    if-ge v5, v8, :cond_d

    .line 381
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    aget-wide v8, v8, v5

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_a

    .line 382
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    add-int/lit8 v9, v5, 0x3

    aget-object v9, v7, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    aput-wide v9, v8, v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 380
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 386
    .end local v3    # "dbThreshold":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "ignore":Ljava/lang/Exception;
    .end local v7    # "values":[Ljava/lang/String;
    :catchall_0
    move-exception v8

    :goto_7
    sget-boolean v9, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v9, :cond_b

    .line 387
    const-string v9, "WifiP2pTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[FullMode_0] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v12, 0x0

    aget-wide v11, v11, v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string v9, "WifiP2pTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[FullMode_1] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v12, 0x1

    aget-wide v11, v11, v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v9, "WifiP2pTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[FullMode_2] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v12, 0x2

    aget-wide v11, v11, v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string v9, "WifiP2pTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[BTcoex_0] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v12, 0x3

    aget-wide v11, v11, v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string v9, "WifiP2pTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[BTcoex_1] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v12, 0x4

    aget-wide v11, v11, v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const-string v9, "WifiP2pTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[BTcoex_2] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v12, 0x5

    aget-wide v11, v11, v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_b
    if-eqz v0, :cond_c

    .line 402
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 386
    :cond_c
    :goto_8
    throw v8

    .line 403
    :catch_1
    move-exception v4

    .line 404
    .local v4, "e":Ljava/io/IOException;
    const-string v9, "WifiP2pTrafficPoller"

    const-string v10, "Failed to close .threshold file"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 386
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v3    # "dbThreshold":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v6    # "ignore":Ljava/lang/Exception;
    .restart local v7    # "values":[Ljava/lang/String;
    :cond_d
    sget-boolean v8, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v8, :cond_e

    .line 387
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[FullMode_0] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[FullMode_1] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[FullMode_2] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x2

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[BTcoex_0] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x3

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[BTcoex_1] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x4

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[BTcoex_2] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x5

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_e
    if-eqz v0, :cond_6

    .line 402
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_3

    .line 403
    :catch_2
    move-exception v4

    .line 404
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v8, "WifiP2pTrafficPoller"

    const-string v9, "Failed to close .threshold file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 403
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "dbThreshold":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "i":I
    .end local v6    # "ignore":Ljava/lang/Exception;
    .end local v7    # "values":[Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "brRead":Ljava/lang/String;
    :catch_3
    move-exception v4

    .line 404
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v8, "WifiP2pTrafficPoller"

    const-string v9, "Failed to close .threshold file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 386
    .end local v2    # "brRead":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_7

    .line 370
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_4
.end method

.method public setThresholdValues()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 307
    const/4 v0, 0x0

    .line 309
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/data/misc/wifi/.threshold"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, "brRead":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 312
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 314
    .local v5, "values":[Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 315
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 316
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x1

    const/4 v8, 0x2

    aget-object v8, v5, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v6, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 331
    .end local v5    # "values":[Ljava/lang/String;
    :cond_0
    sget-boolean v6, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v6, :cond_1

    .line 332
    const-string v6, "WifiP2pTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Threshold[FullMode] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    aget-wide v8, v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " KB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v6, "WifiP2pTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Threshold[BTcoex] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    aget-wide v8, v8, v11

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " KB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_1
    if-eqz v1, :cond_2

    .line 338
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_0
    move-object v0, v1

    .line 344
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "brRead":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_3
    :goto_1
    return-void

    .line 319
    :catch_0
    move-exception v4

    .line 320
    .local v4, "ignore":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    sget-boolean v6, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v6, :cond_4

    .line 321
    const-string v6, "WifiP2pTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_4
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    cmp-long v6, v6, v12

    if-gez v6, :cond_5

    .line 323
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x0

    const-string v8, "1280"

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 326
    :cond_5
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    cmp-long v6, v6, v12

    if-gez v6, :cond_6

    .line 327
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x1

    const-string v8, "1280"

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v6, v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 331
    :cond_6
    sget-boolean v6, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v6, :cond_7

    .line 332
    const-string v6, "WifiP2pTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Threshold[FullMode] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    aget-wide v8, v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " KB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v6, "WifiP2pTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Threshold[BTcoex] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    aget-wide v8, v8, v11

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " KB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_7
    if-eqz v0, :cond_3

    .line 338
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 339
    :catch_1
    move-exception v3

    .line 340
    .local v3, "e":Ljava/io/IOException;
    const-string v6, "WifiP2pTrafficPoller"

    const-string v7, "Failed to close .threshold file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 331
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "ignore":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    sget-boolean v7, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v7, :cond_8

    .line 332
    const-string v7, "WifiP2pTrafficPoller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Threshold[FullMode] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    aget-wide v9, v9, v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v7, "WifiP2pTrafficPoller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Threshold[BTcoex] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    aget-wide v9, v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_8
    if-eqz v0, :cond_9

    .line 338
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 331
    :cond_9
    :goto_4
    throw v6

    .line 339
    :catch_2
    move-exception v3

    .line 340
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v7, "WifiP2pTrafficPoller"

    const-string v8, "Failed to close .threshold file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 339
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "brRead":Ljava/lang/String;
    :catch_3
    move-exception v3

    .line 340
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v6, "WifiP2pTrafficPoller"

    const-string v7, "Failed to close .threshold file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 331
    .end local v2    # "brRead":Ljava/lang/String;
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 319
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method
