.class Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QualityCheckingState"
.end annotation


# instance fields
.field private mLastRssi:I

.field private mSampleCount:I

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 1523
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1529
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->bSetQcResult:Z
    invoke-static {v0, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9302(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 1530
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1532
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z
    invoke-static {v0, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7402(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 1533
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1534
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9600(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    .line 1541
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    .line 1542
    return-void

    .line 1536
    :cond_1
    iput v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->mSampleCount:I

    .line 1537
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->mLastRssi:I

    .line 1538
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v2, 0x2100b

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9704(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1539
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v1, 0x1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9800(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    goto :goto_0
.end method

.method public exit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1754
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exit\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1755
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13000(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1756
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WifiWatchdogStateMachine"

    const-string v1, "There is a request need to be aborted!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13000(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13000(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V

    .line 1759
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13000(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1763
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v0, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13002(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    .line 1764
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13100(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1765
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "WifiWatchdogStateMachine"

    const-string v1, "There is a request need to be aborted!! (SSL)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    :cond_4
    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13100(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1771
    :cond_5
    :goto_1
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v0, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13102(Landroid/net/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    .line 1772
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v1, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCRetry:I
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10302(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 1773
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v0

    const v1, 0x21020

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 1774
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v0

    const v1, 0x21024

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 1775
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v0

    const v1, 0x21025

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 1776
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualitySocketHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;

    move-result-object v0

    const v1, 0x21026

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->removeMessages(I)V

    .line 1777
    return-void

    .line 1768
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1760
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 23
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1546
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "processMessage\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1547
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 1548
    .local v11, "now":J
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_0

    .line 1749
    const/16 v17, 0x0

    .end local v11    # "now":J
    :goto_0
    return v17

    .line 1550
    .restart local v11    # "now":J
    :sswitch_0
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 1551
    .local v6, "id":I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    .line 1552
    .local v13, "result":I
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v17

    if-eqz v17, :cond_1

    const-string v17, "WifiWatchdogStateMachine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[REPORT_QC_RESULT] id : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPassBytes:I
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v17

    move/from16 v0, v17

    if-lt v13, v0, :cond_8

    .line 1554
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v17

    if-eqz v17, :cond_2

    const-string v17, "WifiWatchdogStateMachine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Passed by "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "bytes"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " (mPassBytes/mGoodRxThreshold: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPassBytes:I
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mGoodRxThreshold:I
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10100(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNetworkStatsAnalyzer:Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v18, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mGoodRxThreshold:I
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10100(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v18

    move/from16 v0, v18

    if-lt v13, v0, :cond_5

    .end local v11    # "now":J
    :goto_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v12}, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->setGoodRxStateNow(J)V

    .line 1556
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCRetry:I
    invoke-static/range {v17 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10302(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 1557
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v17

    if-nez v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mReportedLinkStatusType:I
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7300(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 1559
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v17

    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 1560
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static/range {v17 .. v19}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    .line 1576
    :cond_3
    :goto_2
    const/16 v17, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mEnableSnsDuringConnected:Z
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7702(Z)Z

    .line 1577
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v18, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v18

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v17 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10400(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    .line 1633
    :cond_4
    :goto_3
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 1555
    .restart local v11    # "now":J
    :cond_5
    const-wide/16 v11, 0x0

    goto :goto_1

    .line 1566
    .end local v11    # "now":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static/range {v17 .. v19}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto :goto_2

    .line 1572
    :cond_7
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mEnableSnsDuringConnected:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7700()Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mReportedLinkStatusType:I
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7300(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v17

    if-nez v17, :cond_3

    .line 1573
    const-string v17, "WifiWatchdogStateMachine"

    const-string v18, "First quality result after enabling SNS option. Send good noti."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static/range {v17 .. v19}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto :goto_2

    .line 1579
    .restart local v11    # "now":J
    :cond_8
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v17

    if-eqz v17, :cond_9

    const-string v17, "WifiWatchdogStateMachine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failed by "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "bytes"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " (mPassBytes/mGoodRxThreshold: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPassBytes:I
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mGoodRxThreshold:I
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10100(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    :cond_9
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v17

    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 1583
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v17

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    const-string v18, "could not identify a captive portal state due to the poor quality"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1584
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bytes:I

    .line 1585
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-object/from16 v17, v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v18

    const/16 v19, 0x2

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    .line 1586
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10600(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x2

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static/range {v17 .. v19}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    .line 1593
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 1594
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7400(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v17

    if-nez v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v18, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v18

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v17 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10700(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 1596
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v18, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v18

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v17 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10800(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 1598
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSets:I
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_e

    .line 1599
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v17

    if-nez v17, :cond_d

    .line 1600
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    .line 1601
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bytes:I

    .line 1602
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-object/from16 v17, v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v18

    const/16 v19, 0x2

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    .line 1603
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10600(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 1604
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->bSetQcResult:Z
    invoke-static/range {v17 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9302(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    add-int/lit8 v18, v6, 0x1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static/range {v17 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9800(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    goto/16 :goto_3

    .line 1607
    :cond_e
    if-nez v13, :cond_10

    .line 1608
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bytes:I

    .line 1609
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-object/from16 v17, v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v18

    const/16 v19, 0x2

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    .line 1610
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10600(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 1611
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x3

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static/range {v17 .. v19}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    .line 1626
    :cond_f
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 1627
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7400(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v17

    if-nez v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v18, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v18

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v17 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11000(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 1616
    :cond_10
    if-lez v13, :cond_f

    .line 1617
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->bytes:I

    .line 1618
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-object/from16 v17, v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v18

    const/16 v19, 0x2

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    .line 1619
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10600(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 1620
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x2

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static/range {v17 .. v19}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto :goto_4

    .line 1629
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v18, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v18

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v17 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11100(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 1636
    .end local v6    # "id":I
    .end local v13    # "result":I
    :sswitch_1
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v17

    if-eqz v17, :cond_12

    const-string v17, "WifiWatchdogStateMachine"

    const-string v18, "[QualityCheckingState] CMD_QUALITY_RECHECK"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static/range {v17 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9800(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    .line 1638
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 1641
    :sswitch_2
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v17

    if-eqz v17, :cond_13

    const-string v17, "WifiWatchdogStateMachine"

    const-string v18, "[QualityCheckingState] DELAYED_QUALITY_CHECK"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static/range {v17 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9800(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    .line 1643
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 1646
    :sswitch_3
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v17

    if-eqz v17, :cond_14

    const-string v17, "WifiWatchdogStateMachine"

    const-string v18, "[QualityCheckingState] EVENT_AUTHENTICATION_COMPLETE"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v18, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    move-result-object v18

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v17 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11300(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    .line 1648
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 1651
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->updateSettings()V
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2500(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 1652
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 1653
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPauseStartTime:J
    invoke-static/range {v17 .. v19}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11402(Landroid/net/wifi/WifiWatchdogStateMachine;J)J

    .line 1654
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I
    invoke-static/range {v17 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11502(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 1656
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v17

    if-nez v17, :cond_16

    .line 1657
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v18, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v18

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v17 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11600(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    .line 1659
    :cond_16
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 1662
    :sswitch_5
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v17

    if-eqz v17, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    const-string v18, "[QualityCheckingState] EVENT_ENABLE_HIPRI"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1663
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v18, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWaitingSwitchState:Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;

    move-result-object v18

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v17 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11900(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    .line 1664
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 1667
    :sswitch_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v18, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9700(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_18

    .line 1668
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v17

    const v18, 0x25014

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 1669
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v18, v0

    const v19, 0x2100b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9704(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v20

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v18

    const-wide/16 v19, 0x3e8

    invoke-virtual/range {v17 .. v20}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1672
    :cond_18
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 1675
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/RssiPacketCountInfo;

    .line 1676
    .local v7, "info":Landroid/net/wifi/RssiPacketCountInfo;
    iget v14, v7, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    .line 1677
    .local v14, "rssi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v17

    if-eqz v17, :cond_19

    .line 1678
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 1680
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->mLastRssi:I

    move/from16 v17, v0

    add-int v17, v17, v14

    div-int/lit8 v10, v17, 0x2

    .line 1681
    .local v10, "mrssi":I
    iget v15, v7, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    .line 1682
    .local v15, "txbad":I
    iget v0, v7, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    move/from16 v16, v0

    .line 1683
    .local v16, "txgood":I
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v17

    if-eqz v17, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[QC]Fetch RSSI succeed, rssi="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mrssi="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " txbad="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " txgood="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1688
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v17

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$12100(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)J

    move-result-wide v17

    sub-long v17, v11, v17

    const-wide/16 v19, 0x7d0

    cmp-long v17, v17, v19

    if-gez v17, :cond_1e

    .line 1689
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v17

    if-nez v17, :cond_1b

    .line 1690
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    new-instance v18, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    invoke-direct/range {v18 .. v21}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;D)V

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static/range {v17 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4902(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    .line 1693
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLastTxBad:I
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6700(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v17

    sub-int v2, v15, v17

    .line 1694
    .local v2, "dbad":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLastTxGood:I
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6800(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v17

    sub-int v4, v16, v17

    .line 1695
    .local v4, "dgood":I
    add-int v5, v2, v4

    .line 1697
    .local v5, "dtotal":I
    if-lez v5, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v17

    if-eqz v17, :cond_1e

    .line 1699
    int-to-double v0, v2

    move-wide/from16 v17, v0

    int-to-double v0, v5

    move-wide/from16 v19, v0

    div-double v8, v17, v19

    .line 1701
    .local v8, "loss":D
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9, v5}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->update(DI)V

    .line 1703
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 1704
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v17, "#.##"

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1705
    .local v3, "df":Ljava/text/DecimalFormat;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[QC]Incremental loss="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Current loss="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v19

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$12200(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059000000000000L    # 100.0

    mul-double v19, v19, v21

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "% volume="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v19

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$12300(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1710
    .end local v3    # "df":Ljava/text/DecimalFormat;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v8, v9, v5}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->updateLoss(IDI)V

    .line 1713
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v17

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$12200(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v17

    const-wide/high16 v19, 0x3fe0000000000000L    # 0.5

    cmpl-double v17, v17, v19

    if-lez v17, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v17

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$12300(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v17

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->POOR_LINK_MIN_VOLUME:D
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500()D

    move-result-wide v19

    cmpl-double v17, v17, v19

    if-lez v17, :cond_1f

    .line 1715
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->mSampleCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->mSampleCount:I

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_1e

    .line 1717
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v17

    if-eqz v17, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Poor link for link sample count, rssi="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1718
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v18, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcId:I

    .line 1719
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    .line 1720
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-object/from16 v17, v0

    const/16 v18, 0xc

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    .line 1721
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-object/from16 v18, v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v19

    const/16 v20, 0x2

    aget-object v19, v19, v20

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 1722
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10600(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 1724
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v17

    const v18, 0x21031

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendEmptyMessage(I)Z

    .line 1725
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x2

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static/range {v17 .. v19}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    .line 1726
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    const v18, 0x21023

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static/range {v17 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12700(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    .line 1728
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9704(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    .line 1737
    .end local v2    # "dbad":I
    .end local v4    # "dgood":I
    .end local v5    # "dtotal":I
    .end local v8    # "loss":D
    :cond_1e
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v17

    move-object/from16 v0, v17

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J
    invoke-static {v0, v11, v12}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$12102(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    .line 1738
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLastTxBad:I
    invoke-static {v0, v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6702(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 1739
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLastTxGood:I
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6802(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 1740
    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->mLastRssi:I

    .line 1741
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 1732
    .restart local v2    # "dbad":I
    .restart local v4    # "dgood":I
    .restart local v5    # "dtotal":I
    .restart local v8    # "loss":D
    :cond_1f
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->mSampleCount:I

    goto :goto_5

    .line 1745
    .end local v2    # "dbad":I
    .end local v4    # "dgood":I
    .end local v5    # "dtotal":I
    .end local v7    # "info":Landroid/net/wifi/RssiPacketCountInfo;
    .end local v8    # "loss":D
    .end local v10    # "mrssi":I
    .end local v14    # "rssi":I
    .end local v15    # "txbad":I
    .end local v16    # "txgood":I
    :sswitch_8
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v17

    if-eqz v17, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    const-string v18, "RSSI_FETCH_FAILED"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1746
    :cond_20
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 1548
    :sswitch_data_0
    .sparse-switch
        0x21006 -> :sswitch_4
        0x2100b -> :sswitch_6
        0x2100c -> :sswitch_1
        0x2101f -> :sswitch_2
        0x21023 -> :sswitch_0
        0x21042 -> :sswitch_5
        0x21047 -> :sswitch_3
        0x25015 -> :sswitch_7
        0x25016 -> :sswitch_8
    .end sparse-switch
.end method
