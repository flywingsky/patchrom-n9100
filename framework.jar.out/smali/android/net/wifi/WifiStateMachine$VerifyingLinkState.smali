.class Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerifyingLinkState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 8186
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 8189
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " enter"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$33400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8190
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->updatePoorNetworkParameters()V
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$1500(Landroid/net/wifi/WifiStateMachine;)V

    .line 8191
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfigStore;->isIBSS(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiConfigStore;->isUsingSamsungFlag(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8193
    :cond_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheck(Z)V

    .line 8194
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mConnectedOxygenState:Lcom/android/internal/util/State;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$29300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$33500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 8197
    :cond_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$19300(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V

    .line 8198
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$13300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiConfigStore;->updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V

    .line 8199
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$13200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v4

    # invokes: Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$28000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8202
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$13300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    const-string v5, "frequency"

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 8203
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    .line 8205
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-boolean v3, v3, Landroid/net/wifi/WifiStateMachine;->mObtainIp:Z

    if-nez v3, :cond_3

    .line 8206
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iput v7, v3, Landroid/net/wifi/WifiStateMachine;->mIsReconn:I

    .line 8228
    :cond_2
    :goto_0
    return-void

    .line 8209
    :cond_3
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v3

    invoke-static {v3}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    .line 8210
    .local v0, "address":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 8211
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/wifi/WifiStateMachine;->mIpAddress:Ljava/lang/String;

    .line 8212
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, v3, Landroid/net/wifi/WifiStateMachine;->mIpAddress:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, v3, Landroid/net/wifi/WifiStateMachine;->mNetInterfaceName:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 8213
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Add new rule. mNetInterfaceName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, v5, Landroid/net/wifi/WifiStateMachine;->mNetInterfaceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIpAddress = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, v5, Landroid/net/wifi/WifiStateMachine;->mIpAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 8215
    :cond_4
    :try_start_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, v4, Landroid/net/wifi/WifiStateMachine;->mNetInterfaceName:Ljava/lang/String;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, v5, Landroid/net/wifi/WifiStateMachine;->mIpAddress:Ljava/lang/String;

    const-string v6, "add"

    invoke-interface {v3, v4, v5, v6}, Landroid/os/INetworkManagementService;->controlPrivatePacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 8216
    :catch_0
    move-exception v1

    .line 8217
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v3, "WifiStateMachine"

    const-string v4, "controlPrivatePacket error!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 8221
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 8222
    .local v1, "e":Ljava/lang/AssertionError;
    const-string v3, "WifiStateMachine"

    const-string v4, "intToInetAddress failed! AssertionError"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8223
    .end local v1    # "e":Ljava/lang/AssertionError;
    :catch_2
    move-exception v2

    .line 8224
    .local v2, "re":Landroid/os/RemoteException;
    const-string v3, "WifiStateMachine"

    const-string v4, "intToInetAddress failed! RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8225
    .end local v2    # "re":Landroid/os/RemoteException;
    :catch_3
    move-exception v3

    goto/16 :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 26
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 8231
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    sparse-switch v21, :sswitch_data_0

    .line 8456
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " what="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " NOT_HANDLED"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$35100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8457
    const/16 v21, 0x0

    .line 8459
    :goto_0
    return v21

    .line 8233
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " POOR_LINK_DETECTED: no transition"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$33600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8235
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiStateMachine;->access$33700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 8236
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/net/wifi/WifiConfigStore;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 8237
    .local v4, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v4, :cond_1

    .line 8238
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mManualConnectionId:I
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getDefaultAp()Z

    move-result v21

    if-nez v21, :cond_1

    iget-boolean v0, v4, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:Z

    move/from16 v21, v0

    if-nez v21, :cond_1

    .line 8240
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    const/16 v22, 0xb

    const/16 v23, 0x1

    # invokes: Landroid/net/wifi/WifiStateMachine;->broadcastNotificationMessage(IZ)V
    invoke-static/range {v21 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$33800(Landroid/net/wifi/WifiStateMachine;IZ)V

    .line 8241
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWaitForUserSelectionState:Lcom/android/internal/util/State;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$33900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v22

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v21 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$34000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 8459
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_1
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 8246
    .restart local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 8248
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/net/wifi/WifiConfigStore;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v20

    .line 8250
    .local v20, "usableInternetConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v20, :cond_3

    .line 8251
    const-string v21, "WifiStateMachine"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "WifiConfiguration usableInternetConfig is NULL! - NetworkId: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v23 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8263
    .end local v20    # "usableInternetConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    :goto_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 8264
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v23 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/net/wifi/WifiStateMachine;->access$13200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    invoke-virtual/range {v21 .. v25}, Landroid/net/wifi/WifiConfigStore;->disablePoorNetwork(IILjava/lang/String;Z)Z

    goto/16 :goto_1

    .line 8252
    .restart local v20    # "usableInternetConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 8253
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    .line 8254
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$13300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v22

    const-string/jumbo v23, "usable_internet"

    const-string v24, "0"

    invoke-virtual/range {v21 .. v24}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 8258
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    .line 8259
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v21

    move-object/from16 v0, v20

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/net/wifi/WifiConfigStore;->updateUsableInternet(IZ)V

    goto/16 :goto_2

    .line 8267
    .end local v20    # "usableInternetConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 8268
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v23 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/net/wifi/WifiStateMachine;->access$13200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v21 .. v25}, Landroid/net/wifi/WifiConfigStore;->disablePoorNetwork(IILjava/lang/String;Z)Z

    goto/16 :goto_1

    .line 8272
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    sget-object v22, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static/range {v21 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$19300(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V

    .line 8273
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$13300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v22

    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual/range {v21 .. v23}, Landroid/net/wifi/WifiConfigStore;->updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V

    .line 8274
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$13200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v22

    # invokes: Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$28000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8282
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    const v22, 0x20047

    invoke-virtual/range {v21 .. v22}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 8283
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/net/wifi/WifiStateMachine;->mIsReconn:I

    .line 8284
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$29500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v22

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v21 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$34100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 8286
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v21

    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    const-string v22, "******** POOR LINK DETECTED BUT POOR NETWORK AVOIDANCE IS DISABLED (VerifyingLinkState)*********"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$34200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8287
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mCaptivePortalCheckState:Lcom/android/internal/util/State;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$34300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v22

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v21 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$34400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 8294
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " GOOD_LINK_DETECTED: transition to captive portal check"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$34500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8296
    const/4 v15, 0x0

    .line 8297
    .local v15, "needUpdateConfig":Z
    const/4 v14, 0x0

    .line 8298
    .local v14, "needDisableCaptivePortal":Z
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    .line 8299
    .local v9, "goodReason":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/net/wifi/WifiConfigStore;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 8301
    .restart local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v4, :cond_8

    .line 8302
    const-string v21, "WifiStateMachine"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "WifiConfiguration captivePortalConfig is NULL! - NetworkId: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v23 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8304
    :cond_8
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v9, v0, :cond_11

    .line 8305
    const/4 v13, 0x1

    .line 8306
    .local v13, "isFirstDetection":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/net/wifi/WifiInfo;->setCaptivePortal(Z)V

    .line 8307
    if-eqz v4, :cond_9

    .line 8308
    const/4 v15, 0x1

    .line 8309
    iget-boolean v0, v4, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    move/from16 v21, v0

    if-nez v21, :cond_c

    const/4 v13, 0x1

    .line 8310
    :goto_3
    const/16 v21, 0x1

    move/from16 v0, v21

    iput-boolean v0, v4, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    .line 8311
    const/16 v21, 0x0

    move/from16 v0, v21

    iput-boolean v0, v4, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    .line 8313
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mManualConnectionId:I
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_d

    if-nez v13, :cond_d

    .line 8314
    const/4 v14, 0x1

    .line 8352
    .end local v13    # "isFirstDetection":Z
    :cond_a
    :goto_4
    if-eqz v15, :cond_b

    .line 8353
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 8354
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfigStore;->saveConfig()Z

    .line 8356
    :cond_b
    if-eqz v14, :cond_13

    .line 8357
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v22

    const/16 v23, 0xd

    invoke-virtual/range {v21 .. v23}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 8359
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v23 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    # invokes: Landroid/net/wifi/WifiStateMachine;->notifyDisabledCaptivePortalStatus(ILjava/lang/String;Z)V
    invoke-static/range {v21 .. v24}, Landroid/net/wifi/WifiStateMachine;->access$16700(Landroid/net/wifi/WifiStateMachine;ILjava/lang/String;Z)V

    goto/16 :goto_1

    .line 8309
    .restart local v13    # "isFirstDetection":Z
    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 8316
    :cond_d
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v21

    if-eqz v21, :cond_e

    const-string v21, "WifiStateMachine"

    const-string v22, "It\'s manual connection!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8317
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    # invokes: Landroid/net/wifi/WifiStateMachine;->supressBrowserOnCaptivePortal()Z
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiStateMachine;->access$34600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v21

    if-nez v21, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mFreeWifiScanOpenApCheck:I
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiStateMachine;->access$34700(Landroid/net/wifi/WifiStateMachine;)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    .line 8320
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    # invokes: Landroid/net/wifi/WifiStateMachine;->notifyCaptivePortal(Z)V
    invoke-static/range {v21 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$16800(Landroid/net/wifi/WifiStateMachine;Z)V

    .line 8322
    :try_start_0
    new-instance v12, Landroid/content/Intent;

    const-string v21, "android.intent.action.VIEW"

    const-string v22, "http://www.google.com"

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 8323
    .local v12, "intent":Landroid/content/Intent;
    const/high16 v21, 0x10400000

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 8325
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiStateMachine;->access$2800(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v21

    sget-object v22, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 8326
    .end local v12    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v8

    .line 8327
    .local v8, "e":Landroid/content/ActivityNotFoundException;
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v21

    if-eqz v21, :cond_a

    const-string v21, "WifiStateMachine"

    const-string v22, "We have not broswer to handle android.intent.action.VIEW"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 8318
    .end local v8    # "e":Landroid/content/ActivityNotFoundException;
    :cond_10
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v21

    if-eqz v21, :cond_a

    const-string v21, "WifiStateMachine"

    const-string v22, "Supress Browser When Verizon Setup WiFi running"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 8332
    .end local v13    # "isFirstDetection":Z
    :cond_11
    if-eqz v4, :cond_a

    .line 8333
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v21

    if-eqz v21, :cond_12

    iget-boolean v0, v4, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    move/from16 v21, v0

    if-nez v21, :cond_12

    .line 8334
    const/16 v21, 0x1

    move/from16 v0, v21

    iput-boolean v0, v4, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    .line 8336
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiStateMachine;->access$33700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v21

    if-eqz v21, :cond_a

    const/16 v21, 0x2

    move/from16 v0, v21

    if-eq v9, v0, :cond_a

    iget-boolean v0, v4, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    move/from16 v21, v0

    if-nez v21, :cond_a

    .line 8339
    const/16 v21, 0x1

    move/from16 v0, v21

    iput-boolean v0, v4, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    .line 8340
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$13300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v22

    const-string/jumbo v23, "usable_internet"

    const-string v24, "1"

    invoke-virtual/range {v21 .. v24}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 8344
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    .line 8345
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v21

    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Landroid/net/wifi/WifiConfigStore;->updateUsableInternet(IZ)V

    goto/16 :goto_4

    .line 8363
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mCaptivePortalCheckState:Lcom/android/internal/util/State;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$34300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v22

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v21 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$34800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 8367
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v9    # "goodReason":I
    .end local v14    # "needDisableCaptivePortal":Z
    .end local v15    # "needUpdateConfig":Z
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/wifi/WifiStateMachine;->mIsReconn:I

    move/from16 v21, v0

    if-nez v21, :cond_14

    .line 8368
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "SCAN_RESULTS_EVENT but in connecting state NOT_HANDLED"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$34900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8369
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 8372
    :cond_14
    const/4 v3, 0x1

    .line 8373
    .local v3, "bKeepL2":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v18

    .line 8374
    .local v18, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    .line 8375
    .local v6, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiStateMachine;->access$2800(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string/jumbo v22, "wifi_hotspot20_enable"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1c

    const/4 v2, 0x1

    .line 8380
    .local v2, "bHS20Enabled":Z
    :goto_5
    if-eqz v18, :cond_24

    .line 8381
    if-eqz v2, :cond_17

    .line 8382
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_15
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_17

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/wifi/ScanResult;

    .line 8383
    .local v16, "result":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "HS20"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_15

    .line 8384
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v21

    if-eqz v21, :cond_16

    const-string v21, "WifiStateMachine"

    const-string v22, "HS20 AP is found. Disconnect L2."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8385
    :cond_16
    const/4 v3, 0x0

    .line 8391
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v16    # "result":Landroid/net/wifi/ScanResult;
    :cond_17
    if-eqz v3, :cond_23

    if-eqz v6, :cond_23

    .line 8392
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_18
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_23

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 8393
    .restart local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v0, v4, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    move/from16 v21, v0

    if-eqz v21, :cond_18

    .line 8394
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_18

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/ScanResult;

    .line 8395
    .local v17, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 8396
    .local v5, "configSsid":Ljava/lang/String;
    const/4 v7, -0x1

    .line 8397
    .local v7, "configuredSecurity":I
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/util/BitSet;->get(I)Z

    move-result v21

    if-eqz v21, :cond_1d

    .line 8398
    const/4 v7, 0x2

    .line 8408
    :goto_7
    const/16 v19, 0x0

    .line 8409
    .local v19, "scanedSecurity":I
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "WEP"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_21

    .line 8410
    const/16 v19, 0x1

    .line 8417
    :cond_1a
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v21

    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_19

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_19

    move/from16 v0, v19

    if-ne v7, v0, :cond_19

    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_19

    iget-boolean v0, v4, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    move/from16 v21, v0

    if-nez v21, :cond_19

    .line 8422
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v21

    if-eqz v21, :cond_1b

    const-string v21, "WifiStateMachine"

    const-string v22, "There\'s internet available AP. Disable current AP."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8423
    :cond_1b
    const/4 v3, 0x0

    .line 8424
    goto/16 :goto_6

    .line 8375
    .end local v2    # "bHS20Enabled":Z
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "configSsid":Ljava/lang/String;
    .end local v7    # "configuredSecurity":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v17    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v19    # "scanedSecurity":I
    :cond_1c
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 8399
    .restart local v2    # "bHS20Enabled":Z
    .restart local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v5    # "configSsid":Ljava/lang/String;
    .restart local v7    # "configuredSecurity":I
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v17    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_1d
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Ljava/util/BitSet;->get(I)Z

    move-result v21

    if-nez v21, :cond_1e

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    invoke-virtual/range {v21 .. v22}, Ljava/util/BitSet;->get(I)Z

    move-result v21

    if-nez v21, :cond_1e

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v21, v0

    const/16 v22, 0x7

    invoke-virtual/range {v21 .. v22}, Ljava/util/BitSet;->get(I)Z

    move-result v21

    if-nez v21, :cond_1e

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v21, v0

    const/16 v22, 0x9

    invoke-virtual/range {v21 .. v22}, Ljava/util/BitSet;->get(I)Z

    move-result v21

    if-eqz v21, :cond_1f

    .line 8403
    :cond_1e
    const/4 v7, 0x3

    goto/16 :goto_7

    .line 8405
    :cond_1f
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    if-eqz v21, :cond_20

    const/4 v7, 0x1

    :goto_9
    goto/16 :goto_7

    :cond_20
    const/4 v7, 0x0

    goto :goto_9

    .line 8411
    .restart local v19    # "scanedSecurity":I
    :cond_21
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "PSK"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_22

    .line 8412
    const/16 v19, 0x2

    goto/16 :goto_8

    .line 8413
    :cond_22
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "EAP"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_1a

    .line 8414
    const/16 v19, 0x3

    goto/16 :goto_8

    .line 8433
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "configSsid":Ljava/lang/String;
    .end local v7    # "configuredSecurity":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v17    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v19    # "scanedSecurity":I
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    # invokes: Landroid/net/wifi/WifiStateMachine;->setScanResults()V
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiStateMachine;->access$15800(Landroid/net/wifi/WifiStateMachine;)V

    .line 8434
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    # invokes: Landroid/net/wifi/WifiStateMachine;->sendScanResultsAvailableBroadcast()V
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiStateMachine;->access$15900(Landroid/net/wifi/WifiStateMachine;)V

    .line 8435
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    # setter for: Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z
    invoke-static/range {v21 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$16002(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 8441
    :cond_24
    if-nez v3, :cond_0

    .line 8445
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    # invokes: Landroid/net/wifi/WifiStateMachine;->setScanResults()V
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiStateMachine;->access$15800(Landroid/net/wifi/WifiStateMachine;)V

    .line 8446
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    # invokes: Landroid/net/wifi/WifiStateMachine;->sendScanResultsAvailableBroadcast()V
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiStateMachine;->access$15900(Landroid/net/wifi/WifiStateMachine;)V

    .line 8447
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    # setter for: Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z
    invoke-static/range {v21 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$16002(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 8449
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v23 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/net/wifi/WifiStateMachine;->access$13200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v21 .. v25}, Landroid/net/wifi/WifiConfigStore;->disablePoorNetwork(IILjava/lang/String;Z)Z

    .line 8451
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$6700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v22

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v21 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$35000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 8231
    nop

    :sswitch_data_0
    .sparse-switch
        0x21015 -> :sswitch_0
        0x21016 -> :sswitch_1
        0x24005 -> :sswitch_2
    .end sparse-switch
.end method
