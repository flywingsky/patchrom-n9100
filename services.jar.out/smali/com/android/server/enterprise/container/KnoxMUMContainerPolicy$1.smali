.class Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V
    .locals 0

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 564
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 565
    .local v1, "userId":I
    if-ne v1, v3, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 569
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->registerPersonaObserver(I)V
    invoke-static {v2, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$000(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)V

    goto :goto_0

    .line 570
    :cond_2
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 571
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->unregisterPersonaObserver(I)V
    invoke-static {v2, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)V

    goto :goto_0
.end method