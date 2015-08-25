.class public Lcom/android/internal/policy/impl/EnableAccessibilityController;
.super Ljava/lang/Object;
.source "EnableAccessibilityController.java"


# static fields
.field private static final ENABLE_ACCESSIBILITY_DELAY_MILLIS:I = 0x1770

.field public static final MESSAGE_ENABLE_ACCESSIBILITY:I = 0x3

.field public static final MESSAGE_SPEAK_ENABLE_CANCELED:I = 0x2

.field public static final MESSAGE_SPEAK_WARNING:I = 0x1

.field private static final SCREEN_READER:Ljava/lang/String; = "com.google.android.marvin.talkback"

.field private static final SPEAK_WARNING_DELAY_MILLIS:I = 0x7d0


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

.field private mCanceled:Z

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mFirstPointerDownX:F

.field private mFirstPointerDownY:F

.field private final mHandler:Landroid/os/Handler;

.field private mSecondPointerDownX:F

.field private mSecondPointerDownY:F

.field private final mTone:Landroid/media/Ringtone;

.field private final mTouchSlop:F

.field private final mTts:Landroid/speech/tts/TextToSpeech;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/android/internal/policy/impl/EnableAccessibilityController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/EnableAccessibilityController$1;-><init>(Lcom/android/internal/policy/impl/EnableAccessibilityController;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    .line 82
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mWindowManager:Landroid/view/IWindowManager;

    .line 85
    const-string v0, "accessibility"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    .line 105
    iput-object p1, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mContext:Landroid/content/Context;

    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mUserManager:Landroid/os/UserManager;

    .line 107
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/android/internal/policy/impl/EnableAccessibilityController$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/EnableAccessibilityController$2;-><init>(Lcom/android/internal/policy/impl/EnableAccessibilityController;)V

    invoke-direct {v0, p1, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 115
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mTone:Landroid/media/Ringtone;

    .line 116
    iget-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mTone:Landroid/media/Ringtone;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mTouchSlop:F

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/EnableAccessibilityController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/EnableAccessibilityController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/EnableAccessibilityController;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/EnableAccessibilityController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/EnableAccessibilityController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/EnableAccessibilityController;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->enableAccessibility()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/EnableAccessibilityController;)Landroid/media/Ringtone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/EnableAccessibilityController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mTone:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/EnableAccessibilityController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/EnableAccessibilityController;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mDestroyed:Z

    return v0
.end method

.method public static canEnableAccessibilityViaGesture(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 122
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 125
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enable_accessibility_global_gesture_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    invoke-static {p0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->getInstalledSpeakingAccessibilityServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private cancel()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 223
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mCanceled:Z

    .line 224
    iget-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 229
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 230
    return-void

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private enableAccessibility()V
    .locals 17

    .prologue
    .line 233
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->getInstalledSpeakingAccessibilityServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v12

    .line 235
    .local v12, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    const/4 v7, 0x0

    .line 240
    .local v7, "keyguardLocked":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v15}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    .line 245
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v15}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_5

    const/4 v5, 0x1

    .line 247
    .local v5, "hasMoreThanOneUser":Z
    :goto_2
    const/4 v15, 0x0

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 248
    .local v9, "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget v15, v9, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v15, v15, 0x4

    if-eqz v15, :cond_6

    const/4 v3, 0x1

    .line 251
    .local v3, "enableTouchExploration":Z
    :goto_3
    if-nez v3, :cond_2

    .line 252
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v10

    .line 253
    .local v10, "serviceCount":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_4
    if-ge v6, v10, :cond_2

    .line 254
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 255
    .local v1, "candidate":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget v15, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v15, v15, 0x4

    if-eqz v15, :cond_7

    .line 257
    const/4 v3, 0x1

    .line 258
    move-object v9, v1

    .line 264
    .end local v1    # "candidate":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v6    # "i":I
    .end local v10    # "serviceCount":I
    :cond_2
    invoke-virtual {v9}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v15

    iget-object v11, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 265
    .local v11, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v15, v11, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v0, v11, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v2, v15, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .local v2, "componentName":Landroid/content/ComponentName;
    if-eqz v7, :cond_3

    if-nez v5, :cond_8

    .line 267
    :cond_3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v14

    .line 268
    .local v14, "userId":I
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    .line 269
    .local v4, "enabledServiceString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 271
    .local v8, "resolver":Landroid/content/ContentResolver;
    const-string v15, "enabled_accessibility_services"

    invoke-static {v8, v15, v4, v14}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 275
    const-string v15, "touch_exploration_granted_accessibility_services"

    invoke-static {v8, v15, v4, v14}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 279
    if-eqz v3, :cond_4

    .line 280
    const-string v15, "touch_exploration_enabled"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v8, v15, v0, v14}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 284
    :cond_4
    const-string v15, "accessibility_script_injection"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v8, v15, v0, v14}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 287
    const-string v15, "accessibility_enabled"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v8, v15, v0, v14}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 289
    new-instance v13, Landroid/content/Intent;

    const-string v15, "com.android.settings.action.talkback_off"

    invoke-direct {v13, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    .local v13, "talk_back_off":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mContext:Landroid/content/Context;

    sget-object v16, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v16

    invoke-virtual {v15, v13, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 245
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "enableTouchExploration":Z
    .end local v4    # "enabledServiceString":Ljava/lang/String;
    .end local v5    # "hasMoreThanOneUser":Z
    .end local v8    # "resolver":Landroid/content/ContentResolver;
    .end local v9    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v11    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v13    # "talk_back_off":Landroid/content/Intent;
    .end local v14    # "userId":I
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 248
    .restart local v5    # "hasMoreThanOneUser":Z
    .restart local v9    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    .line 253
    .restart local v1    # "candidate":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .restart local v3    # "enableTouchExploration":Z
    .restart local v6    # "i":I
    .restart local v10    # "serviceCount":I
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 291
    .end local v1    # "candidate":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v6    # "i":I
    .end local v10    # "serviceCount":I
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    .restart local v11    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_8
    if-eqz v7, :cond_0

    .line 293
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v15, v2, v3}, Landroid/view/accessibility/IAccessibilityManager;->temporaryEnableAccessibilityStateUntilKeyguardRemoved(Landroid/content/ComponentName;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 295
    :catch_0
    move-exception v15

    goto/16 :goto_0

    .line 241
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "enableTouchExploration":Z
    .end local v5    # "hasMoreThanOneUser":Z
    .end local v9    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v11    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :catch_1
    move-exception v15

    goto/16 :goto_1
.end method

.method private static getInstalledSpeakingAccessibilityServices(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 142
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 143
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 144
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 157
    .local v1, "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget v3, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.android.marvin.talkback"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 158
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 164
    .end local v1    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_1
    return-object v2
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mDestroyed:Z

    .line 169
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 174
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mFirstPointerDownX:F

    .line 175
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mFirstPointerDownY:F

    .line 176
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mSecondPointerDownX:F

    .line 177
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mSecondPointerDownY:F

    .line 178
    iget-object v1, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 180
    iget-object v1, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const-wide/16 v3, 0x1770

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 184
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 189
    .local v2, "pointerCount":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 190
    .local v0, "action":I
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mCanceled:Z

    if-eqz v4, :cond_1

    .line 191
    if-ne v0, v8, :cond_0

    .line 192
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mCanceled:Z

    .line 219
    :cond_0
    :goto_0
    return v8

    .line 196
    :cond_1
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 203
    :pswitch_1
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget v6, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mFirstPointerDownX:F

    iget v7, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mFirstPointerDownY:F

    invoke-static {v4, v5, v6, v7}, Landroid/util/MathUtils;->dist(FFFF)F

    move-result v1

    .line 205
    .local v1, "firstPointerMove":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mTouchSlop:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 206
    invoke-direct {p0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->cancel()V

    .line 208
    :cond_2
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget v6, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mSecondPointerDownX:F

    iget v7, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mSecondPointerDownY:F

    invoke-static {v4, v5, v6, v7}, Landroid/util/MathUtils;->dist(FFFF)F

    move-result v3

    .line 210
    .local v3, "secondPointerMove":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController;->mTouchSlop:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->cancel()V

    goto :goto_0

    .line 198
    .end local v1    # "firstPointerMove":F
    .end local v3    # "secondPointerMove":F
    :pswitch_2
    const/4 v4, 0x2

    if-le v2, v4, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->cancel()V

    goto :goto_0

    .line 216
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->cancel()V

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
