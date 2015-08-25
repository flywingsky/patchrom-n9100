.class Lcom/android/server/RCPManagerService$1;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "RCPManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/RCPManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RCPManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/RCPManagerService;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/android/server/RCPManagerService$1;->this$0:Lcom/android/server/RCPManagerService;

    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 10
    .param p1, "newUserId"    # I

    .prologue
    const/4 v9, 0x0

    .line 517
    const-string v6, "onUserSwitchComplete"

    # invokes: Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v6}, Lcom/android/server/RCPManagerService;->access$100(Ljava/lang/String;)I

    .line 518
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$200()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onUserSwitchComplete with userid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v6, p0, Lcom/android/server/RCPManagerService$1;->this$0:Lcom/android/server/RCPManagerService;

    iget-object v6, v6, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string v7, "persona"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .line 523
    .local v1, "mPersona":Landroid/os/PersonaManager;
    if-eqz v1, :cond_1

    .line 524
    invoke-virtual {v1}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 525
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v3

    .line 526
    .local v3, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    const/4 v4, 0x0

    .line 527
    .local v4, "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 528
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "pi":Landroid/content/pm/PersonaInfo;
    check-cast v4, Landroid/content/pm/PersonaInfo;

    .line 530
    .restart local v4    # "pi":Landroid/content/pm/PersonaInfo;
    :cond_0
    if-nez v4, :cond_2

    .line 531
    sput-object v9, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    .line 532
    sput-object v9, Lcom/android/server/RCPManagerService;->kioskAllowedApps:Ljava/util/ArrayList;

    .line 573
    .end local v3    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v4    # "pi":Landroid/content/pm/PersonaInfo;
    :cond_1
    :goto_0
    return-void

    .line 535
    .restart local v3    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v4    # "pi":Landroid/content/pm/PersonaInfo;
    :cond_2
    sget-object v6, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v6, :cond_3

    .line 536
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    sput-object v6, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    .line 539
    :cond_3
    const-string/jumbo v6, "true"

    sget-object v7, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    const-string v8, "isKnoxKioskMode"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 541
    sget-object v6, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    const-string v7, "isKnoxKioskMode"

    const-string/jumbo v8, "true"

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    :cond_4
    sget-object v6, Lcom/android/server/RCPManagerService;->kioskAllowedApps:Ljava/util/ArrayList;

    if-nez v6, :cond_5

    .line 546
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lcom/android/server/RCPManagerService;->kioskAllowedApps:Ljava/util/ArrayList;

    .line 549
    :cond_5
    sget-object v6, Lcom/android/server/RCPManagerService;->kioskAllowedApps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 550
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v6, p0, Lcom/android/server/RCPManagerService$1;->this$0:Lcom/android/server/RCPManagerService;

    iget-object v6, v6, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 552
    .local v0, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result v2

    .line 555
    .local v2, "ownerUid":I
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    .line 557
    .local v5, "pkgName":Ljava/lang/String;
    if-eqz v5, :cond_1

    sget-object v6, Lcom/android/server/RCPManagerService;->kioskAllowedApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 558
    sget-object v6, Lcom/android/server/RCPManagerService;->kioskAllowedApps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 559
    sget-object v6, Lcom/android/server/RCPManagerService;->kioskAllowedApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    sget-object v6, Lcom/android/server/RCPManagerService;->kioskAllowedApps:Ljava/util/ArrayList;

    const-string v7, "com.sec.android.fotaclient"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    sget-object v6, Lcom/android/server/RCPManagerService;->kioskAllowedApps:Ljava/util/ArrayList;

    const-string v7, "com.wssyncmldm"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 565
    .end local v0    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v2    # "ownerUid":I
    .end local v3    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v4    # "pi":Landroid/content/pm/PersonaInfo;
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_6
    sget-object v6, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    if-eqz v6, :cond_7

    .line 566
    sget-object v6, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    const-string v7, "isKnoxKioskMode"

    const-string v8, "false"

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :cond_7
    sput-object v9, Lcom/android/server/RCPManagerService;->kioskAllowedApps:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 6
    .param p1, "newUserId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 478
    const-string v3, "onUserSwitching"

    # invokes: Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v3}, Lcom/android/server/RCPManagerService;->access$100(Ljava/lang/String;)I

    .line 479
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUserSwitching with userid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v3, p0, Lcom/android/server/RCPManagerService$1;->this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->mBridgeCommandExeUserMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/RCPManagerService;->access$300(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ICommandExeCallBack;

    .line 484
    .local v1, "commandExeCallback":Landroid/content/ICommandExeCallBack;
    if-eqz v1, :cond_0

    .line 485
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calling exceuteCommand() for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " via his ICommandExeCallBack"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :try_start_0
    iget-object v3, p0, Lcom/android/server/RCPManagerService$1;->this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->mCommandQueue:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/server/RCPManagerService;->access$400(Lcom/android/server/RCPManagerService;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 490
    iget-object v3, p0, Lcom/android/server/RCPManagerService$1;->this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->mCommandQueue:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/server/RCPManagerService;->access$400(Lcom/android/server/RCPManagerService;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Command;

    .line 492
    .local v0, "command":Landroid/app/Command;
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " checking packages in command queue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    if-eqz v0, :cond_0

    .line 496
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " pkg in commandqueue is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-interface {v1, v0}, Landroid/content/ICommandExeCallBack;->execute(Landroid/app/Command;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    .end local v0    # "command":Landroid/app/Command;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/RCPManagerService$1;->this$0:Lcom/android/server/RCPManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/RCPManagerService;->startRCPProxy(I)V

    .line 510
    iget-object v3, p0, Lcom/android/server/RCPManagerService$1;->this$0:Lcom/android/server/RCPManagerService;

    const-string v4, "com.sec.knox.bridge.receiver.ACTION_USER_SWITCHED"

    # invokes: Lcom/android/server/RCPManagerService;->startKnoxModeSwitcher(Ljava/lang/String;I)V
    invoke-static {v3, v4, p1}, Lcom/android/server/RCPManagerService;->access$500(Lcom/android/server/RCPManagerService;Ljava/lang/String;I)V

    .line 513
    return-void

    .line 502
    :catch_0
    move-exception v2

    .line 503
    .local v2, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote exception thrown by service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
