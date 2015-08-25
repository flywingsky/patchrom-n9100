.class Landroid/webkitsec/WebViewClassic$PackageListener;
.super Landroid/content/BroadcastReceiver;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackageListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3620
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkitsec/WebViewClassic$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/webkitsec/WebViewClassic$1;

    .prologue
    .line 3620
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic$PackageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3623
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3624
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 3625
    .local v1, "packageName":Ljava/lang/String;
    const-string v4, "android.intent.extra.REPLACING"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 3626
    .local v3, "replacing":Z
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 3643
    :cond_0
    :goto_0
    return-void

    .line 3631
    :cond_1
    # getter for: Landroid/webkitsec/WebViewClassic;->sGoogleApps:Ljava/util/Set;
    invoke-static {}, Landroid/webkitsec/WebViewClassic;->access$3000()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3632
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3633
    const/16 v4, 0xb9

    invoke-static {v4, v1}, Landroid/webkitsec/WebViewCore;->sendStaticMessage(ILjava/lang/Object;)V

    .line 3639
    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/webkitsec/PluginManager;->getInstance(Landroid/content/Context;)Landroid/webkitsec/PluginManager;

    move-result-object v2

    .line 3640
    .local v2, "pm":Landroid/webkitsec/PluginManager;
    invoke-virtual {v2, v1}, Landroid/webkitsec/PluginManager;->containsPluginPermissionAndSignatures(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3641
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/webkitsec/PluginManager;->refreshPlugins(Z)V

    goto :goto_0

    .line 3635
    .end local v2    # "pm":Landroid/webkitsec/PluginManager;
    :cond_3
    const/16 v4, 0xba

    invoke-static {v4, v1}, Landroid/webkitsec/WebViewCore;->sendStaticMessage(ILjava/lang/Object;)V

    goto :goto_1
.end method
