.class public Landroid/os/Environment$UserEnvironment;
.super Ljava/lang/Object;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Environment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserEnvironment"
.end annotation


# instance fields
.field private final mEmulatedDirForDirect:Ljava/io/File;

.field private final mExternalDirsForApp:[Ljava/io/File;

.field private final mExternalDirsForVold:[Ljava/io/File;


# direct methods
.method public constructor <init>(I)V
    .locals 25
    .param p1, "userId"    # I

    .prologue
    .line 130
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v8, 0x0

    .line 134
    .local v8, "isPersona":Z
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v20

    .line 135
    .local v20, "versionInfo":Landroid/os/Bundle;
    const-string v21, "2.0"

    const-string/jumbo v22, "version"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 136
    if-eqz p1, :cond_0

    const/16 v21, 0x64

    move/from16 v0, p1

    move/from16 v1, v21

    if-lt v0, v1, :cond_0

    .line 137
    const-string v21, "Environment"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "checking user "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v8, 0x1

    .line 144
    :cond_0
    const-string v21, "EXTERNAL_STORAGE"

    invoke-static/range {v21 .. v21}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 145
    .local v14, "rawExternalStorage":Ljava/lang/String;
    const-string v21, "EMULATED_STORAGE_SOURCE"

    invoke-static/range {v21 .. v21}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 146
    .local v12, "rawEmulatedSource":Ljava/lang/String;
    const-string v21, "EMULATED_STORAGE_TARGET"

    invoke-static/range {v21 .. v21}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 148
    .local v13, "rawEmulatedTarget":Ljava/lang/String;
    const-string v21, "MEDIA_STORAGE"

    invoke-static/range {v21 .. v21}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 149
    .local v15, "rawMediaStorage":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 150
    const-string v15, "/data/media"

    .line 153
    :cond_1
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 154
    .local v6, "externalForVold":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 156
    .local v5, "externalForApp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 159
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    .line 160
    .local v17, "rawUserId":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .local v3, "emulatedSourceBase":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v4, "emulatedTargetBase":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v11, "mediaBase":Ljava/io/File;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v17, v21, v22

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v17, v21, v22

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v17, v21, v22

    move-object/from16 v0, v21

    invoke-static {v11, v0}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/Environment$UserEnvironment;->mEmulatedDirForDirect:Ljava/io/File;

    .line 185
    .end local v3    # "emulatedSourceBase":Ljava/io/File;
    .end local v4    # "emulatedTargetBase":Ljava/io/File;
    .end local v11    # "mediaBase":Ljava/io/File;
    .end local v17    # "rawUserId":Ljava/lang/String;
    :goto_0
    const-string v21, "SECONDARY_STORAGE"

    invoke-static/range {v21 .. v21}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 186
    .local v16, "rawSecondaryStorage":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 189
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 192
    .local v19, "userIdString":Ljava/lang/String;
    const-string v21, ":"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v10, :cond_7

    aget-object v18, v2, v7

    .line 194
    .local v18, "secondaryPath":Ljava/lang/String;
    const-string v21, "2.0"

    const-string/jumbo v22, "version"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 195
    if-eqz v8, :cond_5

    .line 196
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "knox"

    aput-object v24, v22, v23

    const/16 v23, 0x1

    aput-object v19, v22, v23

    invoke-static/range {v21 .. v22}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 198
    .local v9, "knoxPath":Ljava/io/File;
    const-string v21, "Environment"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "building path "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " for persona "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .end local v9    # "knoxPath":Ljava/io/File;
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 172
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v10    # "len$":I
    .end local v16    # "rawSecondaryStorage":Ljava/lang/String;
    .end local v18    # "secondaryPath":Ljava/lang/String;
    .end local v19    # "userIdString":Ljava/lang/String;
    :cond_3
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 173
    const-string v21, "Environment"

    const-string v22, "EXTERNAL_STORAGE undefined; falling back to default"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v14, "/storage/sdcard0"

    .line 178
    :cond_4
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/Environment$UserEnvironment;->mEmulatedDirForDirect:Ljava/io/File;

    goto/16 :goto_0

    .line 201
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v7    # "i$":I
    .restart local v10    # "len$":I
    .restart local v16    # "rawSecondaryStorage":Ljava/lang/String;
    .restart local v18    # "secondaryPath":Ljava/lang/String;
    .restart local v19    # "userIdString":Ljava/lang/String;
    :cond_5
    if-nez p1, :cond_2

    .line 202
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 206
    :cond_6
    if-nez p1, :cond_2

    .line 207
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 212
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v10    # "len$":I
    .end local v18    # "secondaryPath":Ljava/lang/String;
    .end local v19    # "userIdString":Ljava/lang/String;
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Ljava/io/File;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/Environment$UserEnvironment;->mExternalDirsForVold:[Ljava/io/File;

    .line 213
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Ljava/io/File;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    .line 214
    return-void
.end method


# virtual methods
.method public buildExternalStorageAndroidDataDirs()[Ljava/io/File;
    .locals 4

    .prologue
    .line 243
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "data"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAndroidObbDirs()[Ljava/io/File;
    .locals 4

    .prologue
    .line 247
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "obb"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAndroidObbDirsForVold()[Ljava/io/File;
    .locals 4

    .prologue
    .line 251
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForVold:[Ljava/io/File;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "obb"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 279
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "data"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    const-string v3, "cache"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 255
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "data"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppDataDirsForVold(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 259
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForVold:[Ljava/io/File;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "data"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppFilesDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 275
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "data"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    const-string v3, "files"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 263
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "media"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 267
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "obb"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppObbDirsForVold(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 271
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForVold:[Ljava/io/File;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "obb"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStoragePublicDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 239
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getExternalDirsForApp()[Ljava/io/File;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    return-object v0
.end method

.method public getExternalDirsForVold()[Ljava/io/File;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForVold:[Ljava/io/File;

    return-object v0
.end method

.method public getExternalStorageDirectory()Ljava/io/File;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStoragePublicDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMediaDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mEmulatedDirForDirect:Ljava/io/File;

    return-object v0
.end method
