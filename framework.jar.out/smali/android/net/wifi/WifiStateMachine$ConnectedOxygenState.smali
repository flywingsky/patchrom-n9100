.class Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectedOxygenState"
.end annotation


# instance fields
.field private mIbssRunning:Z

.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 8570
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 8575
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$19300(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V

    .line 8576
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$13300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfigStore;->updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V

    .line 8577
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfigStore;->isIBSS(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8578
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->mIbssRunning:Z

    .line 8579
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->showStatusBarOxygenIcon()V
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$36400(Landroid/net/wifi/WifiStateMachine;)V

    .line 8580
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->startOxygenStateMachine()V

    .line 8582
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$13200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v1

    # invokes: Landroid/net/wifi/WifiStateMachine;->sendOxygenStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$36500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8583
    return-void
.end method

.method public exit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 8617
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$19300(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V

    .line 8618
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->callResetTimer(Z)V
    invoke-static {v0, v3}, Landroid/net/wifi/WifiStateMachine;->access$13600(Landroid/net/wifi/WifiStateMachine;Z)V

    .line 8620
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$13300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfigStore;->updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V

    .line 8621
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->mIbssRunning:Z

    if-eqz v0, :cond_0

    .line 8622
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->stopOxygenStateMachine()V

    .line 8623
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->clearStatusBarOxygenIcon()V
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$36700(Landroid/net/wifi/WifiStateMachine;)V

    .line 8624
    iput-boolean v3, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->mIbssRunning:Z

    .line 8626
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$13200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v1

    # invokes: Landroid/net/wifi/WifiStateMachine;->sendOxygenStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$36500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8627
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 8587
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 8610
    const/4 v0, 0x0

    .line 8612
    :goto_0
    return v0

    .line 8589
    :sswitch_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Landroid/net/wifi/WifiStateMachine;->handleSuspendMsg(I)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$23100(Landroid/net/wifi/WifiStateMachine;I)V

    .line 8612
    :goto_1
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 8598
    :sswitch_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$14100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$36600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 8599
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v1, 0x2000b

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_1

    .line 8587
    :sswitch_data_0
    .sparse-switch
        0x20056 -> :sswitch_0
        0x20160 -> :sswitch_1
        0x20161 -> :sswitch_1
        0x20162 -> :sswitch_1
        0x21015 -> :sswitch_1
        0x21016 -> :sswitch_1
        0x2400c -> :sswitch_2
    .end sparse-switch
.end method
