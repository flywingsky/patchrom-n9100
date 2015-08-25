.class Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;
.super Ljava/lang/Object;
.source "GenericSSOService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/GenericSSOService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SSOServiceConnection"
.end annotation


# instance fields
.field private mService:Landroid/app/enterprise/sso/GenericSSOSupportSolution;

.field private mUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 3875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3876
    iput p1, p0, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;->mUserId:I

    .line 3877
    return-void
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;

    .prologue
    .line 3871
    iget v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;->mUserId:I

    return v0
.end method


# virtual methods
.method public getService()Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    .locals 1

    .prologue
    .line 3903
    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;->mService:Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 3882
    const-string v0, "GenericSSOService"

    const-string v1, "onServiceConnected SSOServiceConnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3883
    invoke-static {p2}, Landroid/app/enterprise/sso/GenericSSOSupportSolution$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;->mService:Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    .line 3884
    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$1200()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3885
    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$1200()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3886
    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$1300()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3887
    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$1300()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 3889
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 3893
    sget-boolean v0, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3894
    const-string v0, "GenericSSOService"

    const-string v1, "onServiceDisConnected SSOServiceConnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3895
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;->mService:Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    .line 3896
    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$1200()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3897
    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$1300()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3898
    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$1300()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 3900
    :cond_1
    return-void
.end method
