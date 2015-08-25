.class public Lcom/android/server/enterprise/location/LocationPolicy;
.super Landroid/app/enterprise/ILocationPolicy$Stub;
.source "LocationPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "EDM"


# instance fields
.field mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mLM:Landroid/location/LocationManager;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/enterprise/ILocationPolicy$Stub;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 40
    iput-object p1, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mContext:Landroid/content/Context;

    .line 41
    iget-object v0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mResolver:Landroid/content/ContentResolver;

    .line 42
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 43
    return-void
.end method

.method private addToBlocked(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "sProvider"    # Ljava/lang/String;

    .prologue
    .line 370
    const-string v4, "EDM"

    const-string v5, ">>> LocationPolicyService.addToBlocked()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->getAllLocationProviders(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v3

    .line 373
    .local v3, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 374
    :cond_0
    const/4 v4, 0x0

    .line 386
    :goto_0
    return v4

    .line 376
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/location/LocationPolicy;->getBlockedList(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 378
    .local v2, "provider":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 379
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 383
    .end local v2    # "provider":Ljava/lang/String;
    :cond_3
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 384
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_4
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v4, v1}, Lcom/android/server/enterprise/location/LocationPolicy;->saveBlockedList(ILjava/util/List;)Z

    move-result v4

    goto :goto_0
.end method

.method private enforceLocationPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/server/enterprise/location/LocationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_LOCATION"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getBlockedList(I)Ljava/util/ArrayList;
    .locals 5
    .param p1, "adminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v0, "blockedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "LOCATION"

    const-string v4, "blockedProviders"

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, "blockedProviders":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    :goto_0
    return-object v0

    .line 314
    :cond_0
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getUserIdByPackageNameOrUid(I)I
    .locals 8
    .param p1, "callingUid"    # I

    .prologue
    .line 422
    iget-object v5, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "caller":Ljava/lang/String;
    const-string v5, "EDM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "caller "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    if-eqz v0, :cond_1

    .line 425
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 426
    .local v1, "index":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    .line 427
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 430
    :cond_0
    const-string v5, "com.android.systemui"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 431
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 432
    .local v2, "token":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 433
    .local v4, "userId":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 437
    .end local v1    # "index":I
    .end local v2    # "token":J
    .end local v4    # "userId":I
    :goto_0
    return v4

    :cond_1
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    goto :goto_0
.end method

.method private removeFromBlocked(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "sProvider"    # Ljava/lang/String;

    .prologue
    .line 350
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/location/LocationPolicy;->getAllLocationProviders(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v2

    .line 351
    .local v2, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 352
    :cond_0
    const/4 v3, 0x0

    .line 366
    :goto_0
    return v3

    .line 354
    :cond_1
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/location/LocationPolicy;->getBlockedList(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 355
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_4

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 356
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 357
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 358
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 366
    .end local v0    # "i":I
    :cond_2
    :goto_2
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v3, v1}, Lcom/android/server/enterprise/location/LocationPolicy;->saveBlockedList(ILjava/util/List;)Z

    move-result v3

    goto :goto_0

    .line 356
    .restart local v0    # "i":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 363
    .end local v0    # "i":I
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private saveBlockedList(ILjava/util/List;)Z
    .locals 7
    .param p1, "adminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 326
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .local v2, "sb":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_2

    .line 328
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 329
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 330
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 333
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "LOCATION"

    const-string v5, "blockedProviders"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 337
    .end local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    return v3

    .line 336
    :cond_2
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    iget-object v3, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "LOCATION"

    const-string v5, "blockedProviders"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    goto :goto_1
.end method

.method private setLocationManager()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mLM:Landroid/location/LocationManager;

    .line 61
    return-void
.end method


# virtual methods
.method public getAllBlockedProvidersInUser(I)Ljava/util/List;
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v4, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "LOCATION"

    const-string v6, "blockedProviders"

    invoke-virtual {v4, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 166
    .local v2, "blockedProvidersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v0, "blockedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 168
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 169
    .local v1, "blockedProviders":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 172
    .end local v1    # "blockedProviders":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    const-string v4, ""

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_1
    return-object v0
.end method

.method public getAllLocationProviders(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->enforceLocationPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 154
    invoke-direct {p0}, Lcom/android/server/enterprise/location/LocationPolicy;->setLocationManager()V

    .line 155
    iget-object v1, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mLM:Landroid/location/LocationManager;

    invoke-virtual {v1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    .line 156
    return-object v0
.end method

.method public getIndividualLocationProvider(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "sProvider"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->getAllLocationProviders(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v1

    .line 125
    .local v1, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 137
    :cond_1
    :goto_0
    return v2

    .line 128
    :cond_2
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {p0, p2, v4}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v0

    .line 130
    .local v0, "isBlocked":Z
    const-string v4, "gps"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 131
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "gps"

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 137
    :cond_3
    if-eqz v0, :cond_1

    move v2, v3

    goto :goto_0
.end method

.method public isGPSOn(Landroid/app/enterprise/ContextInfo;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 289
    const-string v3, "EDM"

    const-string v4, ">>> isGPSOn"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const/4 v0, 0x0

    .line 292
    .local v0, "ret":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->enforceLocationPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 293
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 294
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "gps"

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 295
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 297
    return v0
.end method

.method public isGPSStateChangeAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v3, 0x0

    .line 231
    const-string v4, "EDM"

    const-string v5, ">>> isGPSStateChangeAllowed"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 236
    .local v2, "userId":I
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->getAllLocationProviders(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v1

    .line 237
    .local v1, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    const-string v4, "gps"

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 241
    :cond_0
    :goto_0
    return v3

    .line 240
    :cond_1
    const-string v4, "gps"

    invoke-virtual {p0, v4, v2}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v0

    .line 241
    .local v0, "blocked":Z
    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isLocationProviderBlocked(Ljava/lang/String;)Z
    .locals 3
    .param p1, "sProvider"    # Ljava/lang/String;

    .prologue
    .line 142
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 143
    .local v0, "userId":I
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "sProvider"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 390
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/location/LocationPolicy;->getAllBlockedProvidersInUser(I)Ljava/util/List;

    move-result-object v0

    .line 391
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 392
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 394
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 401
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 407
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 418
    return-void
.end method

.method public setGPSStateChangeAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 199
    const-string v4, "EDM"

    const-string v5, ">>> setGPSStateChangeAllowed"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->enforceLocationPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 202
    const/4 v3, 0x1

    .line 203
    .local v3, "result":Z
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/location/LocationPolicy;->getBlockedList(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 204
    .local v0, "blockedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "gps"

    .line 207
    .local v1, "provider":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->getAllLocationProviders(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v2

    .line 208
    .local v2, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 209
    :cond_0
    const/4 v4, 0x0

    .line 222
    :goto_0
    return v4

    .line 211
    :cond_1
    monitor-enter p0

    .line 212
    if-eqz p2, :cond_3

    .line 213
    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 214
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/location/LocationPolicy;->removeFromBlocked(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    .line 221
    :cond_2
    :goto_1
    monitor-exit p0

    move v4, v3

    .line 222
    goto :goto_0

    .line 217
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 218
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/location/LocationPolicy;->addToBlocked(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    .line 221
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setIndividualLocationProvider(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "sProvider"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    const/4 v5, 0x0

    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->enforceLocationPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 81
    const/4 v2, 0x1

    .line 82
    .local v2, "result":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/location/LocationPolicy;->setLocationManager()V

    .line 83
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/location/LocationPolicy;->getBlockedList(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 84
    .local v0, "blockedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p2, :cond_1

    .line 85
    const-string v6, "EDM"

    const-string/jumbo v7, "setIndividualLocationProvider : sProvider is null"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_0
    :goto_0
    return v5

    .line 88
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->getAllLocationProviders(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v1

    .line 92
    .local v1, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 98
    monitor-enter p0

    .line 99
    if-eqz p3, :cond_3

    .line 100
    :try_start_0
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/location/LocationPolicy;->removeFromBlocked(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    .line 112
    :cond_2
    :goto_1
    monitor-exit p0

    move v5, v2

    .line 113
    goto :goto_0

    .line 104
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 105
    .local v3, "token":J
    iget-object v5, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mResolver:Landroid/content/ContentResolver;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static {v5, p2, p3, v6}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 106
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 108
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/location/LocationPolicy;->addToBlocked(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    .line 112
    .end local v3    # "token":J
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 115
    .end local v1    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Invalid provider name !"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public startGPS(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "start"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 256
    const-string v7, "EDM"

    const-string v8, ">>> startGPS"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->enforceLocationPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 259
    const-string v0, "gps"

    .line 260
    .local v0, "provider":Ljava/lang/String;
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 263
    .local v4, "userId":I
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->getAllLocationProviders(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v1

    .line 264
    .local v1, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v5

    .line 268
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSStateChangeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 271
    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSOn(Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    if-nez p2, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSOn(Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    move v5, v6

    .line 272
    goto :goto_0

    .line 274
    :cond_4
    monitor-enter p0

    .line 275
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 276
    .local v2, "token":J
    iget-object v5, p0, Lcom/android/server/enterprise/location/LocationPolicy;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v0, p2, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 277
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 278
    monitor-exit p0

    move v5, v6

    .line 279
    goto :goto_0

    .line 278
    .end local v2    # "token":J
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 413
    return-void
.end method
