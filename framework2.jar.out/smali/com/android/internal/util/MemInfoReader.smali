.class public final Lcom/android/internal/util/MemInfoReader;
.super Ljava/lang/Object;
.source "MemInfoReader.java"


# instance fields
.field final mBuddyInfos:[J

.field final mInfos:[J

.field mbuffer:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x9

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    .line 26
    const/16 v0, 0x18

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mBuddyInfos:[J

    .line 27
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mbuffer:[B

    return-void
.end method

.method private extractMemValue([BI)J
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "index"    # I

    .prologue
    const/16 v5, 0x39

    const/16 v4, 0x30

    .line 154
    :goto_0
    array-length v2, p1

    if-ge p2, v2, :cond_2

    aget-byte v2, p1, p2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    .line 155
    aget-byte v2, p1, p2

    if-lt v2, v4, :cond_1

    aget-byte v2, p1, p2

    if-gt v2, v5, :cond_1

    .line 156
    move v0, p2

    .line 157
    .local v0, "start":I
    add-int/lit8 p2, p2, 0x1

    .line 159
    :goto_1
    array-length v2, p1

    if-ge p2, v2, :cond_0

    aget-byte v2, p1, p2

    if-lt v2, v4, :cond_0

    aget-byte v2, p1, p2

    if-gt v2, v5, :cond_0

    .line 160
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 162
    :cond_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int v3, p2, v0

    invoke-direct {v1, p1, v2, v0, v3}, Ljava/lang/String;-><init>([BIII)V

    .line 163
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    .line 167
    .end local v0    # "start":I
    .end local v1    # "str":Ljava/lang/String;
    :goto_2
    return-wide v2

    .line 165
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 167
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_2
.end method

.method private findKeyword([BIILjava/lang/String;)I
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "index"    # I
    .param p3, "bound"    # I
    .param p4, "text"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    .line 142
    .local v0, "N":I
    const/4 v3, 0x0

    invoke-virtual {p4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 143
    .local v1, "cFirst":C
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_1

    .line 144
    aget-byte v3, p1, v2

    if-ne v3, v1, :cond_0

    .line 145
    invoke-direct {p0, p1, v2, p4}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    add-int v3, v2, v0

    .line 150
    :goto_1
    return v3

    .line 143
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private matchText([BILjava/lang/String;)Z
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "index"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 128
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 129
    .local v0, "N":I
    add-int v3, p2, v0

    array-length v4, p1

    if-lt v3, v4, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v2

    .line 132
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 133
    add-int v3, p2, v1

    aget-byte v3, p1, v3

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 137
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getBuffersSizeKb()J
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getCachedSize()J
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x3

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getCachedSizeKb()J
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x3

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getFragRate()J
    .locals 11

    .prologue
    const-wide/16 v9, 0x2

    .line 54
    const-wide/16 v5, 0x0

    .line 55
    .local v5, "totalCombination":J
    const-wide/16 v3, 0x0

    .line 56
    .local v3, "prevCombination":J
    const-wide/16 v0, 0x0

    .line 59
    .local v0, "fragMem":J
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_0
    const/16 v7, 0xa

    if-gt v2, v7, :cond_0

    .line 60
    iget-object v7, p0, Lcom/android/internal/util/MemInfoReader;->mBuddyInfos:[J

    aget-wide v7, v7, v2

    add-long/2addr v7, v3

    div-long v3, v7, v9

    .line 61
    add-long/2addr v5, v3

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    :cond_0
    const-wide/16 v3, 0x0

    .line 67
    const/16 v2, 0xd

    :goto_1
    const/16 v7, 0x16

    if-gt v2, v7, :cond_1

    .line 68
    iget-object v7, p0, Lcom/android/internal/util/MemInfoReader;->mBuddyInfos:[J

    aget-wide v7, v7, v2

    add-long/2addr v7, v3

    div-long v3, v7, v9

    .line 69
    add-long/2addr v5, v3

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 72
    :cond_1
    const-wide/16 v7, 0x1000

    mul-long v0, v5, v7

    .line 74
    return-wide v0
.end method

.method public getFreeSize()J
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getFreeSizeKb()J
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getShmemSizeKb()J
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x4

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getSlabSizeKb()J
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x5

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getSwapFreeSizeKb()J
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x7

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getSwapTotalSizeKb()J
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x6

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getTotalSize()J
    .locals 4

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalSizeKb()J
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getUssByPid(I)J
    .locals 16
    .param p1, "pid"    # I

    .prologue
    .line 172
    const-wide/16 v4, 0x0

    .line 173
    .local v4, "resident":J
    const-wide/16 v7, 0x0

    .line 174
    .local v7, "shared":J
    const-wide/16 v11, 0x0

    .line 176
    .local v11, "uss":J
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "/proc/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/statm"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "path":Ljava/lang/String;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v6

    .line 179
    .local v6, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v1, 0x0

    .line 181
    .local v1, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    .end local v1    # "is":Ljava/io/FileInputStream;
    .local v2, "is":Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/util/MemInfoReader;->mbuffer:[B

    const/4 v14, 0x0

    const/16 v15, 0x200

    invoke-virtual {v2, v13, v14, v15}, Ljava/io/FileInputStream;->read([BII)I

    .line 183
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 185
    new-instance v9, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/util/MemInfoReader;->mbuffer:[B

    invoke-direct {v9, v13}, Ljava/lang/String;-><init>([B)V

    .line 186
    .local v9, "str":Ljava/lang/String;
    const-string v13, " "

    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 188
    .local v10, "subs":[Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    mul-int/lit16 v13, v13, 0x1000

    int-to-long v4, v13

    .line 189
    const/4 v13, 0x2

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v13

    mul-int/lit16 v13, v13, 0x1000

    int-to-long v7, v13

    .line 190
    sub-long v11, v4, v7

    .line 194
    if-eqz v2, :cond_0

    .line 196
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 200
    :cond_0
    :goto_0
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v1, v2

    .line 203
    .end local v2    # "is":Ljava/io/FileInputStream;
    .end local v9    # "str":Ljava/lang/String;
    .end local v10    # "subs":[Ljava/lang/String;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    :goto_1
    return-wide v11

    .line 194
    :catchall_0
    move-exception v13

    :goto_2
    if-eqz v1, :cond_1

    .line 196
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 200
    :cond_1
    :goto_3
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 194
    throw v13

    .line 192
    :catch_0
    move-exception v13

    .line 194
    :goto_4
    if-eqz v1, :cond_2

    .line 196
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 200
    :cond_2
    :goto_5
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_1

    .line 197
    :catch_1
    move-exception v13

    goto :goto_5

    :catch_2
    move-exception v14

    goto :goto_3

    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "str":Ljava/lang/String;
    .restart local v10    # "subs":[Ljava/lang/String;
    :catch_3
    move-exception v13

    goto :goto_0

    .line 194
    .end local v9    # "str":Ljava/lang/String;
    .end local v10    # "subs":[Ljava/lang/String;
    :catchall_1
    move-exception v13

    move-object v1, v2

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    goto :goto_2

    .line 192
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_4
    move-exception v13

    move-object v1, v2

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method public getWatermark()J
    .locals 11

    .prologue
    const-wide/16 v9, 0x4

    .line 208
    const-wide/16 v5, 0x0

    .line 212
    .local v5, "watermark":J
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 213
    .local v4, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v2, 0x0

    .line 215
    .local v2, "is":Ljava/io/FileInputStream;
    const/16 v7, 0x800

    :try_start_0
    new-array v0, v7, [B

    .line 216
    .local v0, "buffer":[B
    new-instance v3, Ljava/io/FileInputStream;

    const-string v7, "/proc/zoneinfo"

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    .end local v2    # "is":Ljava/io/FileInputStream;
    .local v3, "is":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    const/16 v8, 0x800

    :try_start_1
    invoke-virtual {v3, v0, v7, v8}, Ljava/io/FileInputStream;->read([BII)I

    .line 218
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 220
    const/4 v1, 0x0

    .line 222
    .local v1, "i":I
    const/16 v7, 0x800

    const-string/jumbo v8, "zone"

    invoke-direct {p0, v0, v1, v7, v8}, Lcom/android/internal/util/MemInfoReader;->findKeyword([BIILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 223
    const/16 v7, 0x800

    const-string v8, "Normal"

    invoke-direct {p0, v0, v1, v7, v8}, Lcom/android/internal/util/MemInfoReader;->findKeyword([BIILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 225
    const/16 v7, 0x800

    const-string/jumbo v8, "pages"

    invoke-direct {p0, v0, v1, v7, v8}, Lcom/android/internal/util/MemInfoReader;->findKeyword([BIILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 226
    const/16 v7, 0x800

    const-string v8, "low"

    invoke-direct {p0, v0, v1, v7, v8}, Lcom/android/internal/util/MemInfoReader;->findKeyword([BIILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 227
    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J

    move-result-wide v7

    mul-long/2addr v7, v9

    add-long/2addr v5, v7

    .line 233
    :cond_0
    const/16 v7, 0x800

    const-string/jumbo v8, "zone"

    invoke-direct {p0, v0, v1, v7, v8}, Lcom/android/internal/util/MemInfoReader;->findKeyword([BIILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 234
    const/16 v7, 0x800

    const-string v8, "HighMem"

    invoke-direct {p0, v0, v1, v7, v8}, Lcom/android/internal/util/MemInfoReader;->findKeyword([BIILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 236
    const/16 v7, 0x800

    const-string/jumbo v8, "pages"

    invoke-direct {p0, v0, v1, v7, v8}, Lcom/android/internal/util/MemInfoReader;->findKeyword([BIILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 237
    const/16 v7, 0x800

    const-string v8, "low"

    invoke-direct {p0, v0, v1, v7, v8}, Lcom/android/internal/util/MemInfoReader;->findKeyword([BIILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 238
    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v7

    mul-long/2addr v7, v9

    add-long/2addr v5, v7

    .line 247
    :cond_1
    if-eqz v3, :cond_2

    .line 249
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 253
    :cond_2
    :goto_0
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v2, v3

    .line 256
    .end local v0    # "buffer":[B
    .end local v1    # "i":I
    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :goto_1
    return-wide v5

    .line 247
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v2, :cond_3

    .line 249
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 253
    :cond_3
    :goto_3
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 247
    throw v7

    .line 244
    :catch_0
    move-exception v7

    .line 247
    :goto_4
    if-eqz v2, :cond_4

    .line 249
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 253
    :cond_4
    :goto_5
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_1

    .line 250
    :catch_1
    move-exception v7

    goto :goto_5

    .line 245
    :catch_2
    move-exception v7

    .line 247
    :goto_6
    if-eqz v2, :cond_4

    .line 249
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    .line 250
    :catch_3
    move-exception v7

    goto :goto_5

    :catch_4
    move-exception v8

    goto :goto_3

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "i":I
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_5
    move-exception v7

    goto :goto_0

    .line 247
    .end local v1    # "i":I
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_2

    .line 245
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_6
    move-exception v7

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_6

    .line 244
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_7
    move-exception v7

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method public getZramTotalSizeKb()J
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0x8

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public readBuddyInfo()V
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 47
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/MemInfoReader;->mBuddyInfos:[J

    invoke-static {v1}, Landroid/os/Debug;->getBuddyInfo([J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 51
    return-void

    .line 49
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method public readMemInfo()V
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 35
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    invoke-static {v1}, Landroid/os/Debug;->getMemInfo([J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 39
    return-void

    .line 37
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method
