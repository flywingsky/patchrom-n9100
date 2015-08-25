.class final Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenWatchingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AdaptiveDisplayColorService;


# direct methods
.method private constructor <init>(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AdaptiveDisplayColorService;Lcom/android/server/AdaptiveDisplayColorService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;
    .param p2, "x1"    # Lcom/android/server/AdaptiveDisplayColorService$1;

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;-><init>(Lcom/android/server/AdaptiveDisplayColorService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 330
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 333
    const-string v3, "keyguard"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 334
    .local v1, "keyGuardManager":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 335
    iget-object v3, p0, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    # setter for: Lcom/android/server/AdaptiveDisplayColorService;->isLockScreenOn:Z
    invoke-static {v3, v2}, Lcom/android/server/AdaptiveDisplayColorService;->access$102(Lcom/android/server/AdaptiveDisplayColorService;Z)Z

    .line 336
    :cond_0
    iget-object v2, p0, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    # invokes: Lcom/android/server/AdaptiveDisplayColorService;->boot_complete()V
    invoke-static {v2}, Lcom/android/server/AdaptiveDisplayColorService;->access$200(Lcom/android/server/AdaptiveDisplayColorService;)V

    .line 362
    .end local v1    # "keyGuardManager":Landroid/app/KeyguardManager;
    :cond_1
    :goto_0
    return-void

    .line 339
    :cond_2
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 340
    const-string v3, "keyguard"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 341
    .restart local v1    # "keyGuardManager":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 342
    iget-object v3, p0, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    # setter for: Lcom/android/server/AdaptiveDisplayColorService;->isLockScreenOn:Z
    invoke-static {v3, v2}, Lcom/android/server/AdaptiveDisplayColorService;->access$102(Lcom/android/server/AdaptiveDisplayColorService;Z)Z

    .line 343
    :cond_3
    iget-object v2, p0, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    # invokes: Lcom/android/server/AdaptiveDisplayColorService;->receive_screen_on_intent()V
    invoke-static {v2}, Lcom/android/server/AdaptiveDisplayColorService;->access$300(Lcom/android/server/AdaptiveDisplayColorService;)V

    goto :goto_0

    .line 346
    .end local v1    # "keyGuardManager":Landroid/app/KeyguardManager;
    :cond_4
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 347
    iget-object v2, p0, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    # invokes: Lcom/android/server/AdaptiveDisplayColorService;->receive_screen_off_intent()V
    invoke-static {v2}, Lcom/android/server/AdaptiveDisplayColorService;->access$400(Lcom/android/server/AdaptiveDisplayColorService;)V

    goto :goto_0

    .line 350
    :cond_5
    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 351
    iget-object v2, p0, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    # setter for: Lcom/android/server/AdaptiveDisplayColorService;->isLockScreenOn:Z
    invoke-static {v2, v3}, Lcom/android/server/AdaptiveDisplayColorService;->access$102(Lcom/android/server/AdaptiveDisplayColorService;Z)Z

    goto :goto_0

    .line 354
    :cond_6
    const-string v4, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 355
    iget-object v2, p0, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    const-string v4, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    # setter for: Lcom/android/server/AdaptiveDisplayColorService;->mMultiWindowOn:Z
    invoke-static {v2, v3}, Lcom/android/server/AdaptiveDisplayColorService;->access$502(Lcom/android/server/AdaptiveDisplayColorService;Z)Z

    goto :goto_0

    .line 358
    :cond_7
    const-string v4, "com.sec.android.intent.action.SSRM_MDNIE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 359
    iget-object v4, p0, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "value"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_8

    :goto_1
    # setter for: Lcom/android/server/AdaptiveDisplayColorService;->mEBookScenarioIntented:Z
    invoke-static {v4, v2}, Lcom/android/server/AdaptiveDisplayColorService;->access$602(Lcom/android/server/AdaptiveDisplayColorService;Z)Z

    goto :goto_0

    :cond_8
    move v2, v3

    goto :goto_1
.end method
