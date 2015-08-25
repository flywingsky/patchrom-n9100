.class public final Landroid/bluetooth/le/ScanFilter;
.super Ljava/lang/Object;
.source "ScanFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/ScanFilter$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ScanFilter"


# instance fields
.field private final mDeviceAddress:Ljava/lang/String;

.field private final mDeviceName:Ljava/lang/String;

.field private mFullManudata:[B

.field private final mManufacturerData:[B

.field private mManufacturerDataMask:[B

.field private final mManufacturerId:I

.field private final mMaxRssi:I

.field private final mMinRssi:I

.field private final mServiceData:[B

.field private final mServiceDataMask:[B

.field private final mServiceUuid:Landroid/os/ParcelUuid;

.field private final mServiceUuidMask:Landroid/os/ParcelUuid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 156
    new-instance v0, Landroid/bluetooth/le/ScanFilter$1;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/ScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BII)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "deviceAddress"    # Ljava/lang/String;
    .param p3, "uuid"    # Landroid/os/ParcelUuid;
    .param p4, "uuidMask"    # Landroid/os/ParcelUuid;
    .param p5, "serviceData"    # [B
    .param p6, "serviceDataMask"    # [B
    .param p7, "manufacturerId"    # I
    .param p8, "manufacturerData"    # [B
    .param p9, "manufacturerDataMask"    # [B
    .param p10, "minRssi"    # I
    .param p11, "maxRssi"    # I

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 83
    iput-object p4, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    .line 84
    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    .line 85
    iput-object p5, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    .line 86
    iput-object p6, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    .line 87
    iput p7, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    .line 88
    iput-object p8, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    .line 89
    iput-object p9, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    .line 90
    iput p10, p0, Landroid/bluetooth/le/ScanFilter;->mMinRssi:I

    .line 91
    iput p11, p0, Landroid/bluetooth/le/ScanFilter;->mMaxRssi:I

    .line 92
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BIILandroid/bluetooth/le/ScanFilter$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Landroid/os/ParcelUuid;
    .param p4, "x3"    # Landroid/os/ParcelUuid;
    .param p5, "x4"    # [B
    .param p6, "x5"    # [B
    .param p7, "x6"    # I
    .param p8, "x7"    # [B
    .param p9, "x8"    # [B
    .param p10, "x9"    # I
    .param p11, "x10"    # I
    .param p12, "x11"    # Landroid/bluetooth/le/ScanFilter$1;

    .prologue
    .line 48
    invoke-direct/range {p0 .. p11}, Landroid/bluetooth/le/ScanFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BII)V

    return-void
.end method

.method private matchesPartialData([B[B[B)Z
    .locals 5
    .param p1, "data"    # [B
    .param p2, "dataMask"    # [B
    .param p3, "parsedData"    # [B

    .prologue
    const/4 v1, 0x0

    .line 477
    if-nez p2, :cond_1

    .line 478
    invoke-static {p1, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 492
    :cond_0
    :goto_0
    return v1

    .line 480
    :cond_1
    if-eqz p3, :cond_0

    .line 483
    array-length v2, p1

    array-length v3, p3

    if-gt v2, v3, :cond_0

    .line 486
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 487
    aget-byte v2, p2, v0

    aget-byte v3, p3, v0

    and-int/2addr v2, v3

    aget-byte v3, p2, v0

    aget-byte v4, p1, v0

    and-int/2addr v3, v4

    if-ne v2, v3, :cond_0

    .line 486
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 491
    :cond_2
    const-string v1, "ScanFilter"

    const-string v2, "matchesPartialData return true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private matchesServiceUuid(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z
    .locals 7
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "mask"    # Ljava/util/UUID;
    .param p3, "data"    # Ljava/util/UUID;

    .prologue
    const/4 v0, 0x0

    .line 463
    if-nez p2, :cond_1

    .line 464
    invoke-virtual {p1, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 470
    :cond_0
    :goto_0
    return v0

    .line 466
    :cond_1
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    and-long/2addr v1, v3

    invoke-virtual {p3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v5

    and-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 470
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    and-long/2addr v1, v3

    invoke-virtual {p3}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v5

    and-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private matchesServiceUuids(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/util/List;)Z
    .locals 7
    .param p1, "uuid"    # Landroid/os/ParcelUuid;
    .param p2, "parcelUuidMask"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelUuid;",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "uuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 445
    if-nez p1, :cond_0

    .line 458
    :goto_0
    return v3

    .line 448
    :cond_0
    if-nez p3, :cond_1

    move v3, v4

    .line 449
    goto :goto_0

    .line 452
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 453
    .local v1, "parcelUuid":Landroid/os/ParcelUuid;
    if-nez p2, :cond_3

    const/4 v2, 0x0

    .line 454
    .local v2, "uuidMask":Ljava/util/UUID;
    :goto_1
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-direct {p0, v5, v2, v6}, Landroid/bluetooth/le/ScanFilter;->matchesServiceUuid(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 453
    .end local v2    # "uuidMask":Ljava/util/UUID;
    :cond_3
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    goto :goto_1

    .end local v1    # "parcelUuid":Landroid/os/ParcelUuid;
    :cond_4
    move v3, v4

    .line 458
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 543
    if-ne p0, p1, :cond_1

    .line 550
    :cond_0
    :goto_0
    return v1

    .line 546
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 547
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 549
    check-cast v0, Landroid/bluetooth/le/ScanFilter;

    .line 550
    .local v0, "other":Landroid/bluetooth/le/ScanFilter;
    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    iget-object v4, v0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    iget-object v4, v0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    iget v4, v0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    iget-object v4, v0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    iget-object v4, v0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/bluetooth/le/ScanFilter;->mMinRssi:I

    iget v4, v0, Landroid/bluetooth/le/ScanFilter;->mMinRssi:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/bluetooth/le/ScanFilter;->mMaxRssi:I

    iget v4, v0, Landroid/bluetooth/le/ScanFilter;->mMaxRssi:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    iget-object v4, v0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    iget-object v4, v0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    iget-object v4, v0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    iget-object v4, v0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturerData()[B
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    return-object v0
.end method

.method public getManufacturerDataMask()[B
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    return-object v0
.end method

.method public getManufacturerId()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    return v0
.end method

.method public getMaxRssi()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Landroid/bluetooth/le/ScanFilter;->mMaxRssi:I

    return v0
.end method

.method public getMinRssi()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Landroid/bluetooth/le/ScanFilter;->mMinRssi:I

    return v0
.end method

.method public getServiceData()[B
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    return-object v0
.end method

.method public getServiceDataMask()[B
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    return-object v0
.end method

.method public getServiceUuid()Landroid/os/ParcelUuid;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public getServiceUuidMask()Landroid/os/ParcelUuid;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 531
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Landroid/bluetooth/le/ScanFilter;->mMaxRssi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Landroid/bluetooth/le/ScanFilter;->mMinRssi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public matches(Landroid/bluetooth/le/ScanResult;)Z
    .locals 18
    .param p1, "scanResult"    # Landroid/bluetooth/le/ScanResult;

    .prologue
    .line 344
    if-nez p1, :cond_0

    .line 345
    const/4 v13, 0x0

    .line 432
    :goto_0
    return v13

    .line 347
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 349
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    if-eqz v13, :cond_2

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 350
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 353
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v10

    .line 354
    .local v10, "rssi":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/bluetooth/le/ScanFilter;->mMinRssi:I

    if-lt v10, v13, :cond_3

    move-object/from16 v0, p0

    iget v13, v0, Landroid/bluetooth/le/ScanFilter;->mMaxRssi:I

    if-le v10, v13, :cond_4

    .line 355
    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    .line 358
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()[B

    move-result-object v12

    .line 359
    .local v12, "scanRecordBytes":[B
    invoke-static {v12}, Landroid/bluetooth/le/ScanRecord;->parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;

    move-result-object v11

    .line 360
    .local v11, "scanRecord":Landroid/bluetooth/le/ScanRecord;
    invoke-static {v12}, Landroid/bluetooth/le/ScanRecord;->getManudatCount([B)I

    move-result v8

    .line 361
    .local v8, "manudataInstance":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v6, "manuDatalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v13, 0x1

    if-le v8, v13, :cond_5

    .line 363
    invoke-static {v12}, Landroid/bluetooth/le/ScanRecord;->getManudataList([B)Ljava/util/ArrayList;

    move-result-object v6

    .line 364
    const-string v13, "ScanFilter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Manu data total instance are "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_5
    if-nez v11, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    if-eqz v13, :cond_7

    .line 370
    :cond_6
    const/4 v13, 0x0

    goto :goto_0

    .line 374
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v11}, Landroid/bluetooth/le/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 375
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 379
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    invoke-virtual {v11}, Landroid/bluetooth/le/ScanRecord;->getServiceUuids()Ljava/util/List;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Landroid/bluetooth/le/ScanFilter;->matchesServiceUuids(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/util/List;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 381
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 385
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    invoke-virtual {v11}, Landroid/bluetooth/le/ScanRecord;->getServiceData()[B

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Landroid/bluetooth/le/ScanFilter;->matchesPartialData([B[B[B)Z

    move-result v13

    if-nez v13, :cond_a

    .line 387
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 391
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    if-eqz v13, :cond_f

    .line 392
    const/4 v13, 0x2

    new-array v2, v13, [B

    .line 394
    .local v2, "compidArray":[B
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    shr-int/lit8 v14, v14, 0x8

    and-int/lit16 v14, v14, 0xff

    int-to-byte v14, v14

    aput-byte v14, v2, v13

    .line 395
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    and-int/lit16 v14, v14, 0xff

    int-to-byte v14, v14

    aput-byte v14, v2, v13

    .line 396
    const/4 v13, 0x2

    new-array v1, v13, [B

    fill-array-data v1, :array_0

    .line 397
    .local v1, "Compmaskvalue":[B
    array-length v13, v2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    array-length v14, v14

    add-int/2addr v13, v14

    new-array v13, v13, [B

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/bluetooth/le/ScanFilter;->mFullManudata:[B

    .line 398
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    if-nez v13, :cond_b

    .line 399
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    array-length v13, v13

    new-array v13, v13, [B

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    .line 400
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    array-length v13, v13

    if-ge v4, v13, :cond_b

    .line 401
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    const/4 v14, -0x1

    aput-byte v14, v13, v4

    .line 400
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 404
    .end local v4    # "i":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    array-length v13, v13

    add-int/lit8 v13, v13, 0x2

    new-array v5, v13, [B

    .line 405
    .local v5, "mFullManumaskData":[B
    const/4 v13, 0x0

    const/4 v14, 0x0

    array-length v15, v1

    invoke-static {v1, v13, v5, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 406
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    const/4 v14, 0x0

    array-length v15, v1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v13, v14, v5, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 407
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/bluetooth/le/ScanFilter;->mFullManudata:[B

    const/4 v15, 0x0

    array-length v0, v2

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v2, v13, v14, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 408
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/bluetooth/le/ScanFilter;->mFullManudata:[B

    array-length v0, v2

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    invoke-static/range {v13 .. v17}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 409
    const/4 v9, 0x0

    .line 410
    .local v9, "matches":Z
    const/4 v13, 0x1

    if-ne v8, v13, :cond_c

    .line 411
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/bluetooth/le/ScanFilter;->mFullManudata:[B

    invoke-virtual {v11}, Landroid/bluetooth/le/ScanRecord;->getManufacturerSpecificData()[B

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v5, v14}, Landroid/bluetooth/le/ScanFilter;->matchesPartialData([B[B[B)Z

    move-result v13

    if-nez v13, :cond_f

    .line 413
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 416
    :cond_c
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v4, v13, :cond_d

    .line 417
    const-string v13, "ScanFilter"

    const-string v14, "More than one manu instance"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 419
    .local v7, "manudata":[B
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/bluetooth/le/ScanFilter;->mFullManudata:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v5, v7}, Landroid/bluetooth/le/ScanFilter;->matchesPartialData([B[B[B)Z

    move-result v9

    .line 421
    if-eqz v9, :cond_e

    .line 422
    const-string v13, "ScanFilter"

    const-string v14, " manu data instance matches"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    .end local v7    # "manudata":[B
    :cond_d
    if-nez v9, :cond_f

    .line 427
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 416
    .restart local v7    # "manudata":[B
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 432
    .end local v1    # "Compmaskvalue":[B
    .end local v2    # "compidArray":[B
    .end local v4    # "i":I
    .end local v5    # "mFullManumaskData":[B
    .end local v7    # "manudata":[B
    .end local v9    # "matches":Z
    :cond_f
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 396
    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data
.end method

.method public toBytes(I)[B
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 501
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 502
    .local v0, "result":[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 503
    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 504
    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 505
    const/4 v1, 0x3

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 506
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothLeScanFilter [mDeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeviceAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUuidMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceDataMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mManufacturerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mManufacturerData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mManufacturerDataMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMinRssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanFilter;->mMinRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxRssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanFilter;->mMaxRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    if-nez v0, :cond_6

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    if-nez v0, :cond_7

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-nez v0, :cond_8

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_3

    .line 123
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 124
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    if-nez v0, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_3

    .line 126
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 129
    :cond_3
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    if-nez v0, :cond_9

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    if-eqz v0, :cond_4

    .line 131
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 132
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    if-nez v0, :cond_a

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    if-eqz v0, :cond_4

    .line 134
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 137
    :cond_4
    iget v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    if-nez v0, :cond_b

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    if-eqz v0, :cond_5

    .line 140
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 141
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    if-nez v0, :cond_c

    :goto_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    if-eqz v0, :cond_5

    .line 143
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 146
    :cond_5
    iget v0, p0, Landroid/bluetooth/le/ScanFilter;->mMinRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget v0, p0, Landroid/bluetooth/le/ScanFilter;->mMaxRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    return-void

    :cond_6
    move v0, v2

    .line 113
    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 117
    goto/16 :goto_1

    :cond_8
    move v0, v2

    .line 121
    goto :goto_2

    .line 129
    :cond_9
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    array-length v0, v0

    goto :goto_3

    .line 132
    :cond_a
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    array-length v0, v0

    goto :goto_4

    .line 138
    :cond_b
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    array-length v0, v0

    goto :goto_5

    .line 141
    :cond_c
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    array-length v1, v0

    goto :goto_6
.end method
