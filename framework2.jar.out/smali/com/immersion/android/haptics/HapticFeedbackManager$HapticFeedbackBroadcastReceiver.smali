.class public Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HapticFeedbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/immersion/android/haptics/HapticFeedbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HapticFeedbackBroadcastReceiver"
.end annotation


# instance fields
.field protected mHfm:Lcom/immersion/android/haptics/HapticFeedbackManager;

.field final synthetic this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;


# direct methods
.method public constructor <init>(Lcom/immersion/android/haptics/HapticFeedbackManager;Lcom/immersion/android/haptics/HapticFeedbackManager;)V
    .locals 1
    .param p2, "owner"    # Lcom/immersion/android/haptics/HapticFeedbackManager;

    .prologue
    .line 712
    iput-object p1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 709
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;->mHfm:Lcom/immersion/android/haptics/HapticFeedbackManager;

    .line 713
    iput-object p2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;->mHfm:Lcom/immersion/android/haptics/HapticFeedbackManager;

    .line 714
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 718
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 720
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "package"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 723
    const-string v4, "HapticFeedbackManager"

    const/4 v5, 0x4

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 724
    const-string v4, "HapticFeedbackManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Proxy is \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    # getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z
    invoke-static {v6}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$100(Lcom/immersion/android/haptics/HapticFeedbackManager;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'. onReceive() --> package was removed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_0
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;->mHfm:Lcom/immersion/android/haptics/HapticFeedbackManager;

    invoke-virtual {v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->loadActiveTheme()V

    .line 776
    :cond_1
    :goto_0
    return-void

    .line 730
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    # getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z
    invoke-static {v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$100(Lcom/immersion/android/haptics/HapticFeedbackManager;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 732
    const-string v4, "HapticFeedbackManager"

    const/4 v5, 0x4

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 733
    const-string v4, "HapticFeedbackManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Proxy is \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    # getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z
    invoke-static {v6}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$100(Lcom/immersion/android/haptics/HapticFeedbackManager;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'. onReceive() --> action boot completed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_3
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;->mHfm:Lcom/immersion/android/haptics/HapticFeedbackManager;

    invoke-virtual {v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->notifySystemBoot()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 772
    :catch_0
    move-exception v1

    .line 773
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "HapticFeedbackManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Proxy is \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    # getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z
    invoke-static {v6}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$100(Lcom/immersion/android/haptics/HapticFeedbackManager;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'. Exception caught in onReceive()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 738
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 739
    const-string v4, "HapticFeedbackManager"

    const/4 v5, 0x4

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 740
    const-string v4, "HapticFeedbackManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Proxy is \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    # getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z
    invoke-static {v6}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$100(Lcom/immersion/android/haptics/HapticFeedbackManager;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'. onReceive() --> action user changed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_5
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    # getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$400(Lcom/immersion/android/haptics/HapticFeedbackManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 746
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    # getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z
    invoke-static {v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$100(Lcom/immersion/android/haptics/HapticFeedbackManager;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 747
    const-string v4, "android.intent.extra.user_handle"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 748
    .local v3, "userHandle":I
    const-string v4, "haptic_feedback_theme"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 749
    .local v2, "theme":Ljava/lang/String;
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;->mHfm:Lcom/immersion/android/haptics/HapticFeedbackManager;

    invoke-virtual {v4, v2}, Lcom/immersion/android/haptics/HapticFeedbackManager;->loadActiveTheme(Ljava/lang/String;)V

    .line 750
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    # setter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mCurrentUserID:I
    invoke-static {v4, v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$802(Lcom/immersion/android/haptics/HapticFeedbackManager;I)I

    goto/16 :goto_0

    .line 753
    .end local v2    # "theme":Ljava/lang/String;
    .end local v3    # "userHandle":I
    :cond_6
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;->mHfm:Lcom/immersion/android/haptics/HapticFeedbackManager;

    invoke-virtual {v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->loadActiveTheme()V

    goto/16 :goto_0

    .line 757
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.HAPTIC_THEME_SWITCHED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 758
    const-string v4, "HapticFeedbackManager"

    const/4 v5, 0x4

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 759
    const-string v4, "HapticFeedbackManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Proxy is \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    # getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z
    invoke-static {v6}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$100(Lcom/immersion/android/haptics/HapticFeedbackManager;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'. onReceive() --> action theme switch"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_8
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    # getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$400(Lcom/immersion/android/haptics/HapticFeedbackManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 763
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    # getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z
    invoke-static {v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$100(Lcom/immersion/android/haptics/HapticFeedbackManager;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 764
    const-string v4, "haptic_feedback_theme"

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 765
    .restart local v2    # "theme":Ljava/lang/String;
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;->mHfm:Lcom/immersion/android/haptics/HapticFeedbackManager;

    invoke-virtual {v4, v2}, Lcom/immersion/android/haptics/HapticFeedbackManager;->loadActiveTheme(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 768
    .end local v2    # "theme":Ljava/lang/String;
    :cond_9
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;->mHfm:Lcom/immersion/android/haptics/HapticFeedbackManager;

    invoke-virtual {v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->loadActiveTheme()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
