.class public final Landroid/provider/ContactsContract$QuickContact;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QuickContact"
.end annotation


# static fields
.field public static final ACTION_QUICK_CONTACT:Ljava/lang/String; = "com.android.contacts.action.QUICK_CONTACT"

.field public static final EXTRA_EXCLUDE_MIMES:Ljava/lang/String; = "exclude_mimes"

.field public static final EXTRA_MODE:Ljava/lang/String; = "mode"

.field public static final EXTRA_TARGET_RECT:Ljava/lang/String; = "target_rect"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MODE_LARGE:I = 0x3

.field public static final MODE_MEDIUM:I = 0x2

.field public static final MODE_SMALL:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static composeQuickContactsIntent(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/graphics/Rect;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "mode"    # I
    .param p4, "excludeMimes"    # [Ljava/lang/String;

    .prologue
    .line 7975
    move-object v3, p0

    .line 7977
    .local v3, "actualContext":Landroid/content/Context;
    :goto_0
    instance-of v9, v3, Landroid/content/ContextWrapper;

    if-eqz v9, :cond_0

    instance-of v9, v3, Landroid/app/Activity;

    if-nez v9, :cond_0

    .line 7978
    check-cast v3, Landroid/content/ContextWrapper;

    .end local v3    # "actualContext":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    .restart local v3    # "actualContext":Landroid/content/Context;
    goto :goto_0

    .line 7980
    :cond_0
    instance-of v9, v3, Landroid/app/Activity;

    if-eqz v9, :cond_3

    const/high16 v6, 0x80000

    .line 7986
    .local v6, "intentFlags":I
    :goto_1
    const/4 v1, 0x0

    .line 7988
    .local v1, "QUICK_CONTACT_FOR_DCM":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 7990
    const-string v9, "android.permission.GET_TASKS"

    invoke-virtual {v3, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v8

    .line 7991
    .local v8, "permissionResult":I
    if-nez v8, :cond_1

    .line 7992
    const-string v9, "activity"

    invoke-virtual {v3, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 7993
    .local v4, "am":Landroid/app/ActivityManager;
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v7

    .line 7994
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 7996
    .local v0, "PackageName":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7997
    .local v2, "ReplacedPackageName":Ljava/lang/String;
    const-string v9, "com.android.contacts"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, ""

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 7998
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".action.QUICK_CONTACT"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8004
    .end local v0    # "PackageName":Ljava/lang/String;
    .end local v2    # "ReplacedPackageName":Ljava/lang/String;
    .end local v4    # "am":Landroid/app/ActivityManager;
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v8    # "permissionResult":I
    :cond_1
    new-instance v9, Landroid/content/Intent;

    if-nez v1, :cond_2

    const-string v1, "com.android.contacts.action.QUICK_CONTACT"

    .end local v1    # "QUICK_CONTACT_FOR_DCM":Ljava/lang/String;
    :cond_2
    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    .line 8006
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 8007
    invoke-virtual {v5, p1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 8008
    const-string/jumbo v9, "mode"

    invoke-virtual {v5, v9, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8009
    const-string v9, "exclude_mimes"

    invoke-virtual {v5, v9, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 8010
    return-object v5

    .line 7980
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "intentFlags":I
    :cond_3
    const v6, 0x10008000

    goto :goto_1
.end method

.method public static composeQuickContactsIntent(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "mode"    # I
    .param p4, "excludeMimes"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    .line 7954
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 7955
    .local v0, "appScale":F
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 7956
    .local v1, "pos":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 7958
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 7959
    .local v2, "rect":Landroid/graphics/Rect;
    aget v3, v1, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 7960
    aget v3, v1, v6

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 7961
    aget v3, v1, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 7962
    aget v3, v1, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 7964
    invoke-static {p0, v2, p2, p3, p4}, Landroid/provider/ContactsContract$QuickContact;->composeQuickContactsIntent(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    return-object v3
.end method

.method public static showQuickContact(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/graphics/Rect;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "mode"    # I
    .param p4, "excludeMimes"    # [Ljava/lang/String;

    .prologue
    .line 8072
    invoke-static {p0, p1, p2, p3, p4}, Landroid/provider/ContactsContract$QuickContact;->composeQuickContactsIntent(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 8074
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Landroid/provider/ContactsContract$QuickContact;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 8075
    return-void
.end method

.method public static showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "mode"    # I
    .param p4, "excludeMimes"    # [Ljava/lang/String;

    .prologue
    .line 8039
    invoke-static {p0, p1, p2, p3, p4}, Landroid/provider/ContactsContract$QuickContact;->composeQuickContactsIntent(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 8041
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Landroid/provider/ContactsContract$QuickContact;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 8042
    return-void
.end method

.method private static startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 8079
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8084
    :goto_0
    return-void

    .line 8080
    :catch_0
    move-exception v0

    .line 8081
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const v1, 0x104056c

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
