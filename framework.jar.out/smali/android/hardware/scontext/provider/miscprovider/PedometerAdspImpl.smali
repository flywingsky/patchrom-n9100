.class Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;
.super Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;
.source "PedometerAdspImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;
    }
.end annotation


# static fields
.field private static final LOGGING_MAX_TIME:J = 0x124f80L

.field private static final TAG:Ljava/lang/String; = "SContext.MiscProvider.PedometerAdspImpl"

.field private static TYPE_PEDOMETER_LOGGING:I

.field private static TYPE_PEDOMETER_NORMAL:I


# instance fields
.field private mFlushEnabled:Z

.field private final mIsBarometerAvailable:Z

.field private final mListener:Landroid/hardware/scontext/provider/EventListener;

.field private mLoggingPedometer:Landroid/hardware/Sensor;

.field private mNormalPedometer:Landroid/hardware/Sensor;

.field private mPedometerEngine:Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

.field private mPrevStepCnt:J

.field private final mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mTimeStamp:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const v0, 0x10020

    sput v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->TYPE_PEDOMETER_NORMAL:I

    .line 26
    const v0, 0x10021

    sput v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->TYPE_PEDOMETER_LOGGING:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/hardware/scontext/provider/EventListener;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;-><init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V

    .line 42
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mPedometerEngine:Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

    .line 48
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mFlushEnabled:Z

    .line 50
    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    iput-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    .line 54
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mPrevStepCnt:J

    .line 56
    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;->UNKNOWN:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    iput-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    .line 395
    new-instance v1, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$1;

    invoke-direct {v1, p0}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$1;-><init>(Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;)V

    iput-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 60
    iput-object p2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    .line 61
    const-string v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    .line 62
    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    sget v2, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->TYPE_PEDOMETER_LOGGING:I

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mLoggingPedometer:Landroid/hardware/Sensor;

    .line 63
    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    sget v2, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->TYPE_PEDOMETER_NORMAL:I

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mNormalPedometer:Landroid/hardware/Sensor;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 65
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.sensor.barometer"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mIsBarometerAvailable:Z

    .line 66
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 67
    new-instance v1, Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

    invoke-direct {v1}, Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;-><init>()V

    iput-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mPedometerEngine:Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

    .line 68
    return-void

    .line 50
    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;
    .param p1, "x1"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->parseEvent(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method private bytesToLong([B)J
    .locals 3
    .param p1, "bytes"    # [B

    .prologue
    .line 389
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 390
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 391
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 392
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    return-wide v1
.end method

.method private convertFloatToByteArray(FI)[B
    .locals 4
    .param p1, "value"    # F
    .param p2, "size"    # I

    .prologue
    .line 378
    new-array v0, p2, [B

    .line 379
    .local v0, "array":[B
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 380
    .local v1, "bits":I
    add-int/lit8 v2, p2, -0x4

    shr-int/lit8 v3, v1, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 381
    add-int/lit8 v2, p2, -0x3

    shr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 382
    add-int/lit8 v2, p2, -0x2

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 383
    add-int/lit8 v2, p2, -0x1

    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 385
    return-object v0
.end method

.method private getCalcultatedData(I[J[JIJ[J)Landroid/os/Bundle;
    .locals 35
    .param p1, "mode"    # I
    .param p2, "walkCadence"    # [J
    .param p3, "runCadence"    # [J
    .param p4, "dataSize"    # I
    .param p5, "interval"    # J
    .param p7, "timeStampArray"    # [J

    .prologue
    .line 143
    new-instance v23, Landroid/os/Bundle;

    invoke-direct/range {v23 .. v23}, Landroid/os/Bundle;-><init>()V

    .line 145
    .local v23, "context":Landroid/os/Bundle;
    move/from16 v0, p4

    new-array v12, v0, [J

    .line 146
    .local v12, "totalStepCountArray":[J
    move/from16 v0, p4

    new-array v10, v0, [J

    .line 147
    .local v10, "walkFlatStepCountArray":[J
    move/from16 v0, p4

    new-array v0, v0, [J

    move-object/from16 v33, v0

    .line 148
    .local v33, "walkUpStepCountArray":[J
    move/from16 v0, p4

    new-array v0, v0, [J

    move-object/from16 v31, v0

    .line 149
    .local v31, "walkDownStepCountArray":[J
    move/from16 v0, p4

    new-array v11, v0, [J

    .line 150
    .local v11, "runFlatStepCountArray":[J
    move/from16 v0, p4

    new-array v0, v0, [J

    move-object/from16 v27, v0

    .line 151
    .local v27, "runUpStepCountArray":[J
    move/from16 v0, p4

    new-array v0, v0, [J

    move-object/from16 v25, v0

    .line 152
    .local v25, "runDownStepCountArray":[J
    move/from16 v0, p4

    new-array v13, v0, [D

    .line 153
    .local v13, "calorieArray":[D
    move/from16 v0, p4

    new-array v14, v0, [D

    .line 154
    .local v14, "distanceArray":[D
    move/from16 v0, p4

    new-array v15, v0, [D

    .line 155
    .local v15, "speedArray":[D
    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v18, v0

    .line 156
    .local v18, "totalStepCountTemp":[J
    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v16, v0

    .line 157
    .local v16, "walkFlatStepCountTemp":[J
    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v34, v0

    .line 158
    .local v34, "walkUpStepCountTemp":[J
    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v32, v0

    .line 159
    .local v32, "walkDownStepCountTemp":[J
    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v17, v0

    .line 160
    .local v17, "runFlatStepCountTemp":[J
    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v28, v0

    .line 161
    .local v28, "runUpStepCountTemp":[J
    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v26, v0

    .line 162
    .local v26, "runDownStepCountTemp":[J
    const/4 v3, 0x1

    new-array v0, v3, [D

    move-object/from16 v19, v0

    .line 163
    .local v19, "calorieTemp":[D
    const/4 v3, 0x1

    new-array v0, v3, [D

    move-object/from16 v20, v0

    .line 164
    .local v20, "distanceTemp":[D
    const/4 v3, 0x1

    new-array v0, v3, [D

    move-object/from16 v22, v0

    .line 165
    .local v22, "walkingFrequencyTemp":[D
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v21, v0

    .line 167
    .local v21, "statusTemp":[I
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 168
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v21, v3

    .line 179
    :cond_1
    :goto_0
    const-string v3, "Mode"

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    const-string v3, "StepStatus"

    const/4 v4, 0x0

    aget v4, v21, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 181
    const-string v3, "CalorieDiff"

    const/4 v4, 0x0

    aget-wide v4, v19, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 182
    const-string v3, "DistanceDiff"

    const/4 v4, 0x0

    aget-wide v4, v20, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 183
    const-string v3, "Speed"

    const/4 v4, 0x0

    aget-wide v4, v15, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 184
    const-string v3, "WalkingFrequency"

    const/4 v4, 0x0

    aget-wide v4, v22, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 185
    const-string v3, "TotalStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v18, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 186
    const-string v3, "WalkStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v16, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 187
    const-string v3, "WalkUpStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v34, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 188
    const-string v3, "WalkDownStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v32, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 189
    const-string v3, "RunStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v17, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 190
    const-string v3, "RunUpStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v28, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 191
    const-string v3, "RunDownStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v26, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 192
    const-string v3, "UpDownStepCountDiff"

    const/4 v4, 0x0

    aget-wide v4, v34, v4

    const/4 v6, 0x0

    aget-wide v6, v32, v6

    add-long/2addr v4, v6

    const/4 v6, 0x0

    aget-wide v6, v28, v6

    add-long/2addr v4, v6

    const/4 v6, 0x0

    aget-wide v6, v26, v6

    add-long/2addr v4, v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 194
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_5

    .line 195
    const-string v3, "LoggingCount"

    move-object/from16 v0, v23

    move/from16 v1, p4

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 196
    const-string v3, "TimeStampArray"

    move-object/from16 v0, v23

    move-object/from16 v1, p7

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 197
    const-string v3, "CalorieDiffArray"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v13}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 198
    const-string v3, "DistanceDiffArray"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v14}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 199
    const-string v3, "SpeedArray"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v15}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 200
    const-string v3, "TotalStepCountDiffArray"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v12}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 201
    const-string v3, "WalkStepCountDiffArray"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 202
    const-string v3, "WalkUpStepCountDiffArray"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 203
    const-string v3, "WalkDownStepCountDiffArray"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 204
    const-string v3, "RunStepCountDiffArray"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v11}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 205
    const-string v3, "RunUpStepCountDiffArray"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 206
    const-string v3, "RunDownStepCountDiffArray"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 207
    const-string v3, "StepStatus"

    const/4 v4, -0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    const-wide/16 v29, 0x0

    .line 209
    .local v29, "speed":D
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_1
    move/from16 v0, v24

    move/from16 v1, p4

    if-ge v0, v1, :cond_3

    .line 210
    aget-wide v3, v15, v24

    add-double v29, v29, v3

    .line 209
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 170
    .end local v24    # "i":I
    .end local v29    # "speed":D
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mIsBarometerAvailable:Z

    if-nez v3, :cond_1

    .line 171
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mPedometerEngine:Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    invoke-virtual/range {v3 .. v22}, Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;->native_Pedometer_getCalculate_data(I[J[JIJ[J[J[J[D[D[D[J[J[J[D[D[I[D)V

    goto/16 :goto_0

    .line 212
    .restart local v24    # "i":I
    .restart local v29    # "speed":D
    :cond_3
    if-lez p4, :cond_4

    .line 213
    move/from16 v0, p4

    int-to-double v3, v0

    div-double v29, v29, v3

    .line 215
    :cond_4
    const-string v3, "Speed"

    move-object/from16 v0, v23

    move-wide/from16 v1, v29

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 217
    .end local v24    # "i":I
    .end local v29    # "speed":D
    :cond_5
    return-object v23
.end method

.method private parseEvent(Landroid/hardware/SensorEvent;)V
    .locals 37
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 221
    if-nez p1, :cond_0

    .line 375
    :goto_0
    return-void

    .line 224
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    const/16 v33, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    aput-wide v34, v3, v33

    .line 225
    const-string v3, "SContext.MiscProvider.PedometerAdspImpl"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "parseEvent() : event type = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/hardware/Sensor;->getType()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", mTimeStamp[0] = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aget-wide v34, v34, v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", mTimeStamp[1] = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    move-object/from16 v34, v0

    const/16 v35, 0x1

    aget-wide v34, v34, v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v5, 0x0

    .line 229
    .local v5, "walkStepCount":[J
    const/4 v6, 0x0

    .line 230
    .local v6, "runStepCount":[J
    const/4 v10, 0x0

    .line 231
    .local v10, "timeStamp":[J
    const-wide/16 v8, 0x0

    .line 232
    .local v8, "interval":J
    const/4 v7, 0x0

    .line 233
    .local v7, "dataSize":I
    const/4 v4, 0x0

    .line 234
    .local v4, "mode":I
    sget-object v22, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;->UNKNOWN:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    .line 236
    .local v22, "interruptMode":Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    sget v33, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->TYPE_PEDOMETER_NORMAL:I

    move/from16 v0, v33

    if-ne v3, v0, :cond_7

    .line 237
    const/4 v4, 0x0

    .line 238
    const/4 v7, 0x1

    .line 239
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v33, 0x0

    aget v3, v3, v33

    float-to-int v0, v3

    move/from16 v27, v0

    .line 240
    .local v27, "status":I
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v33, 0x1

    aget v3, v3, v33

    float-to-int v0, v3

    move/from16 v28, v0

    .line 241
    .local v28, "step_cnt":I
    const-string v3, "SContext.MiscProvider.PedometerAdspImpl"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "parseEvent() : status = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", stepCnt : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    sparse-switch v27, :sswitch_data_0

    .line 253
    :goto_1
    const/16 v3, 0x8

    move/from16 v0, v27

    if-eq v0, v3, :cond_1

    .line 254
    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v33, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mPrevStepCnt:J

    move-wide/from16 v35, v0

    sub-long v14, v33, v35

    .line 255
    .local v14, "diffStepCnt":J
    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v33, v0

    move-wide/from16 v0, v33

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mPrevStepCnt:J

    .line 256
    const-string v3, "SContext.MiscProvider.PedometerAdspImpl"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "parseEvent() : diffStepCnt = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-array v5, v7, [J

    .line 258
    new-array v6, v7, [J

    .line 260
    const/4 v3, 0x6

    move/from16 v0, v27

    if-ne v0, v3, :cond_3

    const-wide/16 v33, 0x6

    cmp-long v3, v14, v33

    if-nez v3, :cond_3

    .line 261
    const-wide/16 v8, 0x0

    .line 367
    .end local v14    # "diffStepCnt":J
    .end local v27    # "status":I
    .end local v28    # "step_cnt":I
    :cond_1
    :goto_2
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    .line 368
    if-lez v7, :cond_2

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    move-object/from16 v33, v0

    const/16 v34, 0x2

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->getCalcultatedData(I[J[JIJ[J)Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-interface {v0, v1, v3}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    .line 374
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    move-object/from16 v34, v0

    const/16 v35, 0x1

    aget-wide v34, v34, v35

    aput-wide v34, v3, v33

    goto/16 :goto_0

    .line 244
    .restart local v27    # "status":I
    .restart local v28    # "step_cnt":I
    :sswitch_0
    sget-object v22, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;->STOP:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    .line 245
    goto :goto_1

    .line 247
    :sswitch_1
    sget-object v22, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;->START:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    .line 248
    goto/16 :goto_1

    .line 250
    :sswitch_2
    sget-object v22, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;->NORMAL:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    goto/16 :goto_1

    .line 263
    .restart local v14    # "diffStepCnt":J
    :cond_3
    const-wide/16 v33, 0x0

    cmp-long v3, v14, v33

    if-lez v3, :cond_1

    .line 264
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    const/16 v33, 0x1

    aget-wide v33, v3, v33

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    const/16 v35, 0x0

    aget-wide v35, v3, v35

    sub-long v8, v33, v35

    .line 265
    const-wide/16 v33, 0x6

    cmp-long v3, v14, v33

    if-lez v3, :cond_6

    .line 266
    const/4 v3, 0x6

    move/from16 v0, v27

    if-ne v0, v3, :cond_5

    .line 267
    const-wide/16 v14, 0x6

    .line 268
    const-wide/16 v8, 0x0

    .line 275
    :cond_4
    :goto_3
    const/4 v3, 0x0

    aput-wide v14, v5, v3

    goto :goto_2

    .line 270
    :cond_5
    const-wide/16 v14, 0x1

    goto :goto_3

    .line 272
    :cond_6
    const-wide/16 v33, 0x2

    cmp-long v3, v14, v33

    if-lez v3, :cond_4

    const-wide/16 v33, 0x6

    cmp-long v3, v14, v33

    if-gez v3, :cond_4

    .line 273
    const-wide/16 v14, 0x1

    goto :goto_3

    .line 279
    .end local v14    # "diffStepCnt":J
    .end local v27    # "status":I
    .end local v28    # "step_cnt":I
    :cond_7
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    sget v33, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->TYPE_PEDOMETER_LOGGING:I

    move/from16 v0, v33

    if-ne v3, v0, :cond_1

    .line 280
    const/4 v4, 0x1

    .line 281
    sget-object v22, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;->LOGGING:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    .line 283
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/hardware/SensorEvent;->values:[F

    array-length v3, v3

    const/16 v33, 0xd

    move/from16 v0, v33

    if-eq v3, v0, :cond_8

    .line 284
    const-string v3, "SContext.MiscProvider.PedometerAdspImpl"

    const-string v33, "Invalid event value length!!"

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 288
    :cond_8
    const-string v3, "SContext.MiscProvider.PedometerAdspImpl"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "parseEvent()    "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/hardware/Sensor;->getType()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_4
    const/16 v3, 0xd

    move/from16 v0, v21

    if-ge v0, v3, :cond_9

    .line 290
    const-string v3, "SContext.MiscProvider.PedometerAdspImpl"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "parseEvent()    data "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " :  "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v34, v0

    aget v34, v34, v21

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 293
    :cond_9
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v33, 0x1

    aget v3, v3, v33

    const/16 v33, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v3, v1}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->convertFloatToByteArray(FI)[B

    move-result-object v18

    .line 294
    .local v18, "end_time_values":[B
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v33, 0x2

    aget v3, v3, v33

    const/16 v33, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v3, v1}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->convertFloatToByteArray(FI)[B

    move-result-object v13

    .line 296
    .local v13, "data_size":[B
    const-wide/16 v25, 0x0

    .line 297
    .local v25, "start_timestamp":J
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->bytesToLong([B)J

    move-result-wide v19

    .line 298
    .local v19, "end_timestamp":J
    sub-long v29, v19, v25

    .line 299
    .local v29, "total_interval":J
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->bytesToLong([B)J

    move-result-wide v33

    move-wide/from16 v0, v33

    long-to-int v7, v0

    .line 301
    const-string v3, "SContext.MiscProvider.PedometerAdspImpl"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "parseEvent() start_timestamp : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " end_timestamp : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " total_interval : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " datasize : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-array v5, v7, [J

    .line 306
    new-array v6, v7, [J

    .line 307
    new-array v10, v7, [J

    .line 309
    const-wide/32 v33, 0x124f80

    cmp-long v3, v29, v33

    if-ltz v3, :cond_d

    .line 310
    const-wide/32 v8, 0xea60

    .line 315
    :goto_5
    const-string v3, "SContext.MiscProvider.PedometerAdspImpl"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "parseEvent() interval "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    const/16 v33, 0x1

    aget-wide v33, v3, v33

    sub-long v23, v33, v29

    .line 318
    .local v23, "start_time":J
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    const/16 v33, 0x0

    aget-wide v33, v3, v33

    cmp-long v3, v23, v33

    if-gez v3, :cond_a

    .line 319
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    const/16 v33, 0x0

    aget-wide v33, v3, v33

    const-wide/16 v35, 0x1

    add-long v23, v33, v35

    .line 321
    :cond_a
    const v3, 0xea60

    add-int/lit8 v33, v7, -0x1

    mul-int v3, v3, v33

    int-to-long v0, v3

    move-wide/from16 v33, v0

    add-long v33, v33, v23

    const-wide/32 v35, 0xea60

    div-long v33, v33, v35

    const-wide/32 v35, 0xea60

    mul-long v16, v33, v35

    .line 323
    .local v16, "end_time":J
    div-int/lit8 v3, v7, 0x2

    add-int/lit8 v32, v3, 0x1

    .line 325
    .local v32, "values_array_size":I
    const/16 v3, 0xb

    move/from16 v0, v32

    if-ne v0, v3, :cond_b

    .line 326
    const/16 v32, 0xa

    .line 328
    :cond_b
    const/16 v3, 0xa

    move/from16 v0, v32

    if-gt v0, v3, :cond_c

    if-gez v32, :cond_e

    .line 329
    :cond_c
    const-string v3, "SContext.MiscProvider.PedometerAdspImpl"

    const-string v33, "parseEvent() : Invalid byte array data size!!"

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 312
    .end local v16    # "end_time":J
    .end local v23    # "start_time":J
    .end local v32    # "values_array_size":I
    :cond_d
    const-wide/32 v33, 0xea60

    rem-long v8, v29, v33

    goto :goto_5

    .line 332
    .restart local v16    # "end_time":J
    .restart local v23    # "start_time":J
    .restart local v32    # "values_array_size":I
    :cond_e
    mul-int/lit8 v3, v32, 0x4

    new-array v0, v3, [B

    move-object/from16 v31, v0

    .line 334
    .local v31, "values":[B
    const/16 v21, 0x0

    :goto_6
    move/from16 v0, v21

    move/from16 v1, v32

    if-ge v0, v1, :cond_f

    .line 335
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/hardware/SensorEvent;->values:[F

    add-int/lit8 v33, v21, 0x3

    aget v3, v3, v33

    const/16 v33, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v3, v1}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->convertFloatToByteArray(FI)[B

    move-result-object v11

    .line 336
    .local v11, "array":[B
    mul-int/lit8 v3, v21, 0x4

    const/16 v33, 0x0

    aget-byte v33, v11, v33

    aput-byte v33, v31, v3

    .line 337
    mul-int/lit8 v3, v21, 0x4

    add-int/lit8 v3, v3, 0x1

    const/16 v33, 0x1

    aget-byte v33, v11, v33

    aput-byte v33, v31, v3

    .line 338
    mul-int/lit8 v3, v21, 0x4

    add-int/lit8 v3, v3, 0x2

    const/16 v33, 0x2

    aget-byte v33, v11, v33

    aput-byte v33, v31, v3

    .line 339
    mul-int/lit8 v3, v21, 0x4

    add-int/lit8 v3, v3, 0x3

    const/16 v33, 0x3

    aget-byte v33, v11, v33

    aput-byte v33, v31, v3

    .line 334
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 342
    .end local v11    # "array":[B
    :cond_f
    const/16 v3, 0x14

    if-gt v7, v3, :cond_10

    if-gez v7, :cond_11

    .line 343
    :cond_10
    const-string v3, "SContext.MiscProvider.PedometerAdspImpl"

    const-string v33, "parseEvent() : Invalid logging data size!!"

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 347
    :cond_11
    add-int/lit8 v12, v7, -0x1

    .line 348
    .local v12, "count":I
    const/16 v21, 0x0

    :goto_7
    move/from16 v0, v21

    if-ge v0, v7, :cond_1

    .line 349
    mul-int/lit8 v3, v21, 0x2

    aget-byte v3, v31, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v0, v3

    move-wide/from16 v33, v0

    aput-wide v33, v6, v12

    .line 350
    mul-int/lit8 v3, v21, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, v31, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v0, v3

    move-wide/from16 v33, v0

    aput-wide v33, v5, v12

    .line 351
    if-nez v12, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    sget-object v33, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;->LOGGING:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    move-object/from16 v0, v33

    if-eq v3, v0, :cond_13

    .line 352
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    const/16 v33, 0x0

    aget-wide v33, v3, v33

    cmp-long v3, v23, v33

    if-gez v3, :cond_12

    .line 353
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    const/16 v33, 0x0

    aget-wide v33, v3, v33

    const-wide/16 v35, 0x1

    add-long v33, v33, v35

    aput-wide v33, v10, v12

    .line 362
    :goto_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mPrevStepCnt:J

    move-wide/from16 v33, v0

    aget-wide v35, v6, v12

    add-long v33, v33, v35

    aget-wide v35, v5, v12

    add-long v33, v33, v35

    move-wide/from16 v0, v33

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mPrevStepCnt:J

    .line 363
    add-int/lit8 v12, v12, -0x1

    .line 348
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 355
    :cond_12
    aput-wide v23, v10, v12

    goto :goto_8

    .line 357
    :cond_13
    add-int/lit8 v3, v7, -0x1

    if-ne v12, v3, :cond_14

    .line 358
    aput-wide v16, v10, v12

    goto :goto_8

    .line 360
    :cond_14
    add-int/lit8 v3, v12, 0x1

    aget-wide v33, v10, v3

    const-wide/32 v35, 0xea60

    sub-long v33, v33, v35

    aput-wide v33, v10, v12

    goto :goto_8

    .line 242
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x6 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method register()Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "res":Z
    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mLoggingPedometer:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mNormalPedometer:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const/4 v0, 0x1

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method declared-synchronized requestToUpdate()V
    .locals 4

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 104
    iget-boolean v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mFlushEnabled:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->flush(Landroid/hardware/SensorEventListener;)Z

    .line 106
    const-string v0, "SContext.MiscProvider.PedometerAdspImpl"

    const-string v1, "flush()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_0
    monitor-exit p0

    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setLoggingMode(Z)V
    .locals 4
    .param p1, "isEnabled"    # Z

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 116
    if-eqz p1, :cond_1

    .line 117
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mNormalPedometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mFlushEnabled:Z

    .line 124
    :goto_0
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :cond_0
    monitor-exit p0

    return-void

    .line 120
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mNormalPedometer:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mFlushEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setProperty(IDD)V
    .locals 6
    .param p1, "gender"    # I
    .param p2, "height"    # D
    .param p4, "weight"    # D

    .prologue
    .line 97
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mPedometerEngine:Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;->native_pedometer_initialize(IDD)V

    .line 98
    return-void
.end method

.method unregister()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 92
    return-void
.end method
