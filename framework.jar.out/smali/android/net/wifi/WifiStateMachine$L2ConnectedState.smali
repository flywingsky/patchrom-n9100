.class Landroid/net/wifi/WifiStateMachine$L2ConnectedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "L2ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 7732
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 7735
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # operator++ for: Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$28508(Landroid/net/wifi/WifiStateMachine;)I

    .line 7736
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$4200(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7737
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v1, 0x20053

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$28500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->sendMessage(III)V

    .line 7739
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 7743
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mManualConnectionId:I
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)I

    move-result v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v1, -0x63

    # setter for: Landroid/net/wifi/WifiStateMachine;->mManualConnectionId:I
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$902(Landroid/net/wifi/WifiStateMachine;I)I

    .line 7744
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x0

    # invokes: Landroid/net/wifi/WifiStateMachine;->notifyCaptivePortal(Z)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$16800(Landroid/net/wifi/WifiStateMachine;Z)V

    .line 7745
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$15500(Landroid/net/wifi/WifiStateMachine;)V

    .line 7746
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 18
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 7750
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    sparse-switch v13, :sswitch_data_0

    .line 8053
    const/4 v13, 0x0

    .line 8056
    :goto_0
    return v13

    .line 7752
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->handlePreDhcpSetup()V

    .line 8056
    :cond_0
    :goto_1
    const/4 v13, 0x1

    goto :goto_0

    .line 7755
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->handlePostDhcpSetup()V

    .line 7756
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    .line 7757
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v14, "DHCP successful"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$28600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7759
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v14, 0x0

    # setter for: Landroid/net/wifi/WifiStateMachine;->mRoamingRenew:Z
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$28702(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 7761
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/net/DhcpResults;

    # invokes: Landroid/net/wifi/WifiStateMachine;->handleSuccessfulIpConfiguration(Landroid/net/DhcpResults;)V
    invoke-static {v14, v13}, Landroid/net/wifi/WifiStateMachine;->access$28800(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpResults;)V

    .line 7762
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v14, "complete"

    # invokes: Landroid/net/wifi/WifiStateMachine;->notifyWatchdogDhcpSession(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$28900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7763
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$29000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$29100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v14

    if-eq v13, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$29200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mConnectedOxygenState:Lcom/android/internal/util/State;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$29300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v14

    if-ne v13, v14, :cond_3

    .line 7770
    :cond_2
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v14, "DHCP renew post action!!! - Don\'t need to make state transition"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$29400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_1

    .line 7776
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$2800(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v13

    invoke-virtual {v13}, Landroid/sec/enterprise/WifiPolicyCache;->getAutomaticConnectionToWifi()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 7777
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$29500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v14

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$29600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 7779
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mCanConnectNow:Z
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$26300(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$13300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mAllowedNetId:I
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$26200(Landroid/net/wifi/WifiStateMachine;)I

    move-result v14

    if-ne v13, v14, :cond_5

    .line 7780
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v14, 0x0

    # setter for: Landroid/net/wifi/WifiStateMachine;->mCanConnectNow:Z
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$26302(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 7781
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v14, -0x1

    # setter for: Landroid/net/wifi/WifiStateMachine;->mAllowedNetId:I
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$26202(Landroid/net/wifi/WifiStateMachine;I)I

    .line 7782
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$29500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v14

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$29700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 7784
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$13300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(I)Z

    .line 7785
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$6700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v14

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$29800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 7792
    :cond_6
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_0

    .line 7793
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v14, "DHCP failed"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$29900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7794
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v14, "complete"

    # invokes: Landroid/net/wifi/WifiStateMachine;->notifyWatchdogDhcpSession(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$28900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7795
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mRoamingRenew:Z
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$28700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_9

    .line 7796
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v14, "Maintain Current connection if DHCP failed by Roaming RENEW"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$30000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7797
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v14, 0x0

    # setter for: Landroid/net/wifi/WifiStateMachine;->mRoamingRenew:Z
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$28702(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 7798
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$7000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 7799
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v14, "start"

    # invokes: Landroid/net/wifi/WifiStateMachine;->notifyWatchdogDhcpSession(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$28900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7800
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$7000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v13

    const v14, 0x30002

    invoke-virtual {v13, v14}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 7801
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$7000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v13

    const v14, 0x30001

    invoke-virtual {v13, v14}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 7804
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->handleFailedIpConfiguration()V
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$30100(Landroid/net/wifi/WifiStateMachine;)V

    .line 7805
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$6700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v14

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$30200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 7810
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiNative;->disconnect()Z

    .line 7811
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$6700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v14

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$30300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 7814
    :sswitch_3
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 7815
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiNative;->disconnect()Z

    .line 7816
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v14, 0x1

    # setter for: Landroid/net/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$8302(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 7817
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$6700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v14

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$30400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 7821
    :sswitch_4
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_0

    .line 7822
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v14, 0x20049

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 7823
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    # invokes: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v13, v0}, Landroid/net/wifi/WifiStateMachine;->access$30500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 7827
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    # invokes: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v13, v0}, Landroid/net/wifi/WifiStateMachine;->access$30600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 7831
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/WorkSource;

    # invokes: Landroid/net/wifi/WifiStateMachine;->noteScanStart(ILandroid/os/WorkSource;)V
    invoke-static {v14, v15, v13}, Landroid/net/wifi/WifiStateMachine;->access$20600(Landroid/net/wifi/WifiStateMachine;ILandroid/os/WorkSource;)V

    .line 7832
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v14, 0x1

    # invokes: Landroid/net/wifi/WifiStateMachine;->startScanNative(I)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$20700(Landroid/net/wifi/WifiStateMachine;I)V

    goto/16 :goto_1

    .line 7837
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 7838
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v3, :cond_b

    .line 7841
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    invoke-static {v13, v3}, Landroid/net/wifi/WifiStateMachine;->access$25800(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    if-nez v3, :cond_a

    .line 7842
    const-string v13, "WifiStateMachine"

    const-string v14, "network not allowed"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7843
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v14, 0x25002

    const/4 v15, 0x0

    move-object/from16 v0, p1

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v13, v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->access$4100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7849
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/net/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v10

    .line 7850
    .local v10, "result":Landroid/net/wifi/NetworkUpdateResult;
    invoke-virtual {v10}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v7

    .line 7855
    .end local v10    # "result":Landroid/net/wifi/NetworkUpdateResult;
    .local v7, "netId":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v13

    if-eq v13, v7, :cond_0

    .line 7858
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 7852
    .end local v7    # "netId":I
    :cond_b
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .restart local v7    # "netId":I
    goto :goto_2

    .line 7861
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v7    # "netId":I
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 7862
    .local v1, "args":Landroid/os/Bundle;
    const-string v13, "BSSID"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7863
    .local v2, "bssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 7866
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 7868
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v2    # "bssid":Ljava/lang/String;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 7871
    .restart local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    invoke-static {v13, v3}, Landroid/net/wifi/WifiStateMachine;->access$25800(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    if-nez v3, :cond_c

    .line 7872
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v14, 0x25008

    const/4 v15, 0x0

    move-object/from16 v0, p1

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v13, v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->access$4100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7878
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/net/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v10

    .line 7879
    .restart local v10    # "result":Landroid/net/wifi/NetworkUpdateResult;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v13

    invoke-virtual {v10}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v14

    if-ne v13, v14, :cond_e

    .line 7880
    invoke-virtual {v10}, Landroid/net/wifi/NetworkUpdateResult;->hasIpChanged()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 7881
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v14, "Reconfiguring IP on connection"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$30700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7882
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$28100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v14

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$30800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 7884
    :cond_d
    invoke-virtual {v10}, Landroid/net/wifi/NetworkUpdateResult;->hasProxyChanged()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 7885
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v14, "Reconfiguring proxy on connection"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$30900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7886
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->updateLinkProperties()V
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$8500(Landroid/net/wifi/WifiStateMachine;)V

    .line 7890
    :cond_e
    invoke-virtual {v10}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_f

    .line 7891
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v14, 0x25009

    move-object/from16 v0, p1

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v13, v0, v14}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 7893
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v14, "Failed to save network"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$31000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7894
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v14, 0x25008

    const/4 v15, 0x0

    move-object/from16 v0, p1

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v13, v0, v14, v15}, Landroid/net/wifi/WifiStateMachine;->access$4100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7900
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v10    # "result":Landroid/net/wifi/NetworkUpdateResult;
    :sswitch_a
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v13

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v14, "Network reconnected established_roaming"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$31100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7901
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->monitorNetworkPropertiesUpdate()V
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$31200(Landroid/net/wifi/WifiStateMachine;)V

    .line 7902
    const/4 v8, 0x0

    .line 7904
    .local v8, "oldBssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$13200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    .line 7905
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v14, 0x0

    # setter for: Landroid/net/wifi/WifiStateMachine;->mRoamingRenew:Z
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$28702(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 7907
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$13300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v9

    .line 7908
    .local v9, "oldNetworkId":I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    # setter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$13302(Landroid/net/wifi/WifiStateMachine;I)I

    .line 7909
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    # setter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v14, v13}, Landroid/net/wifi/WifiStateMachine;->access$13202(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 7912
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$13200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 7913
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$13300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 7914
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$13300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiConfigStore;->isSkipInternetCheck(I)Z

    move-result v13

    if-nez v13, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$13300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/net/wifi/WifiConfigStore;->isUsingSamsungFlag(II)Z

    move-result v13

    if-nez v13, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$13300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v14

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/net/wifi/WifiConfigStore;->isUsingSamsungFlag(II)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 7920
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheck(Z)V

    .line 7923
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$13300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiStateMachine;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    .line 7924
    .local v12, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v12, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v13

    iget-boolean v14, v12, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiInfo;->setCaptivePortal(Z)V

    .line 7927
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$13300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiStateMachine;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    .line 7928
    if-eqz v12, :cond_14

    iget-boolean v13, v12, Landroid/net/wifi/WifiConfiguration;->isSharedAp:Z

    if-eqz v13, :cond_14

    .line 7929
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiInfo;->setSharedAp(Z)V

    .line 7930
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v13

    iget-object v14, v12, Landroid/net/wifi/WifiConfiguration;->expiration:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiInfo;->setExpiration(Ljava/lang/String;)V

    .line 7933
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->fetchFrequency()I
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$27900(Landroid/net/wifi/WifiStateMachine;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    .line 7936
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->getDhcpRenewAfterRoamingMode()I

    move-result v11

    .line 7937
    .local v11, "tmpDhcpRenewAfterRoamingMode":I
    packed-switch v11, :pswitch_data_0

    .line 7947
    :cond_15
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/net/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 7948
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v14, "Static ip - skip renew"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$31300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7949
    const/4 v11, -0x1

    .line 7952
    :cond_16
    if-nez v11, :cond_18

    .line 7953
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->CheckDhcpRenew()Z
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$31400(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v13

    if-eqz v13, :cond_19

    .line 7954
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$7000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v13

    if-eqz v13, :cond_18

    .line 7956
    const/4 v5, 0x0

    .line 7958
    .local v5, "ifcg":Landroid/net/InterfaceConfiguration;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v5

    .line 7959
    if-eqz v5, :cond_17

    .line 7960
    new-instance v13, Landroid/net/LinkAddress;

    const-string v14, "0.0.0.0"

    invoke-static {v14}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v5, v13}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 7961
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14, v5}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 7962
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v14, "Clearing prev IP address"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$31500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7968
    :cond_17
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v14, "start"

    # invokes: Landroid/net/wifi/WifiStateMachine;->notifyWatchdogDhcpSession(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$28900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7969
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$7000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v13

    const v14, 0x30002

    invoke-virtual {v13, v14}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 7970
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$7000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v13

    const v14, 0x30001

    invoke-virtual {v13, v14}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 8004
    .end local v5    # "ifcg":Landroid/net/InterfaceConfiguration;
    :cond_18
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->monitorNetworkPropertiesUpdate()V
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$31200(Landroid/net/wifi/WifiStateMachine;)V

    goto/16 :goto_1

    .line 7939
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$7000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v13

    if-eqz v13, :cond_15

    .line 7940
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v14, "start"

    # invokes: Landroid/net/wifi/WifiStateMachine;->notifyWatchdogDhcpSession(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$28900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7941
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$7000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v13

    const v14, 0x30003

    invoke-virtual {v13, v14}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 7964
    .restart local v5    # "ifcg":Landroid/net/InterfaceConfiguration;
    :catch_0
    move-exception v4

    .line 7965
    .local v4, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error configuring interface "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v15}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$31600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_4

    .line 7972
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "ifcg":Landroid/net/InterfaceConfiguration;
    :cond_19
    if-eqz v8, :cond_18

    .line 7973
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$13200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1c

    .line 7987
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNetworkLists:Landroid/net/wifi/WifiNetworkLists;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$16500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNetworkLists;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$13200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v8, v14}, Landroid/net/wifi/WifiNetworkLists;->findIpLeasedBefore(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 7989
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v13

    if-eqz v13, :cond_18

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IP is leased in this network: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " > "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v15}, Landroid/net/wifi/WifiStateMachine;->access$13200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", skip DHCP"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$31700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 7991
    :cond_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$7000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v13

    if-eqz v13, :cond_18

    .line 7993
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v13

    if-eqz v13, :cond_1b

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v14, "IP is not in this network , Start RENEW"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$31800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7994
    :cond_1b
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v14, 0x1

    # setter for: Landroid/net/wifi/WifiStateMachine;->mRoamingRenew:Z
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$28702(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 7995
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v14, "start"

    # invokes: Landroid/net/wifi/WifiStateMachine;->notifyWatchdogDhcpSession(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$28900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7996
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$7000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v13

    const v14, 0x30003

    invoke-virtual {v13, v14}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    goto/16 :goto_5

    .line 8000
    :cond_1c
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v13

    if-eqz v13, :cond_18

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " and "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v15}, Landroid/net/wifi/WifiStateMachine;->access$13200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " are same, skip DHCP"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$31900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 8007
    .end local v8    # "oldBssid":Ljava/lang/String;
    .end local v9    # "oldNetworkId":I
    .end local v11    # "tmpDhcpRenewAfterRoamingMode":I
    .end local v12    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :sswitch_b
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$28500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v14

    if-ne v13, v14, :cond_0

    .line 8009
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->fetchRssiAndLinkSpeedNative()V
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$32000(Landroid/net/wifi/WifiStateMachine;)V

    .line 8011
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v15, 0x20053

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v16, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiStateMachine;->access$28500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mPollRssiIntervalMsecs:I
    invoke-static {v15}, Landroid/net/wifi/WifiStateMachine;->access$32100(Landroid/net/wifi/WifiStateMachine;)I

    move-result v15

    int-to-long v15, v15

    invoke-virtual/range {v13 .. v16}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_1

    .line 8022
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v15, 0x1

    if-ne v13, v15, :cond_1d

    const/4 v13, 0x1

    :goto_6
    # setter for: Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v14, v13}, Landroid/net/wifi/WifiStateMachine;->access$4202(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 8023
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # operator++ for: Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$28508(Landroid/net/wifi/WifiStateMachine;)I

    .line 8024
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$4200(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 8026
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->fetchRssiAndLinkSpeedNative()V
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$32000(Landroid/net/wifi/WifiStateMachine;)V

    .line 8028
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v15, 0x20053

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v16, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiStateMachine;->access$28500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mPollRssiIntervalMsecs:I
    invoke-static {v15}, Landroid/net/wifi/WifiStateMachine;->access$32100(Landroid/net/wifi/WifiStateMachine;)I

    move-result v15

    int-to-long v15, v15

    invoke-virtual/range {v13 .. v16}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_1

    .line 8022
    :cond_1d
    const/4 v13, 0x0

    goto :goto_6

    .line 8037
    :sswitch_d
    new-instance v6, Landroid/net/wifi/RssiPacketCountInfo;

    invoke-direct {v6}, Landroid/net/wifi/RssiPacketCountInfo;-><init>()V

    .line 8038
    .local v6, "info":Landroid/net/wifi/RssiPacketCountInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->fetchRssiAndLinkSpeedNative()V
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$32000(Landroid/net/wifi/WifiStateMachine;)V

    .line 8039
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v13

    iput v13, v6, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    .line 8040
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->fetchPktcntNative(Landroid/net/wifi/RssiPacketCountInfo;)V
    invoke-static {v13, v6}, Landroid/net/wifi/WifiStateMachine;->access$32200(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/RssiPacketCountInfo;)V

    .line 8041
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v14, 0x25015

    move-object/from16 v0, p1

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v13, v0, v14, v6}, Landroid/net/wifi/WifiStateMachine;->access$4000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 8044
    .end local v6    # "info":Landroid/net/wifi/RssiPacketCountInfo;
    :sswitch_e
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v13

    if-eqz v13, :cond_1e

    const-string v13, "WifiStateMachine"

    const-string v14, "REQUEST_POWER_SAVE_OFF"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8045
    :cond_1e
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiNative;->setPowerSave(Z)V

    goto/16 :goto_1

    .line 8048
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpActive:Z
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$19500(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 8049
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v13

    if-eqz v13, :cond_1f

    const-string v13, "WifiStateMachine"

    const-string v14, "REQUEST_POWER_SAVE_ON"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8050
    :cond_1f
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiNative;->setPowerSave(Z)V

    goto/16 :goto_1

    .line 7750
    nop

    :sswitch_data_0
    .sparse-switch
        0x20047 -> :sswitch_6
        0x20048 -> :sswitch_4
        0x20049 -> :sswitch_2
        0x20050 -> :sswitch_5
        0x20052 -> :sswitch_c
        0x20053 -> :sswitch_b
        0x21013 -> :sswitch_e
        0x21014 -> :sswitch_f
        0x2300c -> :sswitch_3
        0x24003 -> :sswitch_a
        0x25001 -> :sswitch_7
        0x25007 -> :sswitch_9
        0x25014 -> :sswitch_d
        0x25021 -> :sswitch_8
        0x30004 -> :sswitch_0
        0x30005 -> :sswitch_1
    .end sparse-switch

    .line 7937
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
