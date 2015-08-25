.class Lcom/android/server/enterprise/sso/GenericSSOService$ScreenOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GenericSSOService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/GenericSSOService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScreenOffReceiver"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 326
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

    const/4 v3, 0x0

    .line 329
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 331
    # setter for: Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;
    invoke-static {v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$102(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    .line 332
    # setter for: Lcom/android/server/enterprise/sso/GenericSSOService;->key:Ljava/security/Key;
    invoke-static {v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$202(Ljava/security/Key;)Ljava/security/Key;

    .line 333
    # setter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;
    invoke-static {v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$302(Ljava/security/KeyPair;)Ljava/security/KeyPair;

    .line 334
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 335
    const-string v2, "GenericSSOService"

    const-string v3, "In onReceive: In keys are cleared from memory"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 337
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 338
    .local v1, "userId":I
    # setter for: Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;
    invoke-static {v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$102(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    .line 339
    # setter for: Lcom/android/server/enterprise/sso/GenericSSOService;->key:Ljava/security/Key;
    invoke-static {v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$202(Ljava/security/Key;)Ljava/security/Key;

    .line 340
    # setter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;
    invoke-static {v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$302(Ljava/security/KeyPair;)Ljava/security/KeyPair;

    .line 341
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 342
    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In onReceive: Action user switched"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 343
    .end local v1    # "userId":I
    :cond_2
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 344
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 345
    .restart local v1    # "userId":I
    # setter for: Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;
    invoke-static {v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$102(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    .line 346
    # setter for: Lcom/android/server/enterprise/sso/GenericSSOService;->key:Ljava/security/Key;
    invoke-static {v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$202(Ljava/security/Key;)Ljava/security/Key;

    .line 347
    # setter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;
    invoke-static {v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$302(Ljava/security/KeyPair;)Ljava/security/KeyPair;

    .line 348
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 349
    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In onReceive: Action user removed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 350
    .end local v1    # "userId":I
    :cond_3
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 352
    .restart local v1    # "userId":I
    # setter for: Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;
    invoke-static {v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$102(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    .line 353
    # setter for: Lcom/android/server/enterprise/sso/GenericSSOService;->key:Ljava/security/Key;
    invoke-static {v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$202(Ljava/security/Key;)Ljava/security/Key;

    .line 354
    # setter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;
    invoke-static {v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$302(Ljava/security/KeyPair;)Ljava/security/KeyPair;

    .line 355
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 356
    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In onReceive: Action user stopped"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
