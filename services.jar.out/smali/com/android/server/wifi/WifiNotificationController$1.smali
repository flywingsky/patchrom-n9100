.class Lcom/android/server/wifi/WifiNotificationController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiNotificationController;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiNotificationController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiNotificationController;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 195
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const-string/jumbo v3, "wifi_state"

    const/4 v4, 0x4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiState:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiNotificationController;->access$002(Lcom/android/server/wifi/WifiNotificationController;I)I

    .line 199
    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->resetNotification()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiNotificationController;->access$100(Lcom/android/server/wifi/WifiNotificationController;)V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 205
    iget-object v3, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    iput-object v2, v3, Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 208
    sget-object v2, Lcom/android/server/wifi/WifiNotificationController$5;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    iget-object v3, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    iget-object v3, v3, Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 218
    :pswitch_0
    # getter for: Lcom/android/server/wifi/WifiNotificationController;->WIFI_SCREENCONNECTEDINFO:Z
    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController;->access$200()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v2}, Lcom/android/server/wifi/WifiNotificationController;->access$300(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 220
    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->showOngoingWifiNotificationForAtt(Z)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiNotificationController;->access$400(Lcom/android/server/wifi/WifiNotificationController;Z)V

    goto :goto_0

    .line 225
    :pswitch_1
    # getter for: Lcom/android/server/wifi/WifiNotificationController;->WIFI_SCREENCONNECTEDINFO:Z
    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController;->access$200()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mAttNotificationVisible:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiNotificationController;->access$500(Lcom/android/server/wifi/WifiNotificationController;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 227
    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->showOngoingWifiNotificationForAtt(Z)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiNotificationController;->access$400(Lcom/android/server/wifi/WifiNotificationController;Z)V

    .line 230
    :cond_2
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->resetNotification()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiNotificationController;->access$100(Lcom/android/server/wifi/WifiNotificationController;)V

    goto :goto_0

    .line 236
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 238
    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    iget-object v3, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    iget-object v3, v3, Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/android/server/wifi/WifiNotificationController;->access$300(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->checkAndSetNotification(Landroid/net/NetworkInfo;Ljava/util/List;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/WifiNotificationController;->access$600(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/NetworkInfo;Ljava/util/List;)V

    goto :goto_0

    .line 240
    :cond_4
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 241
    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->updateResources()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiNotificationController;->access$700(Lcom/android/server/wifi/WifiNotificationController;)V

    goto/16 :goto_0

    .line 242
    :cond_5
    const-string v2, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    const-string v2, "nid"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 244
    .local v1, "nid":I
    # getter for: Lcom/android/server/wifi/WifiNotificationController;->ICON_NETWORKS_AVAILABLE:I
    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController;->access$800()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 245
    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # setter for: Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiNotificationController;->access$902(Lcom/android/server/wifi/WifiNotificationController;Z)Z

    goto/16 :goto_0

    .line 246
    :cond_6
    const v2, 0x2df96b

    if-ne v1, v2, :cond_0

    .line 250
    # getter for: Lcom/android/server/wifi/WifiNotificationController;->WIFI_SCREENCONNECTEDINFO:Z
    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController;->access$200()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # setter for: Lcom/android/server/wifi/WifiNotificationController;->mAttNotificationVisible:Z
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiNotificationController;->access$502(Lcom/android/server/wifi/WifiNotificationController;Z)Z

    goto/16 :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
