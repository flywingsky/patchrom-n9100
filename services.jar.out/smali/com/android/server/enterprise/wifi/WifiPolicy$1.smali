.class Lcom/android/server/enterprise/wifi/WifiPolicy$1;
.super Ljava/lang/Object;
.source "WifiPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/wifi/WifiPolicy;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

.field final synthetic val$adminUid:I

.field final synthetic val$config:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/wifi/WifiPolicy;Landroid/net/wifi/WifiConfiguration;I)V
    .locals 0

    .prologue
    .line 2569
    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    iput-object p2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1;->val$config:Landroid/net/wifi/WifiConfiguration;

    iput p3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1;->val$adminUid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2571
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1;->val$config:Landroid/net/wifi/WifiConfiguration;

    iget v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1;->val$adminUid:I

    # invokes: Lcom/android/server/enterprise/wifi/WifiPolicy;->edmAddOrUpdateTask(Landroid/net/wifi/WifiConfiguration;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->access$000(Lcom/android/server/enterprise/wifi/WifiPolicy;Landroid/net/wifi/WifiConfiguration;I)V

    .line 2572
    return-void
.end method
