.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
.super Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;
.source "KnoxVpnEngineService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnRestart;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnServiceConnection;
    }
.end annotation


# static fields
.field private static final CONTAINER_ID:Ljava/lang/String; = "containerid"

.field private static final DBG:Z

.field private static final INVALID_CONTAINER_ID:I = 0x0

.field private static final INVALID_UID:I = -0x1

.field private static final MAP_KEY_EXTRA_REPLACING:Ljava/lang/String; = "new_install_or_update"

.field private static final MAP_KEY_PACKAGENAME:Ljava/lang/String; = "package"

.field private static final MAP_KEY_PROFILENAME:Ljava/lang/String; = "profileName"

.field private static final MAP_KEY_STATE:Ljava/lang/String; = "state"

.field private static final MAP_KEY_STATUS:Ljava/lang/String; = "status"

.field private static final MAP_KEY_UID:Ljava/lang/String; = "uid"

.field private static final MAP_KEY_VALUESTRING:Ljava/lang/String; = "value_string"

.field private static final NULL_OBJECT:Ljava/lang/Object;

.field private static TAG:Ljava/lang/String;

.field public static VPN_RETURN_INT_ERROR:I

.field private static cisco_proxy_application:Ljava/lang/String;

.field private static mIgnoreConnectCheckForChaining:Z

.field private static mKnoxEngine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

.field private static mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

.field private static mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityManagerNative:Landroid/app/IActivityManager;

.field private mContext:Landroid/content/Context;

.field private mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

.field private mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mKnoxTunInterfacePrefix:Ljava/lang/String;

.field private mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

.field private mNetworkManagementService:Landroid/os/INetworkManagementService;

.field private mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mProcessObserver:Landroid/app/IProcessObserver$Stub;

.field private mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

.field private vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

.field private vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 115
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    .line 117
    const-string v0, "KnoxVpnEngineService"

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    .line 141
    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    .line 147
    sput-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    .line 149
    sput-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    .line 150
    sput-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxEngine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 152
    sput-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 158
    sput-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mIgnoreConnectCheckForChaining:Z

    .line 4046
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->NULL_OBJECT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;-><init>()V

    .line 131
    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 133
    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

    .line 137
    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 139
    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mPersonaManager:Landroid/os/PersonaManager;

    .line 143
    const-string v0, "knoxv_"

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxTunInterfacePrefix:Ljava/lang/String;

    .line 145
    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 156
    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mActivityManagerNative:Landroid/app/IActivityManager;

    .line 4414
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mProcessObserver:Landroid/app/IProcessObserver$Stub;

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 165
    invoke-direct {p0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;-><init>()V

    .line 131
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 133
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

    .line 137
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 139
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mPersonaManager:Landroid/os/PersonaManager;

    .line 143
    const-string v1, "knoxv_"

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxTunInterfacePrefix:Ljava/lang/String;

    .line 145
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 156
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mActivityManagerNative:Landroid/app/IActivityManager;

    .line 4414
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$2;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mProcessObserver:Landroid/app/IProcessObserver$Stub;

    .line 166
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v2, "Initializing in constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    .line 169
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 170
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 173
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 174
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 175
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 176
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    .line 177
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 178
    sput-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxEngine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 181
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->initializeHandlerThread()V

    .line 184
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->initializeVpnDataAndVendors()V

    .line 186
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mActivityManagerNative:Landroid/app/IActivityManager;

    .line 187
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v2, "Activity Manager intialization!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mActivityManagerNative:Landroid/app/IActivityManager;

    if-eqz v1, :cond_2

    .line 189
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v2, "ActivityManager not null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mActivityManagerNative:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mProcessObserver:Landroid/app/IProcessObserver$Stub;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 192
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v2, "Service Registered!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :cond_2
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v2, "onCreate() RemoteException!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 113
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    .prologue
    .line 113
    sput-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    return-object v0
.end method

.method static synthetic access$1300()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxEngine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleVpnInterfaceState(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleActionPackageAdded(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleConnectivityAction(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleActionUserRemoved(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->initializeHashtable()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->setVpnInterface(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addBlockingRulesForPackages()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->initializeVpnVendors()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->setupIntentFilter()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->registerPersonaObserverForVpn()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleActionUserStarted(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnProfile(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->onApplicationStart(II)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->onApplicationStop(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->printProfileVpnMap()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateProfilesForVendor(Ljava/lang/String;Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->isNetworkConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->runAllVpnService()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendBindSuccessIntent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleKnoxVpnServiceDisconnect(Ljava/lang/String;)V

    return-void
.end method

.method private addBlockingRulesForPackages()V
    .locals 7

    .prologue
    .line 2585
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v5, "addBlockingRulesForPackages"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->updateIpBlockingRule()V

    .line 2589
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileNames()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2590
    .local v3, "profileName":Ljava/lang/String;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding iptables for profile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addPackagesToIpTables(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2600
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "profileName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2601
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addBlockingRulesForPackages : Exception when reading package DB:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2603
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void

    .line 2594
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileNames()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2595
    .restart local v3    # "profileName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 2596
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v2, :cond_2

    .line 2597
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addMangleExceptions(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private addContainerToExceptionList(Ljava/lang/String;I)V
    .locals 7
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 4658
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4660
    .local v0, "blockToken":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v3

    .line 4661
    .local v3, "mEntProvider":Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    if-eqz v3, :cond_0

    .line 4662
    invoke-virtual {v3, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->addContainerToExceptionList(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4667
    .end local v3    # "mEntProvider":Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4669
    return-void

    .line 4664
    :catch_0
    move-exception v2

    .line 4665
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception at addContainerToExceptionList API "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4667
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private addMangleExceptions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "vendorNameWithCid"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3193
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addMangleExceptions : vendor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3194
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 3195
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3196
    .local v2, "vendorName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v0

    .line 3197
    .local v0, "cid":I
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v1

    .line 3198
    .local v1, "uid":I
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addMangleExceptions : uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3199
    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_1

    .line 3200
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addMangleExceptionsForStrongswan(I)V

    .line 3205
    .end local v0    # "cid":I
    .end local v1    # "uid":I
    .end local v2    # "vendorName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 3202
    .restart local v0    # "cid":I
    .restart local v1    # "uid":I
    .restart local v2    # "vendorName":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addMangleExceptionsForUid(I)V

    goto :goto_0
.end method

.method private addPackagesToIpTables(Ljava/lang/String;)V
    .locals 10
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3639
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addPackagesToIpTables : profileName =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3640
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v7, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v5

    .line 3642
    .local v5, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v5, :cond_0

    .line 3643
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v0

    .line 3644
    .local v0, "activateState":I
    sget v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    if-ne v0, v7, :cond_1

    .line 3668
    .end local v0    # "activateState":I
    :cond_0
    return-void

    .line 3648
    .restart local v0    # "activateState":I
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getContainerVpnState()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 3649
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 3650
    .local v3, "interfaceName":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getContainerVpnState()I

    move-result v1

    .line 3651
    .local v1, "cid":I
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v7, v1, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRulesForRange(ILjava/lang/String;)V

    .line 3652
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startUid(I)I

    move-result v7

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopUid(I)I

    move-result v8

    invoke-direct {p0, p1, v7, v8, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->setDnsSystemProperty(Ljava/lang/String;IILjava/lang/String;)V

    .line 3655
    .end local v1    # "cid":I
    .end local v3    # "interfaceName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 3656
    .local v4, "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addPackagesToIpTables : p =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3657
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addPackagesToIpTables : p.getPackageName =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3658
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v6

    .line 3659
    .local v6, "uid":I
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 3660
    .restart local v3    # "interfaceName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v7, v6, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRules(ILjava/lang/String;)V

    .line 3661
    if-eqz v3, :cond_3

    .line 3662
    invoke-direct {p0, p1, v6, v6, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->setDnsSystemProperty(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 3664
    :cond_3
    invoke-direct {p0, p1, v6, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->unsetDnsSystemProperty(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private addUIDListToExceptionList(Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4672
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4674
    .local v0, "blockToken":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v3

    .line 4675
    .local v3, "mEntProvider":Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    .line 4676
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 4677
    .local v4, "packageUidMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4678
    invoke-virtual {v3, p1, v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->addUIDListToExceptionList(Ljava/lang/String;Ljava/util/Map;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4683
    .end local v3    # "mEntProvider":Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    .end local v4    # "packageUidMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4685
    return-void

    .line 4680
    :catch_0
    move-exception v2

    .line 4681
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception at addUIDListToExceptionList API "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4683
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private declared-synchronized blockProxyService(Ljava/lang/String;I)Z
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 3283
    monitor-enter p0

    const/4 v8, 0x0

    .line 3284
    .local v8, "proxyPresent":Z
    const/4 v7, 0x0

    .line 3285
    .local v7, "proxyPackageName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 3287
    .local v6, "proxyClassName":Ljava/lang/String;
    :try_start_0
    new-instance v11, Landroid/content/Intent;

    const-string v13, "com.cisco.anyconnect.vpn.android.avf.BIND_SERVICE"

    invoke-direct {v11, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3288
    .local v11, "queryServiceIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 3289
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v13, 0x0

    move/from16 v0, p2

    invoke-virtual {v5, v11, v13, v0}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v10

    .line 3290
    .local v10, "proxyServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_2

    .line 3291
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 3292
    .local v12, "resolveInfo":Landroid/content/pm/ResolveInfo;
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "The blockProxyService packageName value is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v15, v15, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "whose class name is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v15, v15, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3293
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v14, "com.cisco.anyconnect.vpn.android.avf"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 3294
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 3295
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v13, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 3296
    const/4 v8, 0x1

    .line 3300
    .end local v12    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    if-eqz v8, :cond_2

    .line 3301
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3302
    .local v1, "blockToken":J
    const/4 v13, 0x1

    new-instance v14, Landroid/os/UserHandle;

    move/from16 v0, p2

    invoke-direct {v14, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v7, v13, v14}, Landroid/content/pm/PackageManager;->setApplicationBlockedSettingAsUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Z

    .line 3303
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3304
    const/4 v8, 0x1

    move v9, v8

    .line 3312
    .end local v1    # "blockToken":J
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "proxyPresent":Z
    .end local v10    # "proxyServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "queryServiceIntent":Landroid/content/Intent;
    .local v9, "proxyPresent":I
    :goto_0
    monitor-exit p0

    return v9

    .line 3308
    .end local v9    # "proxyPresent":I
    .restart local v8    # "proxyPresent":Z
    :catch_0
    move-exception v3

    .line 3309
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception at blockProxyService "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3311
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "blockProxyService : proxyPresent value is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v9, v8

    .line 3312
    .restart local v9    # "proxyPresent":I
    goto :goto_0

    .line 3283
    .end local v9    # "proxyPresent":I
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13
.end method

.method private declared-synchronized checkIfAnyConnectSupportsKnox(Ljava/lang/String;I)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 3316
    monitor-enter p0

    const/4 v6, 0x0

    .line 3318
    .local v6, "supportsKnox":Z
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.cisco.anyconnect.vpn.android.avf.BIND_SERVICE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3319
    .local v4, "queryifKnoxEnabled":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3320
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 3321
    .local v0, "anyconnectService":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 3322
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 3323
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The checkIfAnyConnectSupportsKnox packageName value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "whose class name is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3324
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.cisco.anyconnect.vpn.android.avf"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    .line 3325
    const/4 v6, 0x1

    .line 3333
    .end local v0    # "anyconnectService":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "queryifKnoxEnabled":Landroid/content/Intent;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    :goto_0
    :try_start_1
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkIfAnyConnectSupportsKnox : supportsKnox value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3334
    monitor-exit p0

    return v6

    .line 3330
    :catch_0
    move-exception v1

    .line 3331
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception at checkIfAnyConnectSupportsKnox "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3316
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private deleteUIDFromPackageData(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2724
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v1, "Inside deleteUIDFromPackageData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2725
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updatePackageData(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private enforceEnterpriseVpnPermission(Lcom/sec/enterprise/knox/KnoxVpnContext;)V
    .locals 4
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;

    .prologue
    .line 3993
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 3994
    .local v0, "adminId":I
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enforce permission. adminId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3996
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 4005
    :goto_0
    return-void

    .line 3999
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    if-eqz v1, :cond_1

    .line 4000
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const-string v2, "com.sec.enterprise.knox.KNOX_GENERIC_VPN"

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfAdminHasVpnPermission(ILjava/lang/String;)Z

    goto :goto_0

    .line 4003
    :cond_1
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to enforce permission. mKnoxVpnHelper = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized getActivate(Ljava/lang/String;)I
    .locals 5
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 4107
    monitor-enter p0

    const/4 v2, -0x1

    .line 4109
    .local v2, "temp":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 4110
    .local v1, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_0

    .line 4111
    const/4 v3, -0x1

    .line 4119
    .end local v1    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :goto_0
    monitor-exit p0

    return v3

    .line 4113
    .restart local v1    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .end local v1    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :goto_1
    move v3, v2

    .line 4119
    goto :goto_0

    .line 4115
    :catch_0
    move-exception v0

    .line 4116
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v4, "getActivate error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4117
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 4107
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private static getActualInterface(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 2165
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2166
    :cond_0
    const/4 p0, 0x0

    .line 2176
    .end local p0    # "interfaceName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0

    .line 2168
    .restart local p0    # "interfaceName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "tun"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2171
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2172
    .local v0, "passedinterfaceID":I
    const/16 v2, 0xc8

    if-lt v0, v2, :cond_1

    .line 2175
    add-int/lit16 v1, v0, -0xc8

    .line 2176
    .local v1, "updatedinterfaceID":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tun"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private getAllPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 21
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1398
    move-object/from16 v0, p1

    iget v3, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1399
    .local v3, "adminId":I
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_0

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "get all packages : Profile : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    :cond_0
    const/4 v13, 0x0

    .line 1401
    .local v13, "retVal":[Ljava/lang/String;
    new-instance v12, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v12}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1402
    .local v12, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<[Ljava/lang/String;>;"
    invoke-virtual {v12, v13}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1404
    const/4 v10, 0x0

    .line 1405
    .local v10, "packageList":[Ljava/lang/String;
    if-eqz p2, :cond_c

    .line 1406
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_1

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v15, "get all packages : Profile is not null"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v14

    if-eqz v14, :cond_2

    .line 1467
    :goto_0
    return-object v12

    .line 1415
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/KnoxVpnContext;->getPersonaId()I

    move-result v4

    .line 1418
    .local v4, "containerId":I
    const/4 v6, 0x0

    .line 1419
    .local v6, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v15, "VpnPackageInfo"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "profileName"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string v18, "packageCid"

    aput-object v18, v16, v17

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p2, v17, v18

    const/16 v18, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "packageName"

    aput-object v20, v18, v19

    invoke-virtual/range {v14 .. v18}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1430
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->printProfileVpnMap()V

    .line 1432
    :cond_3
    const/4 v8, 0x0

    .line 1433
    .local v8, "i":I
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_a

    .line 1434
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v10, v14, [Ljava/lang/String;

    .line 1435
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 1437
    .local v5, "cv":Landroid/content/ContentValues;
    const-string v14, "packageName"

    invoke-virtual {v5, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1438
    .local v11, "personifiedPackageName":Ljava/lang/String;
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_5

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "get all packages : Personified Package Name found : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v14, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    iget v15, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    if-eq v14, v15, :cond_7

    .line 1442
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_6

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "get all packages : personifiedPackageName : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    :cond_6
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_4

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "get all packages : vpnContext.personaId : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1460
    .end local v4    # "containerId":I
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v8    # "i":I
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "personifiedPackageName":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1461
    .local v7, "e":Ljava/lang/Exception;
    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "get all packages : Exceptionin notify: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    const/4 v14, 0x1

    const/4 v15, 0x3

    invoke-virtual {v12, v14, v15}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_0

    .line 1447
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "containerId":I
    .restart local v5    # "cv":Landroid/content/ContentValues;
    .restart local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v8    # "i":I
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v11    # "personifiedPackageName":Ljava/lang/String;
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v14, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v8

    .line 1448
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_8

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "get all packages : Regular Package Name found : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v10, v8

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    :cond_8
    add-int/lit8 v8, v8, 0x1

    .line 1450
    goto/16 :goto_1

    .line 1452
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v11    # "personifiedPackageName":Ljava/lang/String;
    :cond_9
    new-array v13, v8, [Ljava/lang/String;

    .line 1453
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v10, v14, v13, v15, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1454
    invoke-virtual {v12, v13}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1455
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_0

    .line 1457
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_a
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_b

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v15, "get all packages : DB read for packages is either null or zero"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    :cond_b
    const/4 v14, 0x1

    const/4 v15, 0x4

    invoke-virtual {v12, v14, v15}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1465
    .end local v4    # "containerId":I
    .end local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v8    # "i":I
    :cond_c
    const/4 v14, 0x1

    const/4 v15, 0x2

    invoke-virtual {v12, v14, v15}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_0
.end method

.method private getAllRangedPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 11
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 1356
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get all rnaged packages : Profile : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :cond_0
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1358
    .local v0, "adminId":I
    const/4 v6, 0x0

    .line 1359
    .local v6, "retVal":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1360
    .local v3, "packageList":[Ljava/lang/String;
    new-instance v5, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v5}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1361
    .local v5, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<[Ljava/lang/String;>;"
    invoke-virtual {v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1363
    if-eqz p2, :cond_4

    .line 1364
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v8, "get all rnaged packages : Profile is not null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v7

    if-eqz v7, :cond_2

    .line 1393
    :goto_0
    return-object v5

    .line 1371
    :cond_2
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v4

    .line 1372
    .local v4, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v4, :cond_3

    .line 1373
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getContainerVpnState()I

    move-result v1

    .line 1375
    .local v1, "containerId":I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_3

    .line 1376
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstalledPackages(I)[Ljava/lang/String;

    move-result-object v3

    .line 1377
    invoke-virtual {v5, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1378
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1385
    .end local v1    # "containerId":I
    .end local v4    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_0
    move-exception v2

    .line 1386
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exceptionin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    const/4 v7, 0x3

    invoke-virtual {v5, v10, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1383
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_3
    const/4 v7, 0x1

    const/4 v8, 0x4

    :try_start_1
    invoke-virtual {v5, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1390
    .end local v4    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_4
    const/4 v7, 0x2

    invoke-virtual {v5, v10, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method private getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    .locals 6
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 4034
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v0

    .line 4035
    .local v0, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v0, :cond_0

    .line 4036
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get binder for profile : Profile does not exist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4037
    const/4 v2, 0x0

    .line 4042
    :goto_0
    return-object v2

    .line 4039
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v1

    .line 4040
    .local v1, "vendorNameWithCid":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVpnInterface(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v2

    .line 4042
    .local v2, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    goto :goto_0
.end method

.method private declared-synchronized getKnoxTunName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 4100
    monitor-enter p0

    const/4 v0, 0x0

    .line 4101
    .local v0, "temp":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "knoxv_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4102
    monitor-exit p0

    return-object v0

    .line 4100
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .locals 4

    .prologue
    .line 261
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v2, "getNetworkManagementService is reached initially"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 263
    .local v0, "binder":Landroid/os/IBinder;
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkManagementService binder value is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_1
    if-eqz v0, :cond_2

    .line 265
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_2

    .line 266
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 267
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkManagementService mNetworkManagementService value is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    return-object v1
.end method

.method private getPersonaManager()Landroid/os/PersonaManager;
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mPersonaManager:Landroid/os/PersonaManager;

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mPersonaManager:Landroid/os/PersonaManager;

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mPersonaManager:Landroid/os/PersonaManager;

    return-object v0
.end method

.method private declared-synchronized getRoutType(Ljava/lang/String;)I
    .locals 5
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 4125
    monitor-enter p0

    const/4 v1, -0x1

    .line 4126
    .local v1, "iRval":I
    const/4 v2, 0x0

    .line 4128
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4129
    if-nez v2, :cond_0

    move v3, v1

    .line 4140
    :goto_0
    monitor-exit p0

    return v3

    .line 4132
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    move v3, v1

    .line 4140
    goto :goto_0

    .line 4134
    :catch_0
    move-exception v0

    .line 4136
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v4, "getRoutType error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4137
    :cond_1
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4138
    const/4 v3, -0x1

    goto :goto_0

    .line 4125
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized getVPNState(Ljava/lang/String;)I
    .locals 8
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 4263
    monitor-enter p0

    const/4 v1, 0x0

    .line 4264
    .local v1, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    const/4 v2, -0x1

    .line 4266
    .local v2, "state":I
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 4267
    if-nez v1, :cond_0

    .line 4282
    :goto_0
    monitor-exit p0

    return v4

    .line 4271
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v3

    .line 4272
    .local v3, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v3, :cond_1

    .line 4273
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVPNState : Interface null for profile : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4279
    .end local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v0

    .line 4280
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVPNState : Failure at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    move v4, v2

    .line 4282
    goto :goto_0

    .line 4277
    .restart local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_1
    :try_start_3
    invoke-interface {v3, p1}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getState(Ljava/lang/String;)I

    move-result v2

    .line 4278
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "State of vpn profile received from vpn vendor for profileName is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 4263
    .end local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized getVPNTransitionState(Ljava/lang/String;)I
    .locals 6
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x5

    const/4 v4, -0x1

    .line 4220
    monitor-enter p0

    const/4 v0, -0x1

    .line 4221
    .local v0, "iVPNCurActivateState":I
    const/4 v1, -0x1

    .line 4222
    .local v1, "iVpnConnectState":I
    const/4 v2, -0x1

    .line 4224
    .local v2, "temp":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNState(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 4225
    if-gez v1, :cond_0

    .line 4253
    :goto_0
    monitor-exit p0

    return v3

    .line 4228
    :cond_0
    if-ge v3, v1, :cond_1

    move v3, v4

    .line 4229
    goto :goto_0

    .line 4232
    :cond_1
    move v2, v1

    .line 4235
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getActivate(Ljava/lang/String;)I

    move-result v0

    .line 4236
    if-gez v0, :cond_2

    move v3, v4

    .line 4237
    goto :goto_0

    .line 4240
    :cond_2
    if-nez v0, :cond_3

    .line 4241
    add-int/lit8 v2, v2, 0x64

    .line 4251
    :cond_3
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVPNTransitionState : VpnState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    move v3, v2

    .line 4253
    goto :goto_0

    .line 4220
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private getValidationOfPackageName(ILjava/lang/String;)I
    .locals 7
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4144
    const/4 v2, -0x1

    .line 4145
    .local v2, "retValue":I
    const/4 v1, 0x0

    .line 4147
    .local v1, "isPackageInstalledResult":Z
    if-lez p1, :cond_1

    .line 4148
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v4, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v1

    .line 4149
    if-eqz v1, :cond_0

    .line 4150
    const/4 v2, 0x0

    :cond_0
    :goto_0
    move v3, v2

    .line 4162
    .end local v2    # "retValue":I
    .local v3, "retValue":I
    :goto_1
    return v3

    .line 4152
    .end local v3    # "retValue":I
    .restart local v2    # "retValue":I
    :cond_1
    if-nez p1, :cond_0

    .line 4153
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v4, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPackageInstalled(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4154
    if-eqz v1, :cond_0

    .line 4155
    const/4 v2, 0x0

    goto :goto_0

    .line 4158
    :catch_0
    move-exception v0

    .line 4159
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCheckedPackageName : Exception occurred for checkingPackageName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 4160
    .end local v2    # "retValue":I
    .restart local v3    # "retValue":I
    goto :goto_1
.end method

.method private getVpnInterface(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    .locals 7
    .param p1, "vendorName"    # Ljava/lang/String;

    .prologue
    .line 4049
    const/4 v3, 0x0

    .line 4051
    .local v3, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-eqz p1, :cond_0

    .line 4052
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 4053
    .local v2, "interfaceObject":Ljava/lang/Object;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->NULL_OBJECT:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    .line 4054
    move-object v0, v2

    check-cast v0, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4060
    .end local v2    # "interfaceObject":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v3

    .line 4057
    :catch_0
    move-exception v1

    .line 4058
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when retrieving Binder interface : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleActionPackageAdded(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "map"    # Landroid/os/Bundle;

    .prologue
    .line 3223
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "vpn handle : Handle MSG package add"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3224
    const/4 v10, -0x1

    .line 3225
    .local v10, "uid":I
    const/4 v7, 0x0

    .local v7, "packageName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 3226
    .local v6, "originalPackageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3228
    .local v1, "cid":I
    :try_start_0
    const-string/jumbo v11, "uid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 3229
    const-string v11, "package"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3230
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3231
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v11, v1, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3233
    sget-boolean v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v11, :cond_0

    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "vpn handle : package added : package =  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : uid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3234
    :cond_0
    if-nez v7, :cond_2

    .line 3280
    :cond_1
    :goto_0
    return-void

    .line 3238
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->hasVpnInterface(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 3239
    sget-boolean v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v11, :cond_3

    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "vpn handle : package added : calling bind package =  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3240
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->bindKnoxVpnInterface(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3277
    :catch_0
    move-exception v4

    .line 3278
    .local v4, "e":Ljava/lang/Exception;
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "vpn handle : pakcage add : Exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3243
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    sget-boolean v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v11, :cond_5

    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "vpn handle : package added : checking update package =  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3245
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updatePackageData(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 3246
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "vpn handle : package add : Package found in DB with rule proceed with logic"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3248
    const/4 v9, 0x0

    .line 3249
    .local v9, "profileName":Ljava/lang/String;
    const/4 v10, -0x1

    .line 3250
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v12, "VpnPackageInfo"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "packageName"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "profileName"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "packageUid"

    aput-object v17, v15, v16

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 3258
    .local v3, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_6

    .line 3260
    :try_start_2
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v12, "getting vpn object from database : Cursor not null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3261
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 3262
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v11, "profileName"

    invoke-virtual {v2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3263
    const-string v11, "packageUid"

    invoke-virtual {v2, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v10

    goto :goto_1

    .line 3265
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v5    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v4

    .line 3266
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getting vpn object from database : Exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3270
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v11, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v8

    .line 3271
    .local v8, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v8, :cond_7

    .line 3272
    invoke-virtual {v8, v7, v10, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->addPackageEntry(Ljava/lang/String;II)V

    .line 3274
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnForPackage(Ljava/lang/String;Ljava/lang/String;)I

    .line 3275
    sget-boolean v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v11, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->printProfileVpnMap()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method private handleActionUserRemoved(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "map"    # Landroid/os/Bundle;

    .prologue
    .line 3493
    const-string v13, "android.intent.extra.user_handle"

    const/16 v14, -0x2710

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 3494
    .local v6, "personaId":I
    const/4 v1, -0x1

    .line 3495
    .local v1, "adminId":I
    const/4 v8, 0x0

    .line 3496
    .local v8, "profileName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 3498
    .local v11, "transformedPackageName":Ljava/lang/String;
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleActionUserRemoved : Got USERREMOVED intent : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3502
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v14, "VpnProfileInfo"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "personaId"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 3505
    .local v3, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    sget-boolean v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v13, :cond_0

    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleActionUserRemoved : #1 cvList.size() : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3506
    :cond_0
    if-eqz v3, :cond_3

    .line 3507
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 3508
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v13, "adminUid"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3509
    const-string v13, "profileName"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3510
    sget-boolean v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v13, :cond_2

    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleActionUserRemoved : profileName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3513
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v13, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v7

    .line 3514
    .local v7, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v7, :cond_1

    .line 3515
    new-instance v12, Lcom/sec/enterprise/knox/KnoxVpnContext;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v1, v6, v13}, Lcom/sec/enterprise/knox/KnoxVpnContext;-><init>(IILjava/lang/String;)V

    .line 3516
    .local v12, "vpnContext":Lcom/sec/enterprise/knox/KnoxVpnContext;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v8, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->activateVpnProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Z)Landroid/app/enterprise/EnterpriseResponseData;

    .line 3517
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeVpnProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v10

    .line 3518
    .local v10, "result":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eqz v13, :cond_1

    .line 3519
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeVpnProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    .line 3520
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v6, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updateNotification(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3525
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v10    # "result":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .end local v12    # "vpnContext":Lcom/sec/enterprise/knox/KnoxVpnContext;
    :catch_0
    move-exception v4

    .line 3526
    .local v4, "e":Ljava/lang/Exception;
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleActionUserRemoved : Exception : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3531
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v14, "VpnProfileInfo"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "containerVpnState"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 3534
    .restart local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    sget-boolean v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v13, :cond_4

    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleActionUserRemoved : #2 cvList.size() : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3535
    :cond_4
    if-eqz v3, :cond_a

    .line 3536
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 3537
    .restart local v2    # "cv":Landroid/content/ContentValues;
    const-string v13, "adminUid"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3538
    const-string v13, "profileName"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3539
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v13, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v7

    .line 3541
    .restart local v7    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    sget-boolean v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v13, :cond_6

    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleActionUserRemoved : profileName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3544
    :cond_6
    if-eqz v7, :cond_5

    .line 3545
    sget-boolean v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v13, :cond_7

    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleActionUserRemoved : getPersonaId = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3546
    :cond_7
    sget-boolean v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v13, :cond_8

    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleActionUserRemoved : getVendorPkgName#1 = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3547
    :cond_8
    sget-boolean v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v13, :cond_9

    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleActionUserRemoved : getVendorPkgName#2 = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3548
    :cond_9
    new-instance v12, Lcom/sec/enterprise/knox/KnoxVpnContext;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v1, v6, v13}, Lcom/sec/enterprise/knox/KnoxVpnContext;-><init>(IILjava/lang/String;)V

    .line 3549
    .restart local v12    # "vpnContext":Lcom/sec/enterprise/knox/KnoxVpnContext;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeAllPackagesFromVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 3554
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v12    # "vpnContext":Lcom/sec/enterprise/knox/KnoxVpnContext;
    :catch_1
    move-exception v4

    .line 3555
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleActionUserRemoved : Exception : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3560
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v14, "VpnPackageInfo"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "packageCid"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 3563
    .restart local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    sget-boolean v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v13, :cond_b

    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleActionUserRemoved : #3 cvList.size() : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3565
    :cond_b
    if-eqz v3, :cond_f

    .line 3566
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_c
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 3567
    .restart local v2    # "cv":Landroid/content/ContentValues;
    const-string v13, "profileName"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3568
    const-string v13, "packageName"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3572
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v13, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v7

    .line 3573
    .restart local v7    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v7, :cond_c

    .line 3574
    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v1

    .line 3576
    sget-boolean v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v13, :cond_d

    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleActionUserRemoved : profileName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " adminId = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " transformedPackageName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3577
    :cond_d
    sget-boolean v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v13, :cond_e

    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleActionUserRemoved : package = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3580
    :cond_e
    new-instance v12, Lcom/sec/enterprise/knox/KnoxVpnContext;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v1, v6, v13}, Lcom/sec/enterprise/knox/KnoxVpnContext;-><init>(IILjava/lang/String;)V

    .line 3581
    .restart local v12    # "vpnContext":Lcom/sec/enterprise/knox/KnoxVpnContext;
    const/4 v13, 0x1

    new-array v9, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v14, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v9, v13

    .line 3582
    .local v9, "regularPackageNames":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v9, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removePackagesFromVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 3586
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v9    # "regularPackageNames":[Ljava/lang/String;
    .end local v12    # "vpnContext":Lcom/sec/enterprise/knox/KnoxVpnContext;
    :catch_2
    move-exception v4

    .line 3587
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleActionUserRemoved : Exception : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3590
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_f
    return-void
.end method

.method private handleActionUserStarted(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "map"    # Landroid/os/Bundle;

    .prologue
    .line 3461
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v2, "handleActionUserStarted: method is reached"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3462
    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3463
    .local v0, "containerId":I
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleActionUserStarted: container id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3464
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->initializeVpnVendorsForContainer(I)V

    .line 3465
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->runAllVpnService()V

    .line 3490
    return-void
.end method

.method private declared-synchronized handleAnyConnectUninstall(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 3338
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The package going to be removed is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "whose container id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3339
    const/4 v1, 0x0

    .line 3341
    .local v1, "packageRemoved":Z
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->deletePackageAsUser(Ljava/lang/String;II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 3345
    :try_start_2
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3346
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    .line 3349
    :cond_0
    :goto_0
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The package going to be removed result is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3350
    monitor-exit p0

    return v1

    .line 3342
    :catch_0
    move-exception v0

    .line 3343
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at handleAnyConnectUninstall "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3345
    :try_start_4
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3346
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 3338
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "packageRemoved":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 3345
    .restart local v1    # "packageRemoved":Z
    :catchall_1
    move-exception v2

    :try_start_5
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3346
    const/4 v3, 0x0

    sput-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    .line 3345
    :cond_1
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private declared-synchronized handleChainingScenarioForStartConnection(Ljava/lang/String;)V
    .locals 14
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    .line 4603
    monitor-enter p0

    const/4 v1, 0x0

    .line 4604
    .local v1, "chainedVendorUserId":I
    const/4 v0, 0x0

    .line 4605
    .local v0, "chainedVendorName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 4606
    .local v8, "profileOwningPackage":Ljava/lang/String;
    const/4 v4, 0x0

    .line 4608
    .local v4, "getPersonifiedName":Ljava/lang/String;
    :try_start_0
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v10, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v2

    .line 4609
    .local v2, "chaining_enabled":I
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleChainingScenarioForStartConnection: chaining_enabled value is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4610
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v10, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v7

    .line 4611
    .local v7, "profileInforOuterProfile":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v9

    .line 4612
    .local v9, "userIdOfOuterProfile":I
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleChainingScenarioForStartConnection: userIdOfOuterProfile value is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4613
    if-nez v2, :cond_1

    .line 4614
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 4615
    .local v6, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result v10

    if-ne v10, v13, :cond_0

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v10

    if-ne v10, v9, :cond_0

    .line 4616
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v11, "handleChainingScenarioForStartConnection: chained profile is going to be started"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4617
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mIgnoreConnectCheckForChaining:Z

    .line 4618
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnProfile(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4622
    .end local v2    # "chaining_enabled":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v7    # "profileInforOuterProfile":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v9    # "userIdOfOuterProfile":I
    :catch_0
    move-exception v3

    .line 4623
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception at handleChainingScenarioForStartConnection API "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4625
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    monitor-exit p0

    return-void

    .line 4603
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method private declared-synchronized handleChainingScenarioForStopConnection(Ljava/lang/String;)V
    .locals 14
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 4629
    monitor-enter p0

    const/4 v1, 0x0

    .line 4630
    .local v1, "chainedVendorUserId":I
    const/4 v0, 0x0

    .line 4631
    .local v0, "chainedVendorName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 4632
    .local v8, "profileOwningPackage":Ljava/lang/String;
    const/4 v4, 0x0

    .line 4634
    .local v4, "getPersonifiedName":Ljava/lang/String;
    :try_start_0
    iget-object v11, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v11, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v2

    .line 4635
    .local v2, "chaining_enabled":I
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleChainingScenarioForStopConnection: chaining_enabled value is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4636
    iget-object v11, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v11, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v7

    .line 4637
    .local v7, "profileInforOuterProfile":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v9

    .line 4638
    .local v9, "userIdOfOuterProfile":I
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleChainingScenarioForStopConnection: userIdOfOuterProfile value is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4639
    if-nez v2, :cond_1

    .line 4640
    iget-object v11, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 4641
    .local v6, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v11

    if-ne v11, v9, :cond_0

    .line 4642
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v10

    .line 4643
    .local v10, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleChainingScenarioForStopConnection: stop connection is called for profile "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4644
    if-eqz v10, :cond_0

    .line 4645
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->stopConnection(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4650
    .end local v2    # "chaining_enabled":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v7    # "profileInforOuterProfile":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v9    # "userIdOfOuterProfile":I
    .end local v10    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v3

    .line 4651
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception at handleChainingScenario API "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4653
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    monitor-exit p0

    return-void

    .line 4629
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11
.end method

.method private handleConnectivityAction(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "map"    # Landroid/os/Bundle;

    .prologue
    .line 3085
    const-string v1, "noConnectivity"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 3086
    .local v0, "networkDown":Z
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vpn handle : connectivity action : Handle MSG CONNECTIVITY_ACTION. networkDown = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3087
    if-nez v0, :cond_0

    .line 3088
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->runAllVpnService()V

    .line 3090
    :cond_0
    return-void
.end method

.method private handleKnoxVpnServiceDisconnect(Ljava/lang/String;)V
    .locals 21
    .param p1, "vendorNameWithCid"    # Ljava/lang/String;

    .prologue
    .line 3907
    :try_start_0
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handle disconnect to vendor : vendorNameWithCid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3908
    const/4 v2, 0x0

    .line 3909
    .local v2, "mConnectivityService":Landroid/net/IConnectivityManager;
    const-string v8, "connectivity"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v2

    .line 3910
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handle disconnect to vendor : mConnectivityService = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3911
    const/16 v18, 0x0

    .line 3912
    .local v18, "interfaceName":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "oldPackage":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3913
    .local v4, "newPackage":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "isConnecting":Z
    const/4 v12, 0x0

    .local v12, "PERAPP_VPN":Z
    const/4 v6, 0x1

    .line 3914
    .local v6, "SYSTEM_VPN":Z
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 3915
    .local v20, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v5

    .line 3916
    .local v5, "profileName":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v14

    .line 3917
    .local v14, "activateState":I
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handle disconnect to vendor : profileName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3918
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v19

    .line 3919
    .local v19, "storedVendorName":Ljava/lang/String;
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handle disconnect to vendor : storedVendorName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3920
    sget v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    if-eq v14, v8, :cond_0

    if-eqz v19, :cond_0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3921
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v17

    .line 3922
    .local v17, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updateNoUidChain(Ljava/lang/String;)V

    .line 3923
    const/4 v8, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setInterfaceName(Ljava/lang/String;)V

    .line 3925
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v8

    sget v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->SYSTEM_VPN:I

    if-ne v8, v9, :cond_2

    .line 3927
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v9, "handle disconnect to vendor : Disconnecting System vpn"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3928
    invoke-interface/range {v2 .. v7}, Landroid/net/IConnectivityManager;->prepareEnterpriseVpn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3943
    .end local v2    # "mConnectivityService":Landroid/net/IConnectivityManager;
    .end local v3    # "oldPackage":Ljava/lang/String;
    .end local v4    # "newPackage":Ljava/lang/String;
    .end local v5    # "profileName":Ljava/lang/String;
    .end local v6    # "SYSTEM_VPN":Z
    .end local v7    # "isConnecting":Z
    .end local v12    # "PERAPP_VPN":Z
    .end local v14    # "activateState":I
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "iface":Ljava/lang/String;
    .end local v18    # "interfaceName":Ljava/lang/String;
    .end local v19    # "storedVendorName":Ljava/lang/String;
    .end local v20    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_0
    move-exception v15

    .line 3944
    .local v15, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handle knox vpn service disconnect : Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v15}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3946
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 3930
    .restart local v2    # "mConnectivityService":Landroid/net/IConnectivityManager;
    .restart local v3    # "oldPackage":Ljava/lang/String;
    .restart local v4    # "newPackage":Ljava/lang/String;
    .restart local v5    # "profileName":Ljava/lang/String;
    .restart local v6    # "SYSTEM_VPN":Z
    .restart local v7    # "isConnecting":Z
    .restart local v12    # "PERAPP_VPN":Z
    .restart local v14    # "activateState":I
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v17    # "iface":Ljava/lang/String;
    .restart local v18    # "interfaceName":Ljava/lang/String;
    .restart local v19    # "storedVendorName":Ljava/lang/String;
    .restart local v20    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_2
    :try_start_1
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v9, "handle disconnect to vendor : Disconnecting Per-App vpn"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3932
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpRouteAndPolicyRules(Ljava/lang/String;)V

    .line 3934
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addPackagesToIpTables(Ljava/lang/String;)V

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    move v13, v7

    .line 3935
    invoke-interface/range {v8 .. v13}, Landroid/net/IConnectivityManager;->prepareEnterpriseVpn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    goto/16 :goto_0

    .line 3942
    .end local v5    # "profileName":Ljava/lang/String;
    .end local v14    # "activateState":I
    .end local v17    # "iface":Ljava/lang/String;
    .end local v19    # "storedVendorName":Ljava/lang/String;
    .end local v20    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_3
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v8, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->printProfileVpnMap()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private handleMigrate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "map"    # Landroid/os/Bundle;

    .prologue
    .line 3082
    return-void
.end method

.method private declared-synchronized handleVpnInterfaceState(Landroid/os/Bundle;)V
    .locals 20
    .param p1, "map"    # Landroid/os/Bundle;

    .prologue
    .line 3114
    monitor-enter p0

    :try_start_0
    const-string v17, "extra_profile_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3115
    .local v10, "profileName":Ljava/lang/String;
    const-string v17, "extra_action"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3116
    .local v2, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 3117
    .local v9, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v9, :cond_1

    .line 3190
    .end local v2    # "action":Ljava/lang/String;
    .end local v9    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v10    # "profileName":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 3120
    .restart local v2    # "action":Ljava/lang/String;
    .restart local v9    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v10    # "profileName":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v17

    sget v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->SYSTEM_VPN:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 3124
    const-string/jumbo v17, "tun_info"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 3125
    const-string v17, "extra_tun_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3126
    .local v14, "tunInterfaceName":Ljava/lang/String;
    const-string v17, "extra_state"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 3127
    .local v13, "state":I
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "handleVpnInterfaceState - ProfileName, state, tunInterfaceName : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3129
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_9

    .line 3130
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "handleVpnInterfaceState  TUN INTERFACE UP - ProfileName : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3131
    if-eqz v9, :cond_0

    .line 3134
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getActivate(Ljava/lang/String;)I

    move-result v3

    .line 3135
    .local v3, "active":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVpnConnectionType(Ljava/lang/String;)I

    move-result v15

    .line 3136
    .local v15, "vpnConnectionType":I
    sget v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    move/from16 v0, v17

    if-ne v3, v0, :cond_3

    const/4 v7, 0x1

    .line 3137
    .local v7, "isNotActivated":Z
    :goto_1
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->processRunCheck(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)Z

    move-result v17

    if-nez v17, :cond_4

    const/4 v8, 0x1

    .line 3139
    .local v8, "onDemand":Z
    :goto_2
    if-nez v8, :cond_2

    if-eqz v7, :cond_8

    .line 3140
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v16

    .line 3141
    .local v16, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v16, :cond_5

    .line 3142
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v17, :cond_0

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v18, "onApplicationStop : stopping vpn connection : Service is not started"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 3187
    .end local v2    # "action":Ljava/lang/String;
    .end local v3    # "active":I
    .end local v7    # "isNotActivated":Z
    .end local v8    # "onDemand":Z
    .end local v9    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v10    # "profileName":Ljava/lang/String;
    .end local v13    # "state":I
    .end local v14    # "tunInterfaceName":Ljava/lang/String;
    .end local v15    # "vpnConnectionType":I
    .end local v16    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v5

    .line 3188
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "handleVpnInterfaceState : Exception : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 3114
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17

    .line 3136
    .restart local v2    # "action":Ljava/lang/String;
    .restart local v3    # "active":I
    .restart local v9    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v10    # "profileName":Ljava/lang/String;
    .restart local v13    # "state":I
    .restart local v14    # "tunInterfaceName":Ljava/lang/String;
    .restart local v15    # "vpnConnectionType":I
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 3137
    .restart local v7    # "isNotActivated":Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    .line 3145
    .restart local v8    # "onDemand":Z
    .restart local v16    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_5
    :try_start_3
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->stopConnection(Ljava/lang/String;)I

    move-result v11

    .line 3146
    .local v11, "returnVal":I
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v17, :cond_6

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "handleVpnInterfaceState : TUN_INTERFACE_UP : stop : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3147
    :cond_6
    if-nez v11, :cond_7

    .line 3148
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removePackagesFromIpTables(Ljava/lang/String;)V

    .line 3158
    .end local v11    # "returnVal":I
    .end local v16    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleChainingScenarioForStartConnection(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3152
    :cond_8
    invoke-virtual {v9, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setInterfaceName(Ljava/lang/String;)V

    .line 3154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpRouteAndPolicyRules(Ljava/lang/String;)V

    .line 3156
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addPackagesToIpTables(Ljava/lang/String;)V

    goto :goto_3

    .line 3159
    .end local v3    # "active":I
    .end local v7    # "isNotActivated":Z
    .end local v8    # "onDemand":Z
    .end local v15    # "vpnConnectionType":I
    :cond_9
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v13, v0, :cond_0

    .line 3160
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "handleVpnInterfaceState  TUN INTERFACE DOWN - ProfileName : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3161
    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    .line 3163
    .local v6, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpRouteAndPolicyRules(Ljava/lang/String;)V

    .line 3164
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "handleVpnInterfaceState  TUN INTERFACE DOWN : profile connected. profileName : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3165
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updateNoUidChain(Ljava/lang/String;)V

    .line 3166
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setInterfaceName(Ljava/lang/String;)V

    .line 3167
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "handleVpnInterfaceState  Trying to remove profile : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3169
    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getMarkProfileForDeletion()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 3170
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "handleVpnInterfaceState : Got it. removing profile : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->removeProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 3178
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleChainingScenarioForStopConnection(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3175
    :cond_a
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "handleVpnInterfaceState : Adding blocking rules : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3176
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addPackagesToIpTables(Ljava/lang/String;)V

    goto :goto_4

    .line 3180
    .end local v6    # "iface":Ljava/lang/String;
    .end local v13    # "state":I
    .end local v14    # "tunInterfaceName":Ljava/lang/String;
    :cond_b
    const-string v17, "dns_info"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 3181
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "handleVpnInterfaceState  DNS INFO - ProfileName : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    const-string v17, "dnsList"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 3183
    .local v4, "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v17, "searchDomainList"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 3184
    .local v12, "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v9, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setDnsList(Ljava/util/List;)V

    .line 3185
    invoke-virtual {v9, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setSearchDomainList(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method private hasVpnInterface(Ljava/lang/String;)Z
    .locals 1
    .param p1, "vendorName"    # Ljava/lang/String;

    .prologue
    .line 4072
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4073
    const/4 v0, 0x1

    .line 4075
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeHandlerThread()V
    .locals 3

    .prologue
    .line 223
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KnoxVpnHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 224
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 225
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

    .line 226
    return-void
.end method

.method private initializeHashtable()V
    .locals 28

    .prologue
    .line 2445
    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v24, "initializeHashtable "

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    move-object/from16 v23, v0

    const-string v24, "VpnProfileInfo"

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {v23 .. v27}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 2452
    .local v8, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/16 v16, 0x0

    .line 2453
    .local v16, "profileName":Ljava/lang/String;
    const/16 v21, 0x0

    .line 2454
    .local v21, "vendorNameWithCid":Ljava/lang/String;
    const/16 v17, 0x0

    .line 2455
    .local v17, "protocolType":Ljava/lang/String;
    const/4 v3, -0x1

    .line 2456
    .local v3, "adminId":I
    const/4 v14, 0x0

    .line 2457
    .local v14, "personaId":I
    const/16 v18, -0x1

    .line 2458
    .local v18, "routeType":I
    sget v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    .line 2459
    .local v2, "activateState":I
    const/16 v22, -0x1

    .line 2460
    .local v22, "vpnConnectionType":I
    const/4 v6, -0x1

    .local v6, "containerVpnState":I
    const/16 v20, 0x0

    .line 2461
    .local v20, "uidPidState":I
    const/4 v4, 0x0

    .line 2463
    .local v4, "chainingEnabled":I
    const/4 v15, 0x0

    .line 2464
    .local v15, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-lez v23, :cond_5

    .line 2466
    sget-boolean v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v23, :cond_0

    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v24, "initializeHashtable : VPN INFO: New Framework is enabled. Set the system property"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    :cond_0
    const-string v23, "net.vpn.framework"

    const-string v24, "2.0"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2468
    sget-boolean v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v23, :cond_1

    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v24, "initializeHashtable : Cursor not null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2469
    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 2470
    .local v7, "cv":Landroid/content/ContentValues;
    const-string v23, "profileName"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2471
    const-string v23, "defaultRoute"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 2472
    const-string v23, "adminUid"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2473
    const-string v23, "personaId"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 2474
    const-string/jumbo v23, "vendorName"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2475
    const-string v23, "protocolType"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2476
    const-string v23, "activateState"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2477
    const-string v23, "containerVpnState"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2478
    const-string/jumbo v23, "vpnConnectionType"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 2479
    const-string v23, "chainingEnabled"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2480
    const-string/jumbo v23, "uidPidSearch"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 2481
    sget-boolean v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v23, :cond_3

    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "initializeHashtable : adminId :"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Profile :"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " vendorName :"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", vpnConnectionType: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", chainingEnabled: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    :cond_3
    if-eqz v16, :cond_2

    .line 2485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->containsProfileEntry(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_4

    .line 2486
    new-instance v15, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .end local v15    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-direct {v15}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;-><init>()V

    .line 2487
    .restart local v15    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setInterfaceName(Ljava/lang/String;)V

    .line 2488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->addProfileEntry(Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 2491
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v15

    .line 2492
    if-nez v15, :cond_b

    .line 2493
    sget-boolean v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v23, :cond_2

    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v24, "initializeHashtable :  profileName is not exist in vpnConfig"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2516
    .end local v2    # "activateState":I
    .end local v3    # "adminId":I
    .end local v4    # "chainingEnabled":I
    .end local v6    # "containerVpnState":I
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v14    # "personaId":I
    .end local v15    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v16    # "profileName":Ljava/lang/String;
    .end local v17    # "protocolType":Ljava/lang/String;
    .end local v18    # "routeType":I
    .end local v20    # "uidPidState":I
    .end local v21    # "vendorNameWithCid":Ljava/lang/String;
    .end local v22    # "vpnConnectionType":I
    :catch_0
    move-exception v9

    .line 2517
    .local v9, "e":Ljava/lang/Exception;
    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "init :  Exception when reading Profile DB:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    move-object/from16 v23, v0

    const-string v24, "VpnPackageInfo"

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {v23 .. v27}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 2525
    .restart local v8    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v13, 0x0

    .local v13, "packageName":Ljava/lang/String;
    const/16 v16, 0x0

    .line 2526
    .restart local v16    # "profileName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 2527
    .local v11, "originalPackageName":Ljava/lang/String;
    const/16 v19, -0x1

    .local v19, "uid":I
    const/4 v5, 0x0

    .line 2529
    .local v5, "cid":I
    const/4 v12, 0x0

    .line 2530
    .local v12, "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    const/4 v15, 0x0

    .line 2531
    .restart local v15    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v8, :cond_9

    .line 2532
    sget-boolean v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v23, :cond_6

    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v24, "initializeHashtable : step#2 : Cursor not null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    :cond_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 2534
    .restart local v7    # "cv":Landroid/content/ContentValues;
    const-string v23, "profileName"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2535
    const-string v23, "packageName"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2536
    const-string v23, "packageUid"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 2537
    const-string v23, "packageCid"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2539
    sget-boolean v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v23, :cond_8

    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "initializeHashtable :  Cid : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "Uid:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Profile:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " packageName:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    :cond_8
    const/16 v23, -0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-le v0, v1, :cond_e

    .line 2541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v15

    .line 2542
    if-eqz v15, :cond_7

    .line 2544
    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v14

    .line 2546
    .restart local v14    # "personaId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 2548
    move/from16 v0, v19

    invoke-virtual {v15, v13, v0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->addPackageEntry(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 2577
    .end local v5    # "cid":I
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "originalPackageName":Ljava/lang/String;
    .end local v12    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "personaId":I
    .end local v15    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v16    # "profileName":Ljava/lang/String;
    .end local v19    # "uid":I
    :catch_1
    move-exception v9

    .line 2578
    .restart local v9    # "e":Ljava/lang/Exception;
    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "init2 :  Exception when reading package DB:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2580
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_9
    sget-boolean v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v23, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->printProfileVpnMap()V

    .line 2581
    :cond_a
    return-void

    .line 2497
    .restart local v2    # "activateState":I
    .restart local v3    # "adminId":I
    .restart local v4    # "chainingEnabled":I
    .restart local v6    # "containerVpnState":I
    .restart local v7    # "cv":Landroid/content/ContentValues;
    .restart local v8    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v14    # "personaId":I
    .restart local v15    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v16    # "profileName":Ljava/lang/String;
    .restart local v17    # "protocolType":Ljava/lang/String;
    .restart local v18    # "routeType":I
    .restart local v20    # "uidPidState":I
    .restart local v21    # "vendorNameWithCid":Ljava/lang/String;
    .restart local v22    # "vpnConnectionType":I
    :cond_b
    :try_start_2
    sget-boolean v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v23, :cond_c

    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v24, "initializeHashtable :  ProfileName found in map. Add to the list."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    :cond_c
    invoke-virtual/range {v15 .. v16}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setProfileName(Ljava/lang/String;)V

    .line 2500
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setRouteType(I)V

    .line 2501
    invoke-virtual {v15, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setAdminId(I)V

    .line 2502
    invoke-virtual {v15, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setPersonaId(I)V

    .line 2503
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setVendorPkgName(Ljava/lang/String;)V

    .line 2504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUidForPackageName(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setVendorUid(I)V

    .line 2505
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setProtocolType(Ljava/lang/String;)V

    .line 2506
    invoke-virtual {v15, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setActivateState(I)V

    .line 2507
    invoke-virtual {v15, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setContainerVpnState(I)V

    .line 2508
    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setUidPidSearchEnabled(I)V

    .line 2509
    move/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setVpnConnectionType(I)V

    .line 2510
    invoke-virtual {v15, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setChainingEnabled(I)V

    .line 2512
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->refreshDomainInHashMap(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2551
    .end local v2    # "activateState":I
    .end local v3    # "adminId":I
    .end local v4    # "chainingEnabled":I
    .end local v6    # "containerVpnState":I
    .end local v17    # "protocolType":Ljava/lang/String;
    .end local v18    # "routeType":I
    .end local v20    # "uidPidState":I
    .end local v21    # "vendorNameWithCid":Ljava/lang/String;
    .end local v22    # "vpnConnectionType":I
    .restart local v5    # "cid":I
    .restart local v11    # "originalPackageName":Ljava/lang/String;
    .restart local v12    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .restart local v13    # "packageName":Ljava/lang/String;
    .restart local v19    # "uid":I
    :cond_d
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->deleteUIDFromPackageData(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 2555
    .end local v14    # "personaId":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v19

    .line 2557
    sget-boolean v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v23, :cond_f

    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "initializeHashtable : originalPackageName : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    :cond_f
    sget-boolean v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v23, :cond_10

    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "initializeHashtable : uid : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    :cond_10
    const/16 v23, -0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-le v0, v1, :cond_7

    .line 2560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v15

    .line 2562
    if-eqz v15, :cond_7

    .line 2563
    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v14

    .line 2566
    .restart local v14    # "personaId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 2567
    move/from16 v0, v19

    invoke-virtual {v15, v13, v0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->addPackageEntry(Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 2570
    :cond_11
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->deleteUIDFromPackageData(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method

.method private initializeVpnVendors()V
    .locals 9

    .prologue
    .line 2421
    :try_start_0
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v7, "initializeVpnVendors"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2423
    .local v4, "vendorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v7, "initializeVpnVendors : vendorList initialized"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 2425
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v3

    .line 2426
    .local v3, "profileName":Ljava/lang/String;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initializeVpnVendors : ProfileName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v5

    .line 2428
    .local v5, "vendorNameWithCid":Ljava/lang/String;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initializeVpnVendors : Checking vendor : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    if-eqz v5, :cond_0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2430
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initializeVpnVendors : Adding vendor : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2439
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "profileName":Ljava/lang/String;
    .end local v4    # "vendorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "vendorNameWithCid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2440
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initializeVpnVendors : Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void

    .line 2435
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "vendorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2436
    .restart local v5    # "vendorNameWithCid":Ljava/lang/String;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initializeVpnVendors : Binding to vendor : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->bindKnoxVpnInterface(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private initializeVpnVendorsForContainer(I)V
    .locals 10
    .param p1, "containerId"    # I

    .prologue
    .line 2388
    :try_start_0
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v8, "initializeVpnVendorsForContainer"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2390
    .local v5, "vendorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v8, "initializeVpnVendorsForContainer : vendorList initialized"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2391
    :cond_0
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 2392
    .local v3, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v4

    .line 2393
    .local v4, "profileName":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v0

    .line 2394
    .local v0, "cid":I
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initializeVpnVendorsForContainer : ProfileName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , cid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v6

    .line 2396
    .local v6, "vendorNameWithCid":Ljava/lang/String;
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v7, :cond_3

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initializeVpnVendorsForContainer : Checking vendor : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    :cond_3
    if-ne v0, p1, :cond_1

    if-eqz v6, :cond_1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2398
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v7, :cond_4

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initializeVpnVendorsForContainer : Adding vendor : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    :cond_4
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2414
    .end local v0    # "cid":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v4    # "profileName":Ljava/lang/String;
    .end local v5    # "vendorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "vendorNameWithCid":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2415
    .local v1, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initializeVpnVendorsForContainer : Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    return-void

    .line 2403
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "vendorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    :try_start_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2404
    .restart local v6    # "vendorNameWithCid":Ljava/lang/String;
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v7, :cond_8

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initializeVpnVendorsForContainer : Binding to vendor : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    :cond_8
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->NULL_OBJECT:Ljava/lang/Object;

    if-ne v7, v8, :cond_a

    .line 2408
    :cond_9
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->bindKnoxVpnInterface(Ljava/lang/String;)Z

    goto :goto_1

    .line 2410
    :cond_a
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v7, :cond_7

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v8, "initializeVpnVendorsForContainer : Binding already done"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private isNetworkConnected()Z
    .locals 2

    .prologue
    .line 2337
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getConnectionManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getConnectionManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2339
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v1, "check network connection : returns true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    const/4 v0, 0x1

    .line 2343
    :goto_0
    return v0

    .line 2342
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v1, "check network connection : returns false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized onApplicationStart(II)V
    .locals 6
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 4435
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 4436
    .local v2, "profileName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 4437
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, -0x1

    .line 4439
    .local v0, "iResult":I
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVpnConnectionType(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 4453
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 4443
    :cond_1
    :try_start_1
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onApplicationStart : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4444
    :cond_2
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onApplicationStart : profileName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / packageName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / getVpnConnectionType(profileName)  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVpnConnectionType(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4446
    :cond_3
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const v4, 0x186a0

    div-int v4, p2, v4

    invoke-virtual {v3, v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnForPackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 4447
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activateVpnProfile : start a vpn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4435
    .end local v0    # "iResult":I
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "profileName":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized onApplicationStop(II)V
    .locals 11
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 4457
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v8, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileNameForUid(I)Ljava/lang/String;

    move-result-object v5

    .line 4458
    .local v5, "profileName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 4460
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVpnConnectionType(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    .line 4509
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 4464
    :cond_1
    :try_start_1
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v8, :cond_2

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onApplicationStop : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4465
    :cond_2
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v8, :cond_3

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onApplicationStop : profileName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / packageName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / getVpnConnectionType(profileName)  : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVpnConnectionType(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4468
    :cond_3
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v8, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v4

    .line 4469
    .local v4, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v4, :cond_4

    .line 4470
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v9, "profileEntry is null!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4457
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v5    # "profileName":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 4475
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v5    # "profileName":Ljava/lang/String;
    :cond_4
    :try_start_2
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->processRunCheck(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)Z

    move-result v2

    .line 4476
    .local v2, "isExistRunningApps":Z
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v8, :cond_5

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onApplicationStop : isExistRunningApps : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4478
    :cond_5
    if-nez v2, :cond_0

    .line 4482
    :try_start_3
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .line 4483
    .local v1, "iface":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v8, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpRouteAndPolicyRules(Ljava/lang/String;)V

    .line 4484
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updateNoUidChain(Ljava/lang/String;)V

    .line 4485
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setInterfaceName(Ljava/lang/String;)V

    .line 4486
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addPackagesToIpTables(Ljava/lang/String;)V

    .line 4488
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v7

    .line 4489
    .local v7, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v7, :cond_6

    .line 4490
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v9, "onApplicationStop : stopping vpn connection : Service is not started"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 4503
    .end local v1    # "iface":Ljava/lang/String;
    .end local v7    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v0

    .line 4504
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "stopping vpn connection : Failure at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 4494
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "iface":Ljava/lang/String;
    .restart local v7    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_6
    :try_start_5
    invoke-interface {v7, v5}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->stopConnection(Ljava/lang/String;)I

    move-result v6

    .line 4496
    .local v6, "returnVal":I
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onApplicationStop : stopConnection#1 : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method private printProfileVpnMap()V
    .locals 13

    .prologue
    .line 2348
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v9, :cond_0

    .line 2349
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v10, "********************Printing profile map ********************"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileCount()I

    move-result v5

    .line 2352
    .local v5, "profileCount":I
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No of profiles: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 2354
    .local v6, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v6, :cond_2

    .line 2355
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v7

    .line 2356
    .local v7, "profileName":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 2358
    .local v3, "interfaceName":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v8

    .line 2359
    .local v8, "state":I
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "{ProfileName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "iface:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ; personaId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ; adminId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "activated:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v9

    sget v12, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    if-ne v9, v12, :cond_1

    const-string v9, "false "

    :goto_1
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2366
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "containerVpn user:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getContainerVpnState()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 2368
    .local v4, "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "{ uid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", packageName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", profileName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "}},"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2379
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "interfaceName":Ljava/lang/String;
    .end local v4    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v5    # "profileCount":I
    .end local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v7    # "profileName":Ljava/lang/String;
    .end local v8    # "state":I
    :catch_0
    move-exception v0

    .line 2380
    .local v0, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v10, "-----------------Printing profile map --------------------------"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    :cond_0
    return-void

    .line 2364
    .restart local v3    # "interfaceName":Ljava/lang/String;
    .restart local v5    # "profileCount":I
    .restart local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v7    # "profileName":Ljava/lang/String;
    .restart local v8    # "state":I
    :cond_1
    :try_start_1
    const-string/jumbo v9, "true "

    goto/16 :goto_1

    .line 2374
    .end local v3    # "interfaceName":Ljava/lang/String;
    .end local v7    # "profileName":Ljava/lang/String;
    .end local v8    # "state":I
    :cond_2
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v10, "VpnProfileInfo contains NULL object."

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    :cond_3
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v10, "]},"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2378
    .end local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_4
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v10, "] "

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private declared-synchronized processRunCheck(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)Z
    .locals 10
    .param p1, "profileEntry"    # Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .prologue
    .line 4514
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4515
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 4516
    .local v4, "runningApplicationProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 4517
    .local v6, "runningUID":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 4520
    .local v3, "profilePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 4524
    .local v5, "runningProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v7, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4514
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "profilePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "runningApplicationProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v5    # "runningProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v6    # "runningUID":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 4527
    .restart local v0    # "activityManager":Landroid/app/ActivityManager;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "profilePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "runningApplicationProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v6    # "runningUID":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 4530
    .local v2, "pkgInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4533
    .end local v2    # "pkgInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    :cond_1
    invoke-interface {v6, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 4535
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 4536
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processRunCheck / runningUID.size() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4537
    :cond_2
    const/4 v7, 0x1

    .line 4540
    :goto_2
    monitor-exit p0

    return v7

    :cond_3
    const/4 v7, 0x0

    goto :goto_2
.end method

.method private refreshDomainInHashMap(Ljava/lang/String;)V
    .locals 10
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 4354
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    invoke-virtual {v7, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 4355
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    .line 4356
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, p1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4358
    :cond_0
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v7, :cond_2

    .line 4359
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v8, "#################### Printing domain map ####################"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4361
    :try_start_0
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Domain Count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " [ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4362
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4363
    .local v5, "key":Ljava/lang/String;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 4364
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, ""

    .line 4365
    .local v3, "itemStr":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 4366
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4365
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4369
    :cond_1
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "{ProfileName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4370
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    domains : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, ""

    :goto_2
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4371
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v8, "]},"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4374
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "itemStr":Ljava/lang/String;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 4375
    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4377
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v8, "#################### Printing domain map ####################"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4379
    :cond_2
    return-void

    .line 4370
    .restart local v1    # "i":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "itemStr":Ljava/lang/String;
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "key":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x1

    :try_start_1
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 4373
    .end local v1    # "i":I
    .end local v3    # "itemStr":Ljava/lang/String;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    :cond_4
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v8, "] "

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private registerPersonaObserverForVpn()V
    .locals 4

    .prologue
    .line 3949
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    const-string v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .line 3951
    .local v1, "mPersona":Landroid/os/PersonaManager;
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v3, "registerSystemPersonaObserver"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3954
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v3, "Registering personaObserver"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3955
    new-instance v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$1;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    invoke-virtual {v1, v2}, Landroid/os/PersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3984
    :goto_0
    return-void

    .line 3981
    :catch_0
    move-exception v0

    .line 3982
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v3, " Error registering with Persona service via registerSystemPersonaObserver"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeAllUidByTAG(Ljava/lang/String;)V
    .locals 7
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 4717
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4719
    .local v0, "blockToken":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v3

    .line 4720
    .local v3, "mEntProvider":Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    if-eqz v3, :cond_0

    .line 4721
    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->removeAllUidByTAG(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4726
    .end local v3    # "mEntProvider":Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4728
    return-void

    .line 4723
    :catch_0
    move-exception v2

    .line 4724
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception at removeAllUidByTAG API "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4726
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private removeContainerFromExceptionList(Ljava/lang/String;I)V
    .locals 7
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 4704
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4706
    .local v0, "blockToken":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v3

    .line 4707
    .local v3, "mEntProvider":Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    if-eqz v3, :cond_0

    .line 4708
    invoke-virtual {v3, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->removeContainerFromExceptionList(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4713
    .end local v3    # "mEntProvider":Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4715
    return-void

    .line 4710
    :catch_0
    move-exception v2

    .line 4711
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception at removeContainerFromExceptionList API "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4713
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private removeFromHashMapByPackageName(Ljava/lang/String;)V
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 2675
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v11, "removeFromHashMapByPackageName: In remove package"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2676
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v10, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2677
    .local v4, "profileName":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v10, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v3

    .line 2678
    .local v3, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v3, :cond_1

    .line 2679
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v11, "removeFromHashMapByPackageName: Package name not found in the map"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    :cond_0
    :goto_0
    return-void

    .line 2682
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v10

    sget v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    if-ne v10, v11, :cond_2

    .line 2683
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v11, "removeFromHashMapByPackageName :Profile is deactivated. Just removing package entry"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->removePackageEntry(Ljava/lang/String;)V

    goto :goto_0

    .line 2688
    :cond_2
    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackage(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    move-result-object v2

    .line 2690
    .local v2, "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    if-nez v2, :cond_3

    .line 2691
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v10, :cond_0

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v11, "removeFromHashMapByPackageName : Vpn Package Info entry is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2695
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v7

    .line 2697
    .local v7, "uid":I
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v7, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpTableMangleNatRules(ILjava/lang/String;)V

    .line 2698
    invoke-direct {p0, v4, v7, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->unsetDnsSystemProperty(Ljava/lang/String;II)V

    .line 2699
    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->removePackageEntry(Ljava/lang/String;)V

    .line 2702
    invoke-direct {p0, v4, v7, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeUIDListFromExceptionList(Ljava/lang/String;ILjava/lang/String;)V

    .line 2704
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageCount()I

    move-result v5

    .line 2705
    .local v5, "size":I
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVpnConnectionType(Ljava/lang/String;)I

    move-result v8

    .line 2706
    .local v8, "vpnConnectionType":I
    if-ne v8, v1, :cond_7

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->processRunCheck(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 2709
    .local v1, "onDemand":Z
    :goto_1
    if-gtz v5, :cond_4

    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getContainerVpnState()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_5

    :cond_4
    if-eqz v1, :cond_6

    .line 2710
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v6

    .line 2711
    .local v6, "state":I
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "removeFromHashMapByPackageName : current state = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    :try_start_0
    new-instance v9, Lcom/sec/enterprise/knox/KnoxVpnContext;

    const/16 v10, 0x3e8

    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v11

    const-string v12, "Knox_Framework"

    invoke-direct {v9, v10, v11, v12}, Lcom/sec/enterprise/knox/KnoxVpnContext;-><init>(IILjava/lang/String;)V

    .line 2715
    .local v9, "vpnContext":Lcom/sec/enterprise/knox/KnoxVpnContext;
    invoke-virtual {p0, v9, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopConnection(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2720
    .end local v6    # "state":I
    .end local v9    # "vpnContext":Lcom/sec/enterprise/knox/KnoxVpnContext;
    :cond_6
    :goto_2
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v10, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->printProfileVpnMap()V

    goto/16 :goto_0

    .line 2706
    .end local v1    # "onDemand":Z
    :cond_7
    const/4 v1, 0x0

    goto :goto_1

    .line 2716
    .restart local v1    # "onDemand":Z
    .restart local v6    # "state":I
    :catch_0
    move-exception v0

    .line 2717
    .local v0, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "remove profile : Exception:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private removeFromHashMapByProfileName(Ljava/lang/String;)V
    .locals 20
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 2606
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v18, "remove profile : beginning:"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v11

    .line 2609
    .local v11, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v11, :cond_1

    .line 2610
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v18, "remove profile : VpnProfileInfo returned null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2672
    :cond_0
    :goto_0
    return-void

    .line 2613
    :cond_1
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    .line 2615
    .local v7, "interfaceName":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 2616
    .local v9, "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    const/4 v10, 0x0

    .line 2617
    .local v10, "packageName":Ljava/lang/String;
    const/4 v14, -0x1

    .line 2619
    .local v14, "uid":I
    if-nez v9, :cond_3

    .line 2620
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v17, :cond_2

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v18, "remove profile : Vpn Package Info entry is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2624
    :cond_3
    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 2625
    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v14

    .line 2629
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeUIDListFromExceptionList(Ljava/lang/String;ILjava/lang/String;)V

    .line 2631
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "remove profile : uid = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-object/from16 v17, v0

    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpTableMangleNatRules(ILjava/lang/String;)V

    .line 2633
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->unsetDnsSystemProperty(Ljava/lang/String;II)V

    goto :goto_1

    .line 2636
    .end local v9    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v14    # "uid":I
    :cond_4
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getContainerVpnState()I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 2638
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getContainerVpnState()I

    move-result v4

    .line 2640
    .local v4, "cid":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeContainerFromExceptionList(Ljava/lang/String;I)V

    .line 2642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-object/from16 v17, v0

    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpTableMangleNatRulesForRange(ILjava/lang/String;)V

    .line 2643
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startUid(I)I

    move-result v17

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopUid(I)I

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->unsetDnsSystemProperty(Ljava/lang/String;II)V

    .line 2646
    .end local v4    # "cid":I
    :cond_5
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v16

    .line 2648
    .local v16, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v12

    .line 2649
    .local v12, "state":I
    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v12, v0, :cond_6

    const/16 v17, 0x4

    move/from16 v0, v17

    if-eq v12, v0, :cond_6

    const/16 v17, 0x66

    move/from16 v0, v17

    if-eq v12, v0, :cond_6

    const/16 v17, 0x68

    move/from16 v0, v17

    if-ne v12, v0, :cond_7

    .line 2653
    :cond_6
    :try_start_1
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "removeFromHashMapByProfileName : setting mark and calling stop:  profile : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setMarkProfileForDeletion(Z)V

    .line 2655
    new-instance v15, Lcom/sec/enterprise/knox/KnoxVpnContext;

    const/16 v17, 0x3e8

    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v18

    const-string v19, "Knox_Framework"

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/sec/enterprise/knox/KnoxVpnContext;-><init>(IILjava/lang/String;)V

    .line 2657
    .local v15, "vpnContext":Lcom/sec/enterprise/knox/KnoxVpnContext;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v15, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopConnection(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v8

    .line 2658
    .local v8, "mEnterpriseResponseData":Landroid/app/enterprise/EnterpriseResponseData;
    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 2659
    .local v13, "stopStatus":I
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "removeFromHashMapByProfileName : stop status : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2664
    .end local v8    # "mEnterpriseResponseData":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v13    # "stopStatus":I
    .end local v15    # "vpnContext":Lcom/sec/enterprise/knox/KnoxVpnContext;
    :cond_7
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->containsProfileEntry(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 2665
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeMangleExceptions(Ljava/lang/String;Ljava/lang/String;)V

    .line 2666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->removeProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2671
    .end local v12    # "state":I
    .end local v16    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_8
    :goto_3
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v17, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->printProfileVpnMap()V

    goto/16 :goto_0

    .line 2660
    .restart local v12    # "state":I
    .restart local v16    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v5

    .line 2661
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "remove profile : Exception:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 2668
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v12    # "state":I
    .end local v16    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_1
    move-exception v5

    .line 2669
    .restart local v5    # "e":Ljava/lang/Exception;
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "remove profile : Exception:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private removeMangleExceptions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "vendorNameWithCid"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3208
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeMangleExceptions : vendor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3209
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 3210
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3211
    .local v2, "vendorName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v0

    .line 3212
    .local v0, "cid":I
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v1

    .line 3213
    .local v1, "uid":I
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeMangleExceptions : uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3214
    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_1

    .line 3215
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeMangleExceptionsForStrongswan(I)V

    .line 3220
    .end local v0    # "cid":I
    .end local v1    # "uid":I
    .end local v2    # "vendorName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 3217
    .restart local v0    # "cid":I
    .restart local v1    # "uid":I
    .restart local v2    # "vendorName":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeMangleExceptionsForUid(I)V

    goto :goto_0
.end method

.method private removePackagesFromIpTables(Ljava/lang/String;)V
    .locals 9
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3697
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removePackagesFromIpTables : profileName =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3698
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v4

    .line 3701
    .local v4, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v4, :cond_4

    .line 3702
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getContainerVpnState()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 3703
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 3704
    .local v2, "interfaceName":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getContainerVpnState()I

    move-result v0

    .line 3705
    .local v0, "cid":I
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v6, v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpTableMangleNatRulesForRange(ILjava/lang/String;)V

    .line 3706
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startUid(I)I

    move-result v6

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopUid(I)I

    move-result v7

    invoke-direct {p0, p1, v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->unsetDnsSystemProperty(Ljava/lang/String;II)V

    .line 3709
    .end local v0    # "cid":I
    .end local v2    # "interfaceName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 3711
    .local v3, "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    if-nez v3, :cond_2

    .line 3712
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v7, "removePackagesFromIpTables : Vpn Package Info entry is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3715
    :cond_2
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v6, :cond_3

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removePackagesFromIpTables : p.getPackageName =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3717
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v5

    .line 3718
    .local v5, "uid":I
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpTableMangleNatRules(ILjava/lang/String;)V

    .line 3719
    invoke-direct {p0, p1, v5, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->unsetDnsSystemProperty(Ljava/lang/String;II)V

    goto :goto_0

    .line 3722
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v5    # "uid":I
    :cond_4
    return-void
.end method

.method private removeProfileFromHashMapAndDB(Ljava/lang/String;)Z
    .locals 8
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 2797
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v4, "removeProfileFromHashMapAndDB : removeProfileFromHashMapAndDB beginning"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    const/4 v2, 0x0

    .line 2799
    .local v2, "success":Z
    const/4 v1, 0x0

    .line 2800
    .local v1, "removeSuccess":Z
    if-eqz p1, :cond_0

    .line 2804
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeAllUidByTAG(Ljava/lang/String;)V

    .line 2807
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeFromHashMapByProfileName(Ljava/lang/String;)V

    .line 2808
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v4, "VpnProfileInfo"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "profileName"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    .line 2813
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove vpn connection for per app : success : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2819
    :cond_0
    :goto_0
    return v1

    .line 2815
    :catch_0
    move-exception v0

    .line 2816
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove vpn connection for perapp : Error in handling remove connection for per app vpn Feature"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeUIDListFromExceptionList(Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4688
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4690
    .local v0, "blockToken":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v3

    .line 4691
    .local v3, "mEntProvider":Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    .line 4692
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 4693
    .local v4, "packageUidMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4694
    invoke-virtual {v3, p1, v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->removeUIDListFromExceptionList(Ljava/lang/String;Ljava/util/Map;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4699
    .end local v3    # "mEntProvider":Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    .end local v4    # "packageUidMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4701
    return-void

    .line 4696
    :catch_0
    move-exception v2

    .line 4697
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception at removeUIDListFromExceptionList API "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4699
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private declared-synchronized removeVpnInterface(Ljava/lang/String;)V
    .locals 2
    .param p1, "vendorName"    # Ljava/lang/String;

    .prologue
    .line 4080
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4081
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4083
    :cond_0
    monitor-exit p0

    return-void

    .line 4080
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private restartVPN(Ljava/lang/String;)V
    .locals 5
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 4288
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "restartVPN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4289
    const/4 v0, 0x0

    .line 4291
    .local v0, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez p1, :cond_1

    .line 4292
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v3, "profileName is null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4310
    :cond_0
    :goto_0
    return-void

    .line 4296
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v0

    .line 4297
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getIsRetry()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4299
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setIsRetry(Z)V

    .line 4306
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnRestart;

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnRestart;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4307
    .local v1, "temp":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnRestart;
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

    const-wide/16 v3, 0x1b58

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4308
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v3, "post delay "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4302
    .end local v1    # "temp":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnRestart;
    :cond_2
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "profileName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " + was tried to re-start once "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized runAllVpnService()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 2823
    monitor-enter p0

    :try_start_0
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "run all vpn : runAllVpnService beginning"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2826
    :try_start_1
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 2827
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v3

    .line 2828
    .local v3, "profileName":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v4

    .line 2829
    .local v4, "state":I
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "run all vpn : profileName "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2831
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v5

    sget v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->SYSTEM_VPN:I

    if-eq v5, v6, :cond_0

    .line 2836
    if-eq v4, v8, :cond_2

    const/4 v5, 0x5

    if-ne v4, v5, :cond_5

    .line 2837
    :cond_2
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "run all vpn : startVpnProfile : profileName "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2839
    :cond_3
    const/4 v5, 0x1

    invoke-direct {p0, v3, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnProfile(Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2845
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "profileName":Ljava/lang/String;
    .end local v4    # "state":I
    :catch_0
    move-exception v0

    .line 2847
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "run all vpn : Exception: "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2850
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    monitor-exit p0

    return-void

    .line 2842
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v3    # "profileName":Ljava/lang/String;
    .restart local v4    # "state":I
    :cond_5
    :try_start_3
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "run all vpn : nothing : profileName "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 2823
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "profileName":Ljava/lang/String;
    .end local v4    # "state":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private sendBindSuccessIntent(Ljava/lang/String;)V
    .locals 8
    .param p1, "vendorNameWithCid"    # Ljava/lang/String;

    .prologue
    .line 282
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 284
    .local v2, "token":J
    :try_start_0
    invoke-static {p1}, Lcom/sec/enterprise/knox/GenericVpnPolicy;->getVendorNameFromTransformedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, "vendorName":Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/enterprise/knox/GenericVpnPolicy;->getCidFromTransformedName(Ljava/lang/String;)I

    move-result v0

    .line 286
    .local v0, "containerId":I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 287
    .local v1, "successIntent":Landroid/content/Intent;
    const-string v5, "com.samsung.android.mdm.VPN_BIND_RESULT"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string/jumbo v5, "vpn_bind_vendor"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    const-string/jumbo v5, "vpn_bind_cid"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    const-string/jumbo v5, "vpn_bind_status"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 291
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v6, "Sending bind success intent to User 0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v7, "com.sec.enterprise.knox.KNOX_GENERIC_VPN"

    invoke-virtual {v5, v1, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 296
    return-void

    .line 294
    .end local v0    # "containerId":I
    .end local v1    # "successIntent":Landroid/content/Intent;
    .end local v4    # "vendorName":Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private sendMessageToHandler(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "map"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 2998
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

    if-eqz v1, :cond_0

    .line 2999
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

    invoke-static {v1, p1, v2, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3000
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3002
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private declared-synchronized setActivate(Ljava/lang/String;I)Z
    .locals 12
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "activateState"    # I

    .prologue
    .line 4170
    monitor-enter p0

    const/4 v7, 0x0

    .line 4171
    .local v7, "status":Z
    const/4 v4, 0x0

    .line 4172
    .local v4, "oldActivateState":I
    const/4 v1, 0x0

    .line 4174
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 4175
    .local v5, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :try_start_0
    new-instance v6, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v6}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4179
    .local v6, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :try_start_1
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v9, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 4180
    if-nez v5, :cond_0

    .line 4181
    const/4 v9, 0x0

    .line 4215
    :goto_0
    monitor-exit p0

    return v9

    .line 4183
    :cond_0
    :try_start_2
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v4

    .line 4184
    invoke-virtual {v5, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setActivateState(I)V

    .line 4188
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4189
    .end local v1    # "cv":Landroid/content/ContentValues;
    .local v2, "cv":Landroid/content/ContentValues;
    :try_start_3
    const-string v9, "activateState"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4190
    const/4 v9, 0x1

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "profileName"

    aput-object v10, v0, v9

    .line 4193
    .local v0, "columns":[Ljava/lang/String;
    const/4 v9, 0x1

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    .line 4197
    .local v8, "values":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v10, "VpnProfileInfo"

    invoke-virtual {v9, v10, v0, v8, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v7

    .line 4198
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v9, :cond_1

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setActivate : profileName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", activateState = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", result = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4202
    :cond_1
    if-nez v7, :cond_2

    .line 4203
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "setActivate : DB storage failed"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4204
    invoke-virtual {v5, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setActivateState(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4205
    const/4 v9, 0x0

    move-object v1, v2

    .end local v2    # "cv":Landroid/content/ContentValues;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    goto :goto_0

    .line 4209
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v8    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 4211
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception update  profile : updateVPNProfile "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4212
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 4215
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v2    # "cv":Landroid/content/ContentValues;
    .restart local v8    # "values":[Ljava/lang/String;
    :cond_2
    const/4 v9, 0x1

    move-object v1, v2

    .end local v2    # "cv":Landroid/content/ContentValues;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    goto/16 :goto_0

    .line 4170
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v6    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .end local v8    # "values":[Ljava/lang/String;
    :catchall_0
    move-exception v9

    :goto_2
    monitor-exit p0

    throw v9

    .line 4209
    .end local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "cv":Landroid/content/ContentValues;
    .restart local v6    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "cv":Landroid/content/ContentValues;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    goto :goto_1

    .line 4170
    .end local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "cv":Landroid/content/ContentValues;
    :catchall_1
    move-exception v9

    move-object v1, v2

    .end local v2    # "cv":Landroid/content/ContentValues;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    goto :goto_2
.end method

.method private setDnsSystemProperty(Ljava/lang/String;IILjava/lang/String;)V
    .locals 17
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "uidStart"    # I
    .param p3, "uidEnd"    # I
    .param p4, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 3837
    if-eqz p1, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v14

    if-eqz v14, :cond_9

    .line 3838
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_0

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The setDnsSystemProperty  profileName value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3839
    :cond_0
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_1

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The setDnsSystemProperty  uidStart value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3840
    :cond_1
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_2

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The setDnsSystemProperty  uidEnd value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3841
    :cond_2
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_3

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The setDnsSystemProperty  interfaceName value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3842
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v13

    .line 3843
    .local v13, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    const/4 v4, 0x0

    .line 3844
    .local v4, "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 3845
    .local v3, "dnsArray":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 3846
    .local v9, "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 3847
    .local v10, "searchDomains":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 3849
    .local v11, "token":J
    if-eqz v13, :cond_9

    .line 3850
    invoke-virtual {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getDnsList()Ljava/util/List;

    move-result-object v4

    .line 3851
    if-eqz v4, :cond_9

    .line 3852
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/String;

    invoke-interface {v4, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "dnsArray":[Ljava/lang/String;
    check-cast v3, [Ljava/lang/String;

    .line 3853
    .restart local v3    # "dnsArray":[Ljava/lang/String;
    invoke-virtual {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getSearchDomainList()Ljava/util/List;

    move-result-object v9

    .line 3854
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3855
    .local v2, "buffer":Ljava/lang/StringBuilder;
    if-eqz v9, :cond_4

    .line 3856
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3857
    .local v5, "domain":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x20

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3860
    .end local v5    # "domain":Ljava/lang/String;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 3862
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getActualInterface(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 3863
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_6

    .line 3865
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v14, v3

    if-ge v7, v14, :cond_6

    .line 3866
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_5

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The setDnsSystemProperty  dnsArray value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v3, v7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3865
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3869
    .end local v7    # "i":I
    :cond_6
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_7

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The setDnsSystemProperty  searchDomains value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3870
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getKnoxTunName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15, v3, v10}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3871
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getKnoxTunName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v14, v15, v0, v1}, Landroid/os/INetworkManagementService;->setDnsInterfaceForUidRange(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3875
    :cond_8
    :goto_2
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3880
    .end local v2    # "buffer":Ljava/lang/StringBuilder;
    .end local v3    # "dnsArray":[Ljava/lang/String;
    .end local v4    # "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "searchDomains":Ljava/lang/String;
    .end local v11    # "token":J
    .end local v13    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_9
    return-void

    .line 3872
    .restart local v2    # "buffer":Ljava/lang/StringBuilder;
    .restart local v3    # "dnsArray":[Ljava/lang/String;
    .restart local v4    # "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "searchDomains":Ljava/lang/String;
    .restart local v11    # "token":J
    .restart local v13    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_0
    move-exception v6

    .line 3873
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_8

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "setting dns property : Exception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 3875
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v14
.end method

.method private setVpnInterface(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "vpnInterface"    # Ljava/lang/Object;

    .prologue
    .line 4064
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVpnInterface: vendorName value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "vpnInterface value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4065
    :cond_0
    if-nez p2, :cond_1

    .line 4066
    sget-object p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->NULL_OBJECT:Ljava/lang/Object;

    .line 4068
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4069
    return-void
.end method

.method private setupIntentFilter()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 2853
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setup intent filter is called"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2854
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    .line 2855
    .local v1, "receiver":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2856
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2857
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2858
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2859
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2860
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2861
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2862
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2863
    const-string v0, "com.sec.enterprise.mdm.MDM_VPN_PRE_ADMIN_REMOVAL"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2864
    const-string v0, "enterprise.container.uninstalled"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2865
    const-string v0, "com.sec.enterprise.mdm.services.vpn.INTERFACE_STATUS"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2866
    const-string v0, "com.sec.enterprise.mdm.services.vpn.RETRY"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2867
    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2868
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2869
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2870
    const-string v0, "enterprise.container.admin.changed"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2873
    const-string v0, "com.sec.knox.migrationagent.START_VPN_MIGRATION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2874
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2875
    return-void
.end method

.method private setupIntentFilterForMigration()V
    .locals 6

    .prologue
    .line 2878
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setup intent filter Migration is called"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    .line 2880
    .local v1, "receiver":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2882
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.sec.knox.migrationagent.START_VPN_MIGRATION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2883
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "com.sec.knox.migrationagent.permission.RECEIVE_MIGRATION"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2884
    return-void
.end method

.method private startUid(I)I
    .locals 5
    .param p1, "containerId"    # I

    .prologue
    .line 3614
    const/4 v1, -0x1

    .line 3616
    .local v1, "firstUid":I
    const v2, 0x186a0

    mul-int v1, p1, v2

    .line 3617
    :try_start_0
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startUid - The Start uid for the persona for which dns is going to be applied is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3621
    :cond_0
    :goto_0
    return v1

    .line 3618
    :catch_0
    move-exception v0

    .line 3619
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startUidOfPersona Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized startVpnForPackage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2243
    monitor-enter p0

    :try_start_0
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "startVpnForPackage : profileName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", packageName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2245
    const/4 v7, 0x0

    .line 2248
    .local v7, "retval":I
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2249
    :cond_0
    :try_start_1
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "startVpnForPackage : Param null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    sget v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2319
    :goto_0
    monitor-exit p0

    return v9

    .line 2253
    :cond_1
    :try_start_2
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v9, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v6

    .line 2254
    .local v6, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v6, :cond_2

    .line 2255
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "startVpnForPackage : Profile entry is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    sget v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    goto :goto_0

    .line 2259
    :cond_2
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v9, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v4

    .line 2260
    .local v4, "isChainingEnabled":I
    const/4 v9, 0x1

    if-ne v4, v9, :cond_3

    .line 2261
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->checkChainingStatus(Ljava/lang/String;)I

    move-result v1

    .line 2262
    .local v1, "chainingStatus":I
    if-nez v1, :cond_3

    .line 2263
    sget v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    goto :goto_0

    .line 2267
    .end local v1    # "chainingStatus":I
    :cond_3
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v0

    .line 2268
    .local v0, "activateState":I
    sget v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    if-ne v0, v9, :cond_4

    .line 2269
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "startVpnForPackage : Profile not activated. Returning"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v7

    .line 2270
    goto :goto_0

    .line 2272
    :cond_4
    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackage(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    move-result-object v5

    .line 2274
    .local v5, "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    if-nez v5, :cond_5

    .line 2275
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "startVpnForPackage : Vpn Package Info entry is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    sget v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    goto :goto_0

    .line 2279
    :cond_5
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v9, :cond_6

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add package to profile : VpnPackageInfo = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    :cond_6
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v8

    .line 2284
    .local v8, "uid":I
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addMangleExceptions(Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    invoke-direct {p0, p1, v8, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addUIDListToExceptionList(Ljava/lang/String;ILjava/lang/String;)V

    .line 2290
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 2312
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "startVpnForPackage : VPN State not valid"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "activateState":I
    .end local v4    # "isChainingEnabled":I
    .end local v5    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v8    # "uid":I
    :cond_7
    :goto_1
    move v9, v7

    .line 2319
    goto/16 :goto_0

    .line 2292
    .restart local v0    # "activateState":I
    .restart local v4    # "isChainingEnabled":I
    .restart local v5    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .restart local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v8    # "uid":I
    :pswitch_0
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 2293
    .local v3, "interfaceValue":Ljava/lang/String;
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v9, :cond_8

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "startVpnForPackage : profileName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "interfaceValue = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    :cond_8
    if-eqz v3, :cond_7

    .line 2295
    invoke-virtual {v6, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setInterfaceName(Ljava/lang/String;)V

    .line 2296
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRules(ILjava/lang/String;)V

    .line 2297
    invoke-direct {p0, p1, v8, v8, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->setDnsSystemProperty(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2315
    .end local v0    # "activateState":I
    .end local v3    # "interfaceValue":Ljava/lang/String;
    .end local v4    # "isChainingEnabled":I
    .end local v5    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v8    # "uid":I
    :catch_0
    move-exception v2

    .line 2316
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v9, :cond_9

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "startVpnForPackage : "

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    :cond_9
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "startVpnForPackage : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2243
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "retval":I
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 2303
    .restart local v0    # "activateState":I
    .restart local v4    # "isChainingEnabled":I
    .restart local v5    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .restart local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v7    # "retval":I
    .restart local v8    # "uid":I
    :pswitch_1
    :try_start_4
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {v9, v8, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRules(ILjava/lang/String;)V

    .line 2304
    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "startVpnForPackage : start connection. profileName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnProfile(Ljava/lang/String;)I

    move-result v7

    .line 2306
    goto/16 :goto_1

    .line 2309
    :pswitch_2
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {v9, v8, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRules(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 2290
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startVpnProfile(Ljava/lang/String;)I
    .locals 26
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3746
    const/4 v15, -0x1

    .line 3747
    .local v15, "retVal":I
    sget-boolean v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v23, :cond_0

    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "startVpnProfile : profileEntry : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3749
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v13

    .line 3750
    .local v13, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v13, :cond_2

    .line 3751
    sget-boolean v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v23, :cond_1

    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v24, "startVpnProfile : profileEntry : null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move/from16 v23, v15

    .line 3833
    .end local v13    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :goto_0
    return v23

    .line 3754
    .restart local v13    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_2
    invoke-virtual {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v4

    .line 3755
    .local v4, "activateState":I
    sget v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    move/from16 v0, v23

    if-ne v4, v0, :cond_4

    .line 3756
    sget-boolean v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v23, :cond_3

    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v24, "startVpnProfile : Network not connected"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move/from16 v23, v15

    .line 3757
    goto :goto_0

    .line 3759
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->isNetworkConnected()Z

    move-result v23

    if-nez v23, :cond_5

    .line 3760
    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v24, "start vpn : Network not connected"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v23, v15

    .line 3761
    goto :goto_0

    .line 3764
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v8

    .line 3765
    .local v8, "isChainingEnabled":I
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v8, v0, :cond_6

    .line 3766
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->checkChainingStatus(Ljava/lang/String;)I

    move-result v6

    .line 3767
    .local v6, "chainingStatus":I
    if-nez v6, :cond_6

    .line 3768
    sget v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    goto :goto_0

    .line 3772
    .end local v6    # "chainingStatus":I
    :cond_6
    invoke-virtual {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageCount()I

    move-result v16

    .line 3774
    .local v16, "size":I
    if-gtz v16, :cond_7

    invoke-virtual {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getContainerVpnState()I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 3775
    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v24, "start vpn : No packages in profile. ContainerVpnState = -1"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v23, v15

    .line 3776
    goto :goto_0

    .line 3779
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v22

    .line 3781
    .local v22, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    sget-boolean v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v23, :cond_8

    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "startVpnProfile: binding profileName = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " vpnInterface = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3783
    :cond_8
    if-eqz v22, :cond_15

    .line 3785
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v18

    .line 3786
    .local v18, "state":I
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getActivate(Ljava/lang/String;)I

    move-result v5

    .line 3787
    .local v5, "active":I
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVpnConnectionType(Ljava/lang/String;)I

    move-result v20

    .line 3788
    .local v20, "vpnConnectionType":I
    const/16 v23, 0x1

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_9

    const/16 v23, 0x5

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    :cond_9
    sget v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    move/from16 v0, v23

    if-ne v5, v0, :cond_b

    :cond_a
    const/4 v11, 0x1

    .line 3789
    .local v11, "notAllowed":Z
    :goto_1
    if-nez v20, :cond_c

    const/4 v10, 0x1

    .line 3790
    .local v10, "keepOn":Z
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->processRunCheck(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)Z

    move-result v9

    .line 3791
    .local v9, "isRunning":Z
    const/16 v23, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v9, v0, :cond_d

    const/16 v17, 0x1

    .line 3792
    .local v17, "startOnDemand":Z
    :goto_3
    const/16 v23, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    if-nez v9, :cond_e

    const/4 v12, 0x1

    .line 3794
    .local v12, "notStartOnDemand":Z
    :goto_4
    if-eqz v11, :cond_f

    .line 3795
    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "not allowd state for starting a vpn : profileName = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ": state = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v23, v15

    .line 3796
    goto/16 :goto_0

    .line 3788
    .end local v9    # "isRunning":Z
    .end local v10    # "keepOn":Z
    .end local v11    # "notAllowed":Z
    .end local v12    # "notStartOnDemand":Z
    .end local v17    # "startOnDemand":Z
    :cond_b
    const/4 v11, 0x0

    goto :goto_1

    .line 3789
    .restart local v11    # "notAllowed":Z
    :cond_c
    const/4 v10, 0x0

    goto :goto_2

    .line 3791
    .restart local v9    # "isRunning":Z
    .restart local v10    # "keepOn":Z
    :cond_d
    const/16 v17, 0x0

    goto :goto_3

    .line 3792
    .restart local v17    # "startOnDemand":Z
    :cond_e
    const/4 v12, 0x0

    goto :goto_4

    .line 3799
    .restart local v12    # "notStartOnDemand":Z
    :cond_f
    sget-boolean v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v23, :cond_10

    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "startVpnProfile : keepOn =  "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " / startOnDemand = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3801
    :cond_10
    if-nez v10, :cond_11

    if-eqz v17, :cond_14

    .line 3803
    :cond_11
    invoke-virtual {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addMangleExceptions(Ljava/lang/String;Ljava/lang/String;)V

    .line 3804
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->startConnection(Ljava/lang/String;)I

    move-result v15

    .line 3805
    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "startVpnProfile: start result : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3807
    if-eqz v15, :cond_15

    .line 3809
    sget-boolean v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v23, :cond_13

    .line 3810
    new-instance v21, Lcom/sec/enterprise/knox/KnoxVpnContext;

    const/16 v23, 0x3e8

    invoke-virtual {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v24

    const-string v25, "Knox_Framework"

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/KnoxVpnContext;-><init>(IILjava/lang/String;)V

    .line 3812
    .local v21, "vpnContext":Lcom/sec/enterprise/knox/KnoxVpnContext;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getErrorString(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v14

    .line 3813
    .local v14, "response":Landroid/app/enterprise/EnterpriseResponseData;
    const/16 v19, 0x0

    .line 3814
    .local v19, "value":Ljava/lang/String;
    if-eqz v14, :cond_12

    invoke-virtual {v14}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v23

    if-nez v23, :cond_12

    .line 3815
    invoke-virtual {v14}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "value":Ljava/lang/String;
    check-cast v19, Ljava/lang/String;

    .line 3816
    .restart local v19    # "value":Ljava/lang/String;
    if-eqz v19, :cond_12

    .line 3817
    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "startVpnProfile: error = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3819
    :cond_12
    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v24, "start vpn : Cannot start vpn, returned error"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v14    # "response":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v19    # "value":Ljava/lang/String;
    .end local v21    # "vpnContext":Lcom/sec/enterprise/knox/KnoxVpnContext;
    :cond_13
    move/from16 v23, v15

    .line 3821
    goto/16 :goto_0

    .line 3824
    :cond_14
    if-eqz v12, :cond_15

    .line 3825
    const/4 v15, 0x2

    move/from16 v23, v15

    .line 3826
    goto/16 :goto_0

    .line 3830
    .end local v4    # "activateState":I
    .end local v5    # "active":I
    .end local v8    # "isChainingEnabled":I
    .end local v9    # "isRunning":Z
    .end local v10    # "keepOn":Z
    .end local v11    # "notAllowed":Z
    .end local v12    # "notStartOnDemand":Z
    .end local v13    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v16    # "size":I
    .end local v17    # "startOnDemand":Z
    .end local v18    # "state":I
    .end local v20    # "vpnConnectionType":I
    .end local v22    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v7

    .line 3831
    .local v7, "e":Ljava/lang/Exception;
    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "startVpnProfile : Exception : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7    # "e":Ljava/lang/Exception;
    :cond_15
    move/from16 v23, v15

    .line 3833
    goto/16 :goto_0
.end method

.method private startVpnProfile(Ljava/lang/String;Z)I
    .locals 1
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "retry"    # Z

    .prologue
    .line 3726
    const/4 v0, -0x1

    .line 3728
    .local v0, "result":I
    if-eqz p2, :cond_1

    .line 3729
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnProfile(Ljava/lang/String;)I

    move-result v0

    .line 3730
    if-eqz v0, :cond_0

    .line 3731
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->restartVPN(Ljava/lang/String;)V

    .line 3738
    :cond_0
    :goto_0
    return v0

    .line 3735
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnProfile(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private stopUid(I)I
    .locals 6
    .param p1, "containerId"    # I

    .prologue
    .line 3625
    const/4 v1, -0x1

    .line 3626
    .local v1, "firstUid":I
    const/4 v2, -0x1

    .line 3628
    .local v2, "lastUid":I
    const v3, 0x186a0

    mul-int v1, p1, v3

    .line 3629
    :try_start_0
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopUid - The Start uid for the persona for which dns is going to be applied is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3630
    :cond_0
    const v3, 0x1869f

    add-int v2, v1, v3

    .line 3631
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopUid - The last uid for the persona for which dns is going to be applied is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3635
    :cond_1
    :goto_0
    return v2

    .line 3632
    :catch_0
    move-exception v0

    .line 3633
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopUidOfPersona Error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopVpnConnectionAfterAdminRemoval(I)V
    .locals 17
    .param p1, "uid"    # I

    .prologue
    .line 2761
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "stopVpnConnectionAfterAdminRemoval :  beginning"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    const/4 v7, 0x0

    .line 2763
    .local v7, "profileName":Ljava/lang/String;
    const/4 v1, -0x1

    .line 2765
    .local v1, "adminUid":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v11, "VpnProfileInfo"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "profileName"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "adminUid"

    aput-object v16, v14, v15

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2767
    .local v3, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopVpnConnectionAfterAdminRemoval :  got cvList from DB : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    if-eqz v3, :cond_3

    .line 2769
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 2770
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v10, "profileName"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2771
    const-string v10, "adminUid"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2772
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopVpnConnectionAfterAdminRemoval :  checking profile : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " admin: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    move/from16 v0, p1

    if-ne v1, v0, :cond_0

    .line 2774
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopVpnConnectionAfterAdminRemoval :   admin matched: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopVpnConnectionAfterAdminRemoval :  removing hashmap and db: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v9

    .line 2777
    .local v9, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopVpnConnectionAfterAdminRemoval :  vpnInterface: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    if-eqz v9, :cond_2

    .line 2779
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v10, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v6

    .line 2780
    .local v6, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v6, :cond_1

    .line 2781
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeMangleExceptions(Ljava/lang/String;Ljava/lang/String;)V

    .line 2783
    :cond_1
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "stopVpnConnectionAfterAdminRemoval :  Calling remove Connection: "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    invoke-interface {v9, v7}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->removeConnection(Ljava/lang/String;)I

    move-result v8

    .line 2785
    .local v8, "removeStatus":I
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopVpnConnectionAfterAdminRemoval : remove Connection. Status = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    .end local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v8    # "removeStatus":I
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeProfileFromHashMapAndDB(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2791
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v9    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v4

    .line 2792
    .local v4, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stop vpn connection after admin remove : Failed "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    return-void
.end method

.method private syncVpnProfile(Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;Ljava/lang/String;)V
    .locals 7
    .param p1, "vpnInterface"    # Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 4398
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v5, "Start syncProfile between VPNDB and Vendor\'s"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4399
    const/4 v2, 0x0

    .line 4400
    .local v2, "profileNameinVendor":Ljava/lang/String;
    const/4 v1, 0x0

    .line 4402
    .local v1, "jsonProfile":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getConnection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4403
    if-eqz v1, :cond_0

    .line 4404
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileNameFromJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4405
    invoke-interface {p1, v2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->removeConnection(Ljava/lang/String;)I

    move-result v3

    .line 4406
    .local v3, "removeStatus":I
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Profile in VendorDB is removed successfullyStatus of remove: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4412
    .end local v3    # "removeStatus":I
    :cond_0
    :goto_0
    return-void

    .line 4409
    :catch_0
    move-exception v0

    .line 4410
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sync the profile : Failure at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unsetDnsSystemProperty(Ljava/lang/String;II)V
    .locals 8
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "uidStart"    # I
    .param p3, "uidEnd"    # I

    .prologue
    .line 3883
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unsetDnsSystemProperty is reached : whose profileName is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "whose start uid is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " whose stop uid is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3884
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 3885
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3887
    .local v3, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 3888
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v2, :cond_1

    .line 3889
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 3890
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "unsetDnsSystemProperty: interface name is not null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3891
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .line 3892
    .local v1, "interfaceName":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getActualInterface(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3893
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getKnoxTunName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, p2, p3}, Landroid/os/INetworkManagementService;->clearDnsInterfaceForUidRange(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3900
    .end local v1    # "interfaceName":Ljava/lang/String;
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_1
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3903
    .end local v3    # "token":J
    :cond_2
    return-void

    .line 3896
    .restart local v3    # "token":J
    :catch_0
    move-exception v0

    .line 3897
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unsetDnsSystemProperty : Exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3900
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private updateNoUidChain(Ljava/lang/String;)V
    .locals 10
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3671
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "uodateNoUidChain : profileName =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3672
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v7, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v5

    .line 3674
    .local v5, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v5, :cond_0

    .line 3675
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v0

    .line 3676
    .local v0, "activateState":I
    sget v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    if-ne v0, v7, :cond_1

    .line 3694
    .end local v0    # "activateState":I
    :cond_0
    return-void

    .line 3680
    .restart local v0    # "activateState":I
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getContainerVpnState()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 3681
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 3682
    .local v3, "interfaceName":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getContainerVpnState()I

    move-result v1

    .line 3683
    .local v1, "cid":I
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v7, v1, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeMangleRulesForRangeWithNoUid(ILjava/lang/String;)V

    .line 3686
    .end local v1    # "cid":I
    .end local v3    # "interfaceName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 3687
    .local v4, "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateNoUidChain : p =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3688
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateNoUidChain : p.getPackageName =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3689
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v6

    .line 3690
    .local v6, "uid":I
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 3691
    .restart local v3    # "interfaceName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v7, v6, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeMangleRulesForPacketsWithNoUid(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized updateNotification(Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "domain"    # I
    .param p3, "flag"    # Z

    .prologue
    .line 4382
    monitor-enter p0

    :try_start_0
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateNotification profileName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , flag : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4384
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getActivate(Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_ACTIVATED:I

    if-ne v2, v3, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 4388
    const/4 v1, 0x0

    .line 4389
    .local v1, "mConnectivityService":Landroid/net/IConnectivityManager;
    :try_start_1
    const-string v2, "connectivity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 4390
    invoke-interface {v1, p1, p2, p3}, Landroid/net/IConnectivityManager;->updateEnterpriseVpn(Ljava/lang/String;IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4395
    .end local v1    # "mConnectivityService":Landroid/net/IConnectivityManager;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 4391
    .restart local v1    # "mConnectivityService":Landroid/net/IConnectivityManager;
    :catch_0
    move-exception v0

    .line 4392
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateNotification : Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 4382
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mConnectivityService":Landroid/net/IConnectivityManager;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized updatePackageData(Ljava/lang/String;I)Z
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v5, 0x0

    .line 2729
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 2731
    :try_start_0
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Inside updatePackageData : packageName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v7, "VpnPackageInfo"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "packageName"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "profileName"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "packageUid"

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2740
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 2741
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "update to package : Cursor not null and data present, so update packageData UID in DB"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2742
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2743
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v6, "packageUid"

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2744
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "packageName"

    aput-object v7, v0, v6

    .line 2747
    .local v0, "columns":[Ljava/lang/String;
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    .line 2750
    .local v4, "values":[Ljava/lang/String;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update to package : update to package before DB insert:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v0, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v7, "VpnPackageInfo"

    invoke-virtual {v6, v7, v0, v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 2757
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v4    # "values":[Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return v5

    .line 2753
    :catch_0
    move-exception v3

    .line 2754
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update to package : Exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2729
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I
    .locals 9
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "responseData"    # Landroid/app/enterprise/EnterpriseResponseData;

    .prologue
    const/4 v8, 0x1

    .line 4008
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 4009
    .local v0, "adminId":I
    iget-object v3, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    .line 4010
    .local v3, "vendorName":Ljava/lang/String;
    iget v1, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 4011
    .local v1, "personaId":I
    invoke-static {v3, v1}, Lcom/sec/enterprise/knox/GenericVpnPolicy;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 4012
    .local v4, "vendorNameWithCid":Ljava/lang/String;
    const/4 v2, 0x0

    .line 4013
    .local v2, "returnValue":I
    if-eqz p2, :cond_0

    if-eqz v3, :cond_0

    if-nez p3, :cond_2

    .line 4014
    :cond_0
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin check null for profile : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :admin = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4015
    const/4 v2, -0x1

    .line 4016
    if-eqz p3, :cond_1

    .line 4017
    const/4 v5, 0x7

    invoke-virtual {p3, v8, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 4030
    :cond_1
    :goto_0
    return v2

    .line 4018
    :cond_2
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v5, v0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->checkAdminForProfile(ILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 4019
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin check failed for profile : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :admin = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4020
    const/4 v2, 0x1

    .line 4021
    const/16 v5, 0x8

    invoke-virtual {p3, v8, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method private validatePackageList(ILjava/lang/String;[Ljava/lang/String;)I
    .locals 18
    .param p1, "personaId"    # I
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "packageList"    # [Ljava/lang/String;

    .prologue
    .line 1160
    move-object/from16 v1, p3

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_4

    aget-object v8, v1, v4

    .line 1165
    .local v8, "regularPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move/from16 v0, p1

    invoke-virtual {v11, v8, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkForSystemUIDApplicationForVpn(Ljava/lang/String;I)Z

    move-result v2

    .line 1166
    .local v2, "checkIfApplicationHasSystemUID":Z
    if-eqz v2, :cond_0

    .line 1167
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v12, "Package has system uid"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const/4 v11, -0x1

    .line 1197
    .end local v2    # "checkIfApplicationHasSystemUID":Z
    .end local v8    # "regularPackageName":Ljava/lang/String;
    :goto_1
    return v11

    .line 1171
    .restart local v2    # "checkIfApplicationHasSystemUID":Z
    .restart local v8    # "regularPackageName":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move/from16 v0, p1

    invoke-virtual {v11, v0, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1173
    .local v9, "transformedPackageName":Ljava/lang/String;
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "addPackageToVpn : transformed packageName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v6

    .line 1175
    .local v6, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v11, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1176
    .local v7, "profileForPackage":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1179
    .local v10, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-eqz v9, :cond_1

    if-eqz v7, :cond_2

    .line 1180
    :cond_1
    const/4 v11, -0x1

    goto :goto_1

    .line 1184
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v12, "VpnPackageInfo"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "packageName"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v9, v14, v15

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "profileName"

    aput-object v17, v15, v16

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1192
    .local v3, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_3

    .line 1193
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v12, "Package already exists in DB"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    const/4 v11, -0x1

    goto :goto_1

    .line 1160
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1197
    .end local v2    # "checkIfApplicationHasSystemUID":Z
    .end local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v7    # "profileForPackage":Ljava/lang/String;
    .end local v8    # "regularPackageName":Ljava/lang/String;
    .end local v9    # "transformedPackageName":Ljava/lang/String;
    .end local v10    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_4
    sget v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->VPN_RETURN_INT_SUCCESS:I

    goto :goto_1
.end method

.method private validateProfilesForVendor(Ljava/lang/String;Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;)V
    .locals 11
    .param p1, "vendorNameWithCid"    # Ljava/lang/String;
    .param p2, "vpnInterface"    # Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    .prologue
    .line 3593
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "validateProfilesForVendor - vendorNameWithCid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " vpnInterface = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3595
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v7, "VpnProfileInfo"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "vendorName"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3597
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v5, 0x0

    .line 3598
    .local v5, "profileName":Ljava/lang/String;
    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    .line 3599
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 3600
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v6, "profileName"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3601
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "validateProfilesForVendor : profileName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3602
    :cond_2
    invoke-interface {p2, v5}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getConnection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3603
    .local v4, "jsonProfile":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 3604
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeProfileFromHashMapAndDB(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3608
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "jsonProfile":Ljava/lang/String;
    .end local v5    # "profileName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 3609
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "validateProfilesForVendor : Failure at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3611
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    return-void
.end method

.method private declared-synchronized writePackageToDB(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Ljava/lang/String;)I
    .locals 17
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1201
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget v2, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1202
    .local v2, "adminId":I
    move-object/from16 v0, p1

    iget v3, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 1203
    .local v3, "containerId":I
    sget-boolean v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v13, :cond_0

    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "write package DB : profileName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " :packageName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " :containerId = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1204
    :cond_0
    const/4 v8, -0x1

    .line 1205
    .local v8, "retvalue":I
    const/4 v7, 0x0

    .line 1208
    .local v7, "resultValidatedPacakgeName":I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p2

    invoke-virtual {v13, v3, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v12

    .line 1209
    .local v12, "transformedUid":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p2

    invoke-virtual {v13, v3, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1211
    .local v11, "transformedPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v6

    .line 1212
    .local v6, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    sget-boolean v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v13, :cond_1

    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "write package DB : Transformed UID: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    :cond_1
    sget-boolean v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v13, :cond_2

    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "write package DB : Transformed packagename before adding to db : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    :cond_2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1223
    .local v4, "cv":Landroid/content/ContentValues;
    const-string v13, "packageName"

    invoke-virtual {v4, v13, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    const-string v13, "profileName"

    move-object/from16 v0, p3

    invoke-virtual {v4, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    const-string v13, "packageUid"

    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1226
    const-string v13, "packageCid"

    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1229
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v14, "VpnPackageInfo"

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v15, v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v10

    .line 1230
    .local v10, "status":Z
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "write package DB : profileName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "status = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1231
    if-nez v10, :cond_3

    move v9, v8

    .line 1249
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v8    # "retvalue":I
    .end local v10    # "status":Z
    .end local v11    # "transformedPackageName":Ljava/lang/String;
    .end local v12    # "transformedUid":I
    .local v9, "retvalue":I
    :goto_0
    monitor-exit p0

    return v9

    .line 1235
    .end local v9    # "retvalue":I
    .restart local v4    # "cv":Landroid/content/ContentValues;
    .restart local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v8    # "retvalue":I
    .restart local v10    # "status":Z
    .restart local v11    # "transformedPackageName":Ljava/lang/String;
    .restart local v12    # "transformedUid":I
    :cond_3
    const/4 v13, -0x1

    if-eq v12, v13, :cond_5

    .line 1237
    if-eqz v6, :cond_4

    .line 1238
    :try_start_2
    invoke-virtual {v6, v11, v12, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->addPackageEntry(Ljava/lang/String;II)V

    .line 1241
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnForPackage(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    :cond_5
    sget-boolean v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v13, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->printProfileVpnMap()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1248
    :cond_6
    :try_start_3
    sget v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->VPN_RETURN_INT_SUCCESS:I

    move v9, v8

    .line 1249
    .end local v8    # "retvalue":I
    .restart local v9    # "retvalue":I
    goto :goto_0

    .line 1244
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v9    # "retvalue":I
    .end local v10    # "status":Z
    .end local v11    # "transformedPackageName":Ljava/lang/String;
    .end local v12    # "transformedUid":I
    .restart local v8    # "retvalue":I
    :catch_0
    move-exception v5

    .line 1245
    .local v5, "e":Ljava/lang/Exception;
    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "write package DB : Exception occured for adding vpn, package map."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v9, v8

    .line 1246
    .end local v8    # "retvalue":I
    .restart local v9    # "retvalue":I
    goto :goto_0

    .line 1201
    .end local v2    # "adminId":I
    .end local v3    # "containerId":I
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "resultValidatedPacakgeName":I
    .end local v9    # "retvalue":I
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13
.end method


# virtual methods
.method public declared-synchronized activateVpnProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Z)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 24
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 609
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 610
    .local v3, "adminId":I
    const/4 v10, -0x1

    .line 612
    .local v10, "iResult":I
    const/4 v9, -0x1

    .line 613
    .local v9, "iNewActivateState":I
    const/16 v18, -0x1

    .line 614
    .local v18, "sVpnTransition":I
    const/16 v17, -0x1

    .line 615
    .local v17, "routeType":I
    const/16 v16, 0x0

    .line 616
    .local v16, "result":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 617
    .local v20, "vendorName":Ljava/lang/String;
    sget-object v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "activateVpnProfile API called: profileName = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    new-instance v15, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v15}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 619
    .local v15, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    sget v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 620
    const/16 v21, 0x1

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    if-eqz v20, :cond_0

    if-nez p2, :cond_1

    .line 787
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v15

    .line 627
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v21

    if-nez v21, :cond_0

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v14

    .line 632
    .local v14, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v14, :cond_0

    .line 636
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getRoutType(Ljava/lang/String;)I

    move-result v17

    .line 637
    sget-boolean v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v21, :cond_2

    sget-object v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "activateVpnProfile : getRoutType(profileName) "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_2
    sget v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->SYSTEM_VPN:I

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 639
    sget-object v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v22, "activateVpnProfile : System VPN can\'t be activated"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 782
    .end local v14    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_0
    move-exception v7

    .line 783
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception when activating profile : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 609
    .end local v3    # "adminId":I
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "iNewActivateState":I
    .end local v10    # "iResult":I
    .end local v15    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .end local v16    # "result":Z
    .end local v17    # "routeType":I
    .end local v18    # "sVpnTransition":I
    .end local v20    # "vendorName":Ljava/lang/String;
    :catchall_0
    move-exception v21

    monitor-exit p0

    throw v21

    .line 645
    .restart local v3    # "adminId":I
    .restart local v9    # "iNewActivateState":I
    .restart local v10    # "iResult":I
    .restart local v14    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v15    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v16    # "result":Z
    .restart local v17    # "routeType":I
    .restart local v18    # "sVpnTransition":I
    .restart local v20    # "vendorName":Ljava/lang/String;
    :cond_3
    if-eqz p3, :cond_7

    :try_start_3
    sget v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_ACTIVATED:I

    .line 646
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v18

    .line 648
    sget-boolean v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v21, :cond_4

    sget-object v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v22, "activateVpnProfile : Start  "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_4
    sget v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_ACTIVATED:I

    move/from16 v0, v21

    if-ne v9, v0, :cond_f

    .line 655
    sget-boolean v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v21, :cond_5

    sget-object v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v22, "activateVpnProfile : Activate  "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getActivate(Ljava/lang/String;)I

    move-result v5

    .line 657
    .local v5, "currentStateForActivatedProfile":I
    sget-boolean v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v21, :cond_6

    sget-object v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "activateVpnProfile : currentStateForActivatedProfile value is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_6
    sget v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_ACTIVATED:I

    move/from16 v0, v21

    if-ne v5, v0, :cond_8

    .line 659
    sget-boolean v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v21, :cond_0

    sget-object v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v22, "activateVpnProfile : profile is already activated"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 645
    .end local v5    # "currentStateForActivatedProfile":I
    :cond_7
    sget v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    goto :goto_1

    .line 662
    .restart local v5    # "currentStateForActivatedProfile":I
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->setActivate(Ljava/lang/String;I)Z

    move-result v16

    .line 663
    if-nez v16, :cond_9

    .line 664
    sget-boolean v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v21, :cond_0

    sget-object v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "activateVpnProfile : Activate result : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 671
    :cond_9
    invoke-virtual {v14}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 672
    .local v12, "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    invoke-virtual {v12}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 674
    .local v13, "packageName":Ljava/lang/String;
    sget-boolean v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v21, :cond_b

    sget-object v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "activateVpnProfile : Calling start for packageName =  "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnForPackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 679
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v10, v0, :cond_c

    .line 680
    sget-boolean v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v21, :cond_a

    sget-object v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v22, "activateVpnProfile : intended operation  / not start a vpn connection"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 684
    :cond_c
    if-eqz v10, :cond_a

    .line 685
    sget-object v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v22, "activateVpnProfile : Failed to start a vpn  "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 691
    .end local v12    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v13    # "packageName":Ljava/lang/String;
    :cond_d
    invoke-virtual {v14}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getContainerVpnState()I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_e

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-object/from16 v21, v0

    invoke-virtual {v14}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getContainerVpnState()I

    move-result v22

    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRulesForRange(ILjava/lang/String;)V

    .line 693
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnProfile(Ljava/lang/String;)I

    .line 697
    :cond_e
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 698
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_0

    .line 703
    .end local v5    # "currentStateForActivatedProfile":I
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_f
    sget v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    move/from16 v0, v21

    if-ne v9, v0, :cond_0

    .line 706
    const/4 v11, 0x0

    .line 707
    .local v11, "mEnterpriseResponseData":Landroid/app/enterprise/EnterpriseResponseData;
    const/16 v19, -0x1

    .line 709
    .local v19, "stopStatus":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getActivate(Ljava/lang/String;)I

    move-result v6

    .line 710
    .local v6, "currentStateForDeactivatedProfile":I
    sget-boolean v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v21, :cond_10

    sget-object v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "activateVpnProfile : currentStateForDeactivatedProfile value is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_10
    sget v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    move/from16 v0, v21

    if-ne v6, v0, :cond_11

    .line 712
    sget-boolean v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v21, :cond_0

    sget-object v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v22, "activateVpnProfile : profile is already deactivated"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 717
    :cond_11
    sget-boolean v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v21, :cond_12

    sget-object v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v22, "activateVpnProfile : DeActivate "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->setActivate(Ljava/lang/String;I)Z

    move-result v16

    .line 719
    if-nez v16, :cond_13

    .line 720
    sget-boolean v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v21, :cond_0

    sget-object v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "activateVpnProfile : Deactivate result : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 728
    :cond_13
    sget v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PER_APP_VPN:I

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_1a

    const/16 v21, 0x66

    move/from16 v0, v18

    move/from16 v1, v21

    if-eq v0, v1, :cond_14

    const/16 v21, 0x68

    move/from16 v0, v18

    move/from16 v1, v21

    if-eq v0, v1, :cond_14

    const/16 v21, 0x67

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_1a

    :cond_14
    const/4 v4, 0x1

    .line 731
    .local v4, "checkForPerApp":Z
    :goto_3
    if-eqz v4, :cond_1b

    .line 733
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopConnection(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v11

    .line 734
    invoke-virtual {v11}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 735
    sget-boolean v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v21, :cond_15

    sget-object v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "activateVpnProfile : STOP status  =  "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_15
    sget v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_16

    .line 742
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopConnection(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v11

    .line 743
    invoke-virtual {v11}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 745
    :cond_16
    sget-boolean v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v21, :cond_17

    sget-object v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "activateVpnProfile : profile : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " may be in lockup / stop result : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_17
    sget v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 768
    :cond_18
    :goto_4
    sget-boolean v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v21, :cond_19

    sget-object v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "activateVpnProfile : stop profile =  "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removePackagesFromIpTables(Ljava/lang/String;)V

    .line 774
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 775
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_0

    .line 728
    .end local v4    # "checkForPerApp":Z
    :cond_1a
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 755
    .restart local v4    # "checkForPerApp":Z
    :cond_1b
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopConnection(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v11

    .line 756
    if-eqz v11, :cond_18

    .line 757
    invoke-virtual {v11}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 758
    sget-boolean v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v21, :cond_18

    sget-object v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "activateVpnProfile : STOP\'1\' status  =  "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4
.end method

.method public addAllContainerPackagesToVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 11
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v10, 0x9

    const/4 v9, -0x1

    const/4 v5, 0x1

    .line 1849
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add all contaienr  packages to vpn : vpnContext.personaId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / containerId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPersonaExists(I)Z

    move-result v1

    .line 1853
    .local v1, "isPersona":Z
    new-instance v0, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v0}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1854
    .local v0, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    if-nez v1, :cond_1

    .line 1855
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v7, "add all contaienr  packages to vpn : The container id entered is an invalid id"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1857
    const/16 v6, 0xb

    invoke-virtual {v0, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1904
    .end local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :goto_0
    return-object v0

    .line 1863
    .restart local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v3

    .line 1864
    .local v3, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v3, :cond_2

    .line 1865
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add all contaienr  packages to vpn : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1867
    invoke-virtual {v0, v5, v10}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1870
    :cond_2
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPersonaExists(I)Z

    move-result v1

    .line 1871
    if-eqz v1, :cond_3

    .line 1872
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v6

    if-eq v6, p2, :cond_3

    .line 1873
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v7, "add all contaienr  packages to vpn : plz check a containerId"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1875
    invoke-virtual {v0, v5, v10}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1894
    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVpnConnectionType(Ljava/lang/String;)I

    move-result v4

    .line 1895
    .local v4, "vpnConnectionType":I
    if-ne v4, v5, :cond_4

    move v2, v5

    .line 1896
    .local v2, "onDemand":Z
    :goto_1
    if-eqz v2, :cond_5

    .line 1897
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v7, "add all contaienr  packages to vpn : plz check a containerId"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1899
    invoke-virtual {v0, v5, v10}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1895
    .end local v2    # "onDemand":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 1903
    .restart local v2    # "onDemand":Z
    :cond_5
    iput p2, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 1904
    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addAllPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized addAllPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 21
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1473
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget v4, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1474
    .local v4, "adminId":I
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v19, "add all packages : "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    new-instance v9, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v9}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1477
    .local v9, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    sget v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1478
    const/16 v18, 0x1

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1480
    :try_start_1
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "add all packages : profileName = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v12

    .line 1484
    .local v12, "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v12, :cond_1

    .line 1485
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "add all packages : Error : profileName : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " : null"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1579
    .end local v12    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v9

    .line 1490
    .restart local v12    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v18

    if-eqz v18, :cond_2

    .line 1491
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v19, "add all packages : Vendor or admin validation failed"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1576
    .end local v12    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_0
    move-exception v8

    .line 1577
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "add all packages : Exception : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1473
    .end local v4    # "adminId":I
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v18

    monitor-exit p0

    throw v18

    .line 1496
    .restart local v4    # "adminId":I
    .restart local v9    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v12    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v11

    .line 1497
    .local v11, "isChainingEnabled":I
    if-nez v11, :cond_3

    .line 1498
    sget-boolean v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v18, :cond_0

    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v19, "addAllPackages API: chaining is disabled for the profile, so returning an error"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1503
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v14

    .line 1504
    .local v14, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v14, :cond_4

    invoke-virtual {v14}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getContainerVpnState()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 1505
    :cond_4
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v19, "add all packages : Error : Trying to add per-app packages to a system/user profile"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1510
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPackageExists(I)Z

    move-result v13

    .line 1511
    .local v13, "packageAlreadyExists":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isRangeExists(I)Z

    move-result v15

    .line 1514
    .local v15, "rangeAlreadyExists":Z
    if-nez v13, :cond_6

    if-eqz v15, :cond_8

    .line 1515
    :cond_6
    sget-boolean v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v18, :cond_7

    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "add all packages : VPN already exists for this persona or a package in persona. persona = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->chainingForAddAll(Ljava/lang/String;I)Z

    move-result v18

    if-nez v18, :cond_8

    .line 1517
    sget-boolean v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v18, :cond_0

    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v19, "addAllPackages:chainingForAddAll return value is false"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1522
    :cond_8
    sget-boolean v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v18, :cond_9

    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "add all packages : profileInfo = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    :cond_9
    move-object/from16 v0, p1

    iget v6, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 1525
    .local v6, "containerVpnState":I
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1526
    .local v7, "cv":Landroid/content/ContentValues;
    const-string v18, "containerVpnState"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1527
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v5, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "profileName"

    aput-object v19, v5, v18

    .line 1530
    .local v5, "columns":[Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p2, v17, v18

    .line 1533
    .local v17, "values":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    move-object/from16 v18, v0

    const-string v19, "VpnProfileInfo"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v5, v2, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v16

    .line 1535
    .local v16, "status":Z
    if-eqz v16, :cond_0

    .line 1538
    if-eqz v12, :cond_a

    .line 1539
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v19, "add all packages : setting container vpn state to 1"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    invoke-virtual {v12, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setContainerVpnState(I)V

    .line 1545
    :cond_a
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addContainerToExceptionList(Ljava/lang/String;I)V

    .line 1547
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->refreshDomainInHashMap(Ljava/lang/String;)V

    .line 1548
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 1568
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v19, "add all packages : VPN State not valid"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    :cond_b
    :goto_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updateNotification(Ljava/lang/String;IZ)V

    .line 1574
    sget v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->VPN_RETURN_INT_SUCCESS:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1575
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_0

    .line 1550
    :pswitch_0
    invoke-virtual {v12}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v10

    .line 1551
    .local v10, "interfaceValue":Ljava/lang/String;
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "add all packages : profileName = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "interfaceValue = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    if-eqz v10, :cond_b

    .line 1553
    invoke-virtual {v12, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setInterfaceName(Ljava/lang/String;)V

    .line 1554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRulesForRange(ILjava/lang/String;)V

    goto :goto_1

    .line 1559
    .end local v10    # "interfaceValue":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v19, v0

    sget-object v20, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRulesForRange(ILjava/lang/String;)V

    .line 1560
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnProfile(Ljava/lang/String;)I

    .line 1561
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "add all packages : start connection called. profileName = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1565
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v19, v0

    sget-object v20, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpTableMangleNatRulesForRange(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 1548
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public addAllPackagesToVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1910
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addAllPackagesToVpn : vpnContext.personaId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    :cond_0
    new-instance v0, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v0}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1914
    .local v0, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVpnConnectionType(Ljava/lang/String;)I

    move-result v2

    .line 1915
    .local v2, "vpnConnectionType":I
    if-ne v2, v3, :cond_1

    move v1, v3

    .line 1916
    .local v1, "onDemand":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 1917
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v5, "add all packages to vpn : plz check a containerId"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1919
    const/16 v4, 0x9

    invoke-virtual {v0, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1924
    .end local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :goto_1
    return-object v0

    .line 1915
    .end local v1    # "onDemand":Z
    .restart local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1924
    .restart local v1    # "onDemand":Z
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addAllPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v0

    goto :goto_1
.end method

.method public declared-synchronized addContainerPackagesToVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 6
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "packageList"    # [Ljava/lang/String;
    .param p4, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "I[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1665
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPersonaExists(I)Z

    move-result v1

    .line 1666
    .local v1, "isPersona":Z
    new-instance v0, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v0}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1668
    .local v0, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    if-nez v1, :cond_0

    .line 1669
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v4, "add container packages to vpn : The container id entered is an invalid id"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1671
    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-virtual {v0, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1706
    .end local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1677
    .restart local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 1678
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v2, :cond_1

    .line 1679
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add container packages to vpn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1681
    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-virtual {v0, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1665
    .end local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .end local v1    # "isPersona":Z
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1684
    .restart local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v1    # "isPersona":Z
    .restart local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPersonaExists(I)Z

    move-result v1

    .line 1685
    if-eqz v1, :cond_2

    .line 1686
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v3

    if-eq v3, p2, :cond_2

    .line 1687
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v4, "add container packages to vpn : plz check a containerId"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1689
    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-virtual {v0, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1705
    :cond_2
    iput p2, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 1706
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized addPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 21
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "packageList"    # [Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1077
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget v7, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1078
    .local v7, "adminId":I
    sget-boolean v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v18, :cond_0

    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "add packages : profileName = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " : personaId = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :cond_0
    const/4 v4, 0x0

    .local v4, "ALL_PACKAGES_ADDED":I
    const/4 v6, 0x1

    .local v6, "PARTIAL_PACKAGES_ADDED":I
    const/4 v5, 0x2

    .line 1080
    .local v5, "NO_PACKAGES_ADDED":I
    new-instance v15, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v15}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1081
    .local v15, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1082
    const/16 v18, 0x1

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1086
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v14

    .line 1087
    .local v14, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    const/16 v17, 0x0

    .line 1090
    .local v17, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v18

    if-eqz v18, :cond_1

    if-nez v14, :cond_3

    .line 1091
    :cond_1
    const/16 v18, 0x1

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1156
    .end local v14    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v17    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v15

    .line 1096
    .restart local v14    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v17    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v18

    if-eqz v18, :cond_4

    .line 1097
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v19, "add packages : Vendor or admin validation failed"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1147
    .end local v14    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v17    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v9

    .line 1148
    .local v9, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    sget v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1150
    const/16 v18, 0x1

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1077
    .end local v4    # "ALL_PACKAGES_ADDED":I
    .end local v5    # "NO_PACKAGES_ADDED":I
    .end local v6    # "PARTIAL_PACKAGES_ADDED":I
    .end local v7    # "adminId":I
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v15    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v18

    monitor-exit p0

    throw v18

    .line 1102
    .restart local v4    # "ALL_PACKAGES_ADDED":I
    .restart local v5    # "NO_PACKAGES_ADDED":I
    .restart local v6    # "PARTIAL_PACKAGES_ADDED":I
    .restart local v7    # "adminId":I
    .restart local v14    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v15    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v17    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isRangeExists(I)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1103
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v19, "add packages : Error : Trying to add per-app packages for a user, for which container vpn already exists"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1107
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v17

    .line 1108
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "add packages : profileName = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "vpnInterface = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    if-eqz v17, :cond_6

    .line 1110
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getConnection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1111
    .local v11, "jsonProfile":Ljava/lang/String;
    if-nez v11, :cond_7

    .line 1112
    const/16 v18, 0x1

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_0

    .line 1117
    .end local v11    # "jsonProfile":Ljava/lang/String;
    :cond_6
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v19, "add packages : vpnInterface null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const/16 v18, 0x1

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_0

    .line 1122
    .restart local v11    # "jsonProfile":Ljava/lang/String;
    :cond_7
    invoke-virtual {v14}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v18

    sget v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->SYSTEM_VPN:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 1123
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v19, "add packages : This api can\'t be used with System VPN"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1126
    :cond_8
    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    .line 1130
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validatePackageList(ILjava/lang/String;[Ljava/lang/String;)I

    move-result v18

    if-eqz v18, :cond_9

    .line 1131
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v19, "add packages : some package is already used in other profile"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1135
    :cond_9
    move-object/from16 v8, p2

    .local v8, "arr$":[Ljava/lang/String;
    array-length v12, v8

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1
    if-ge v10, v12, :cond_b

    aget-object v13, v8, v10

    .line 1136
    .local v13, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v13, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->writePackageToDB(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 1137
    .local v16, "tempResponseData":I
    const/16 v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 1138
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1139
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v19, "add packages : fail to update the DB"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1135
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1144
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v16    # "tempResponseData":I
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->refreshDomainInHashMap(Ljava/lang/String;)V

    .line 1146
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updateNotification(Ljava/lang/String;IZ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1153
    :try_start_5
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v19, "add packages / success : Returning 0"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1155
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized addPackagesToVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 1
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "packageList"    # [Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1710
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized bindKnoxVpnInterface(Ljava/lang/String;)Z
    .locals 11
    .param p1, "vendorNameWithCid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 230
    monitor-enter p0

    :try_start_0
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bind to Vpn Vendor Service : vendorName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVpnInterface(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 233
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v8, "Sending bind success intent"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendBindSuccessIntent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :goto_0
    monitor-exit p0

    return v0

    .line 237
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/sec/enterprise/knox/GenericVpnPolicy;->getVendorNameFromTransformedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 238
    .local v5, "vendorName":Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/enterprise/knox/GenericVpnPolicy;->getCidFromTransformedName(Ljava/lang/String;)I

    move-result v1

    .line 240
    .local v1, "containerId":I
    const-string v7, "com.cisco.anyconnect.vpn.android.avf"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 241
    invoke-direct {p0, v5, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->checkIfAnyConnectSupportsKnox(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 242
    invoke-direct {p0, v5, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->blockProxyService(Ljava/lang/String;I)Z

    .line 246
    :cond_1
    const/4 v0, 0x0

    .line 247
    .local v0, "bindSuccess":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".BIND_SERVICE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 248
    .local v4, "vendorAction":Ljava/lang/String;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bind to Vpn Vendor Service : vendorAction = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " container ID : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnServiceConnection;

    invoke-direct {v6, p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnServiceConnection;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;I)V

    .line 250
    .local v6, "vpnConnect":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnServiceConnection;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 252
    .local v2, "token":J
    :try_start_2
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x1

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v7, v8, v6, v9, v10}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    .line 254
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 256
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bind to Vpn Vendor Service : bindSuccess = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 230
    .end local v0    # "bindSuccess":Z
    .end local v1    # "containerId":I
    .end local v2    # "token":J
    .end local v4    # "vendorAction":Ljava/lang/String;
    .end local v5    # "vendorName":Ljava/lang/String;
    .end local v6    # "vpnConnect":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnServiceConnection;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 254
    .restart local v0    # "bindSuccess":Z
    .restart local v1    # "containerId":I
    .restart local v2    # "token":J
    .restart local v4    # "vendorAction":Ljava/lang/String;
    .restart local v5    # "vendorName":Ljava/lang/String;
    .restart local v6    # "vpnConnect":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnServiceConnection;
    :catchall_1
    move-exception v7

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public checkChainingStatus(Ljava/lang/String;)I
    .locals 10
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 4546
    const/4 v0, 0x0

    .line 4547
    .local v0, "chaining_status":I
    const/4 v5, 0x0

    .line 4548
    .local v5, "vendorName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 4549
    .local v3, "profile_added_vendor_name":Ljava/lang/String;
    const/4 v4, -0x1

    .line 4551
    .local v4, "state":I
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v7, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 4552
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v2, :cond_1

    .line 4553
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v5

    .line 4554
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkChainingStatus: vendorName value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4555
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4556
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkChainingStatus: profile_added_vendor_name value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4557
    if-eqz v3, :cond_1

    .line 4558
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v6

    .line 4559
    .local v6, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-eqz v6, :cond_1

    .line 4560
    invoke-interface {v6, v3}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getState(Ljava/lang/String;)I

    move-result v4

    .line 4561
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkChainingStatus: state value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4562
    const/4 v7, 0x4

    if-eq v4, v7, :cond_0

    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mIgnoreConnectCheckForChaining:Z

    if-eqz v7, :cond_1

    .line 4563
    :cond_0
    const/4 v0, 0x1

    .line 4564
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mIgnoreConnectCheckForChaining:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4572
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v6    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_1
    :goto_0
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkChainingStatus: chaining_status value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4573
    return v0

    .line 4569
    :catch_0
    move-exception v1

    .line 4570
    .local v1, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception at checkChainingStatus API "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkIfVendorCreatedKnoxProfile(Ljava/lang/String;II)Z
    .locals 7
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "callerUid"    # I
    .param p3, "callerUserId"    # I

    .prologue
    .line 2144
    const/4 v2, 0x0

    .line 2146
    .local v2, "profilecreatedByKnoxVendor":Z
    :try_start_0
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkIfVendorCreatedKnoxProfile: profile name and the vendor uid is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 2148
    .local v1, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v1, :cond_3

    .line 2149
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2150
    .local v3, "vendorName":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The vendor name who created the profile is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v4, p3, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v4

    if-ne v4, p2, :cond_3

    .line 2152
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v5, "The vendor name who created the profile and the caller has the same uid"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2153
    :cond_2
    const/4 v2, 0x1

    .line 2159
    .end local v1    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "vendorName":Ljava/lang/String;
    :cond_3
    :goto_0
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkIfVendorCreatedKnoxProfile: profilecreatedByKnoxVendor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    :cond_4
    return v2

    .line 2156
    :catch_0
    move-exception v0

    .line 2157
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkIfVendorCreatedKnoxProfile Exception :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized createVpnProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 24
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "jsonProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 372
    .local v3, "adminId":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 373
    .local v16, "vendorName":Ljava/lang/String;
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v19, :cond_0

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "createVpnProfile API called : vendorName = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " : personaId = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_0
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v19, :cond_1

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "createVpnProfile : adminId = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_1
    new-instance v13, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v13}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 376
    .local v13, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    sget v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 377
    const/16 v19, 0x1

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    if-nez p2, :cond_2

    .line 456
    .end local v13    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :goto_0
    monitor-exit p0

    return-object v13

    .line 382
    .restart local v13    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileNameFromJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 383
    .local v10, "profileName":Ljava/lang/String;
    if-nez v10, :cond_4

    .line 384
    sget-boolean v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v19, :cond_3

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v20, "setting vpn connection : Error / cann\'t find a profile"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 454
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 371
    .end local v3    # "adminId":I
    .end local v10    # "profileName":Ljava/lang/String;
    .end local v13    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .end local v16    # "vendorName":Ljava/lang/String;
    :catchall_0
    move-exception v19

    monitor-exit p0

    throw v19

    .line 387
    .restart local v3    # "adminId":I
    .restart local v10    # "profileName":Ljava/lang/String;
    .restart local v13    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v16    # "vendorName":Ljava/lang/String;
    :cond_4
    :try_start_3
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "createVpnProfile : profileName = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string v19, "\\s"

    invoke-static/range {v19 .. v19}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 390
    .local v8, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v8, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 391
    .local v7, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    .line 392
    .local v5, "found":Z
    if-eqz v5, :cond_5

    .line 393
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v20, "createVpnProfile : Profile name contains illegal characters"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 454
    :try_start_4
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 396
    :cond_5
    :try_start_5
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v6

    .line 397
    .local v6, "len":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-lt v6, v0, :cond_6

    const/16 v19, 0x80

    move/from16 v0, v19

    if-le v6, v0, :cond_7

    .line 398
    :cond_6
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v20, "createVpnProfile : Profile name exceeds length : 128"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 454
    :try_start_6
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 401
    :cond_7
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->containsProfileEntry(Ljava/lang/String;)Z

    move-result v9

    .line 402
    .local v9, "profileExists":Z
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "createVpnProfile : profileExists = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 403
    if-eqz v9, :cond_8

    .line 454
    :try_start_8
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z

    goto/16 :goto_0

    .line 406
    :cond_8
    if-nez v16, :cond_9

    .line 454
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 409
    :cond_9
    :try_start_9
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/sec/enterprise/knox/GenericVpnPolicy;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 410
    .local v17, "vendorNameWithCid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVpnInterface(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v18

    .line 411
    .local v18, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "createVpnProfile : vpnInterface = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 412
    if-nez v18, :cond_a

    .line 454
    :try_start_a
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 416
    :cond_a
    :try_start_b
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->syncVpnProfile(Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;Ljava/lang/String;)V

    .line 417
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->createConnection(Ljava/lang/String;)I

    move-result v15

    .line 418
    .local v15, "success":I
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "createVpnProfile : success = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    if-eqz v15, :cond_b

    .line 420
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 421
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 454
    :try_start_c
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 424
    :cond_b
    const/4 v14, 0x0

    .line 426
    .local v14, "retValue":Z
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->addVpnProfileToDatabase(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Z

    move-result v14

    .line 427
    if-nez v14, :cond_c

    .line 428
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v20, "createVpnProfile : DB failure"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->removeConnection(Ljava/lang/String;)I

    move-result v12

    .line 430
    .local v12, "removeStatus":I
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "createVpnProfile : remove Connection. Status = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 454
    :try_start_e
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_0

    .line 434
    .end local v12    # "removeStatus":I
    :cond_c
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->addVpnProfileToMap(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Z

    move-result v14

    .line 435
    if-nez v14, :cond_d

    .line 436
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v20, "createVpnProfile : Add to HashMap failure"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->removeConnection(Ljava/lang/String;)I

    move-result v12

    .line 438
    .restart local v12    # "removeStatus":I
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "createVpnProfile : remove Connection. Status = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeAllUidByTAG(Ljava/lang/String;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    move-object/from16 v19, v0

    const-string v20, "VpnProfileInfo"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "profileName"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v10, v22, v23

    invoke-virtual/range {v19 .. v22}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-result v11

    .line 454
    .local v11, "removeProfileStatus":Z
    :try_start_10
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_0

    .line 447
    .end local v11    # "removeProfileStatus":Z
    .end local v12    # "removeStatus":I
    :cond_d
    :try_start_11
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 448
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 449
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "setting vpn connection : return value is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 454
    :try_start_12
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_0

    .line 450
    .end local v5    # "found":Z
    .end local v6    # "len":I
    .end local v7    # "matcher":Ljava/util/regex/Matcher;
    .end local v8    # "pattern":Ljava/util/regex/Pattern;
    .end local v9    # "profileExists":Z
    .end local v10    # "profileName":Ljava/lang/String;
    .end local v14    # "retValue":Z
    .end local v15    # "success":I
    .end local v17    # "vendorNameWithCid":Ljava/lang/String;
    .end local v18    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v4

    .line 451
    .local v4, "e":Ljava/lang/Exception;
    :try_start_13
    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "setting vpn connection : Error at\n "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 452
    const/4 v13, 0x0

    .line 454
    .end local v13    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :try_start_14
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z

    goto/16 :goto_0

    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v13    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v19

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z

    throw v19
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
.end method

.method public getActiveProfilesForVendor(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "vendorName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2217
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2219
    .local v1, "activatedProfiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 2221
    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 2222
    .local v4, "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v7

    .line 2223
    .local v7, "vendorPkgName":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v0

    .line 2224
    .local v0, "activateState":I
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v5

    .line 2226
    .local v5, "persona_id":I
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_ACTIVATED:I

    if-ne v0, v8, :cond_0

    .line 2228
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfVpnProfileTableIsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2229
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v6

    .line 2230
    .local v6, "profileName":Ljava/lang/String;
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "***** VIGNESH profileName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2236
    .end local v0    # "activateState":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v5    # "persona_id":I
    .end local v6    # "profileName":Ljava/lang/String;
    .end local v7    # "vendorPkgName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2237
    .local v2, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v1
.end method

.method public getAllContainerPackagesInVpnProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 10
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v9, 0x9

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1763
    const/4 v0, -0x1

    .line 1764
    .local v0, "cid":I
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1767
    .local v1, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<[Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPersonaExists(I)Z

    move-result v2

    .line 1768
    .local v2, "isPersona":Z
    if-nez v2, :cond_0

    .line 1769
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v5, "get all container packages in vpn : The container id entered is an invalid id"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    invoke-virtual {v1, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1771
    const/16 v4, 0xb

    invoke-virtual {v1, v7, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1815
    .end local v1    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<[Ljava/lang/String;>;"
    :goto_0
    return-object v1

    .line 1777
    .restart local v1    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<[Ljava/lang/String;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v3

    .line 1778
    .local v3, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v3, :cond_1

    .line 1779
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get all container packages in vpn : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    invoke-virtual {v1, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1781
    invoke-virtual {v1, v7, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1784
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPersonaExists(I)Z

    move-result v2

    .line 1785
    if-eqz v2, :cond_2

    .line 1786
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v4

    if-eq v4, p2, :cond_2

    .line 1787
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v5, "get all container packages in vpn : plz check a containerId"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    invoke-virtual {v1, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1789
    invoke-virtual {v1, v7, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1806
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getContainerVpnState()I

    move-result v0

    .line 1808
    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    if-ne v0, p2, :cond_3

    .line 1809
    iput p2, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 1810
    invoke-direct {p0, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getAllRangedPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v1

    goto :goto_0

    .line 1814
    :cond_3
    iput p2, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 1815
    invoke-direct {p0, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getAllPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v1

    goto :goto_0
.end method

.method public getAllPackagesInVpnProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 6
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1823
    const/4 v0, -0x1

    .line 1824
    .local v0, "cid":I
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1825
    .local v1, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<[Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 1828
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v2, :cond_0

    .line 1829
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getContainerVpnState()I

    move-result v0

    .line 1838
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    iget v3, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    if-ne v0, v3, :cond_1

    .line 1839
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getAllRangedPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v1

    .line 1843
    .end local v1    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<[Ljava/lang/String;>;"
    :goto_0
    return-object v1

    .line 1831
    .restart local v1    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<[Ljava/lang/String;>;"
    :cond_0
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "profile : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1833
    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1843
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getAllPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v1

    goto :goto_0
.end method

.method public declared-synchronized getAllVpnProfiles(Lcom/sec/enterprise/knox/KnoxVpnContext;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 18
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 792
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget v1, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 793
    .local v1, "adminId":I
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    .line 794
    .local v12, "vendorName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v4, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 795
    .local v4, "personaId":I
    invoke-static {v12, v4}, Lcom/sec/enterprise/knox/GenericVpnPolicy;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 796
    .local v13, "vendorNameWithCid":Ljava/lang/String;
    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getAllVpnProfiles API called : vendorNameWithCid = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    new-instance v8, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v8}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 798
    .local v8, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 799
    const/4 v15, 0x1

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 800
    const/4 v11, 0x0

    .line 801
    .local v11, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 804
    .local v9, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVpnInterface(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v14

    .line 805
    .local v14, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-eqz v14, :cond_4

    .line 806
    invoke-interface {v14}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getAllConnections()Ljava/util/List;

    move-result-object v11

    .line 807
    if-eqz v11, :cond_4

    .line 809
    if-nez v9, :cond_0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_0

    .line 810
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .end local v9    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v10, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v9, v10

    .line 813
    .end local v10    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 814
    .local v5, "profile":Ljava/lang/String;
    sget-boolean v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v15, :cond_2

    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "The Json retrieved is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v15, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileNameFromJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 816
    .local v7, "profileName":Ljava/lang/String;
    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getAllVpnProfiles - profileName = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v15, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v6

    .line 818
    .local v6, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v15

    if-eq v1, v15, :cond_3

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v15

    const/16 v16, 0x3e8

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    :cond_3
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v15

    if-ne v4, v15, :cond_1

    .line 821
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 828
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "profile":Ljava/lang/String;
    .end local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v7    # "profileName":Ljava/lang/String;
    .end local v14    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v2

    .line 829
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getting all vpn connection : Failure at "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 830
    const/4 v8, 0x0

    .line 832
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v8    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_1
    monitor-exit p0

    return-object v8

    .line 826
    .restart local v8    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v14    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_4
    :try_start_3
    invoke-virtual {v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 827
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 792
    .end local v1    # "adminId":I
    .end local v4    # "personaId":I
    .end local v8    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v9    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "vendorName":Ljava/lang/String;
    .end local v13    # "vendorNameWithCid":Ljava/lang/String;
    .end local v14    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15
.end method

.method public getCACertificate(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 8
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 917
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 918
    .local v0, "adminId":I
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 919
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 920
    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 922
    :try_start_0
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 937
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    :goto_0
    return-object v2

    .line 925
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v3

    .line 926
    .local v3, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v3, :cond_1

    .line 927
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v6, "getting CACertificate : Service is not started"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 928
    goto :goto_0

    .line 930
    :cond_1
    invoke-interface {v3, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getCACertificate(Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 931
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 933
    .end local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v1

    .line 934
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getting CACertificate : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 935
    goto :goto_0
.end method

.method public getChainingEnabledForProfile(I)I
    .locals 8
    .param p1, "uidOfVendor"    # I

    .prologue
    .line 4578
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getChainingEnabledForProfile: uid value is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4579
    :cond_0
    const/4 v1, -0x1

    .line 4581
    .local v1, "chainingEnabled":I
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 4582
    .local v4, "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v0

    .line 4583
    .local v0, "activateState":I
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getChainingEnabledForProfile: uidOfVendor value is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4584
    :cond_2
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorUid()I

    move-result v5

    if-ne v5, p1, :cond_1

    sget v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_ACTIVATED:I

    if-ne v0, v5, :cond_1

    .line 4585
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v6, "getChainingEnabledForProfile: vendorName is same"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4586
    :cond_3
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 4587
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v6, "getChainingEnabledForProfile:chaining enabled for profile"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4588
    :cond_4
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4598
    .end local v0    # "activateState":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_5
    :goto_0
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v5, :cond_6

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getChainingEnabledForProfile: chainingEnabled value is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4599
    :cond_6
    return v1

    .line 4595
    :catch_0
    move-exception v2

    .line 4596
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4335
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getErrorString(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1055
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1056
    .local v0, "adminId":I
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getErrorString API called for profileName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1059
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 1073
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    :goto_0
    return-object v2

    .line 1062
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v3

    .line 1063
    .local v3, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v3, :cond_1

    .line 1064
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v5, "getting vpn error string : Service is not started"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1069
    .end local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v1

    .line 1070
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getting vpn error string : Failure at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    const/4 v2, 0x0

    goto :goto_0

    .line 1067
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_1
    :try_start_1
    invoke-interface {v3, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getErrorString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1068
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getKnoxVpnProfileType(Ljava/lang/String;)I
    .locals 6
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 2201
    const/4 v2, -0x1

    .line 2203
    .local v2, "profileType":I
    if-eqz p1, :cond_0

    .line 2204
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 2205
    .local v1, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v1, :cond_0

    .line 2206
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2212
    .end local v1    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_0
    :goto_0
    return v2

    .line 2209
    :catch_0
    move-exception v0

    .line 2210
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getProfilesByDomain(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4339
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4340
    .local v4, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4341
    .local v3, "key":Ljava/lang/String;
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 4342
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 4343
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4344
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4342
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4350
    .end local v0    # "i":I
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method public getState(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 9
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1017
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1018
    .local v0, "adminId":I
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getState API called for profileName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    new-instance v3, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v3}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1020
    .local v3, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    sget v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1021
    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-virtual {v3, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1023
    :try_start_0
    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 1050
    :cond_0
    :goto_0
    return-object v3

    .line 1026
    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 1027
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v2, :cond_0

    .line 1030
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v6

    sget v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    if-ne v6, v7, :cond_2

    .line 1031
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v7, "Profile in deactivate state : Returning 0"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1033
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1047
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_0
    move-exception v1

    .line 1048
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getting vpn state : Failure at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1037
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_2
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v5

    .line 1038
    .local v5, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v5, :cond_3

    .line 1039
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getting vpn state : Interface null for profile : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1042
    :cond_3
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v7, "getState : Calling getState on vendor"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    invoke-interface {v5, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getState(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1044
    .local v4, "state":Ljava/lang/Integer;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getState : getState returnValue. profileName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    invoke-virtual {v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1046
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public getUidPidSearchEnabledForProfile(ILjava/lang/String;)I
    .locals 7
    .param p1, "callerUid"    # I
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 2120
    const/4 v3, 0x0

    .line 2122
    .local v3, "uidPidSearchEnabled":I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 2123
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v2, :cond_1

    .line 2124
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The packageName stored in database is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "callerUid is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorUid()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 2126
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v4

    sget v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->SYSTEM_VPN:I

    if-ne v4, v5, :cond_3

    .line 2127
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUidPidSearchEnabled()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2138
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_1
    :goto_0
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUidPidSearchEnabledForProfile: uidPidSearchEnabled value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    :cond_2
    return v3

    .line 2128
    .restart local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v4

    sget v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PER_APP_VPN:I

    if-ne v4, v5, :cond_1

    .line 2129
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v0

    .line 2130
    .local v0, "activateState":I
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "activated state of the profile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUidPidSearchEnabled()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_0

    .line 2135
    .end local v0    # "activateState":I
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_0
    move-exception v1

    .line 2136
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized getUserCertificate(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 8
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 867
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 868
    .local v0, "adminId":I
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 869
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 870
    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 872
    :try_start_1
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 886
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    :goto_0
    monitor-exit p0

    return-object v2

    .line 875
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    :cond_0
    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v3

    .line 876
    .local v3, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v3, :cond_1

    .line 877
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v6, "getting user certificate : VPN Service not started"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 882
    .end local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v1

    .line 883
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getting user certificate : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v4

    .line 884
    goto :goto_0

    .line 880
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_1
    :try_start_4
    invoke-interface {v3, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getUserCertificate(Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 881
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 867
    .end local v0    # "adminId":I
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    .end local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getVendorNameForProfile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3354
    const/4 v2, 0x0

    .line 3356
    .local v2, "vendorName":Ljava/lang/String;
    :try_start_0
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVendorNameForProfile: profile name  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3357
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 3358
    .local v1, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v1, :cond_1

    .line 3359
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3360
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVendorNameForProfile: vendorName  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3365
    .end local v1    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_1
    :goto_0
    return-object v2

    .line 3362
    :catch_0
    move-exception v0

    .line 3363
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception at getVendorNameForProfile API "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getVpnConnectionType(Ljava/lang/String;)I
    .locals 7
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 2182
    const/4 v0, -0x1

    .line 2185
    .local v0, "connectionType":I
    if-eqz p1, :cond_1

    .line 2186
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v3

    .line 2187
    .local v3, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v3, :cond_0

    move v1, v0

    .line 2196
    .end local v0    # "connectionType":I
    .end local v3    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .local v1, "connectionType":I
    :goto_0
    return v1

    .line 2190
    .end local v1    # "connectionType":I
    .restart local v0    # "connectionType":I
    .restart local v3    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVpnConnectionType()I

    move-result v0

    .line 2191
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVpnConnectionType : profileName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / connection type value :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_1
    :goto_1
    move v1, v0

    .line 2196
    .end local v0    # "connectionType":I
    .restart local v1    # "connectionType":I
    goto :goto_0

    .line 2193
    .end local v1    # "connectionType":I
    .restart local v0    # "connectionType":I
    :catch_0
    move-exception v2

    .line 2194
    .local v2, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public declared-synchronized getVpnModeOfOperation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 8
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2031
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 2032
    .local v0, "adminId":I
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 2033
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    sget v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 2034
    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2036
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v4

    .line 2037
    .local v4, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-eqz v4, :cond_0

    .line 2038
    invoke-interface {v4, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getVpnModeOfOperation(Ljava/lang/String;)I

    move-result v3

    .line 2039
    .local v3, "ret":I
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVpnModeOfOperation : profileName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 2041
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2047
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .end local v3    # "ret":I
    .end local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v2

    .line 2043
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v1

    .line 2044
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getting vpn mode : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2045
    const/4 v2, 0x0

    goto :goto_0

    .line 2031
    .end local v0    # "adminId":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getVpnProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 10
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 461
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 462
    .local v0, "adminId":I
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getVpnProfile API called : profileName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    new-instance v4, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v4}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 464
    .local v4, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 465
    const/4 v7, 0x1

    const/4 v8, 0x2

    invoke-virtual {v4, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    :try_start_1
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    .line 484
    .end local v4    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    :goto_0
    monitor-exit p0

    return-object v4

    .line 470
    .restart local v4    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    :cond_0
    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v5

    .line 471
    .local v5, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v5, :cond_1

    .line 472
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v8, "getting vpn connection : Mocana Service is not started"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 480
    .end local v5    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v1

    .line 481
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getting vpn connection : Failure at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v6

    .line 482
    goto :goto_0

    .line 475
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_1
    :try_start_4
    invoke-interface {v5, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getConnection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 476
    .local v2, "jsonProfile":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileNameFromJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 477
    .local v3, "profil":Ljava/lang/String;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "profileName got from json = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-interface {v5, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getConnection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 479
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 461
    .end local v0    # "adminId":I
    .end local v2    # "jsonProfile":Ljava/lang/String;
    .end local v3    # "profil":Ljava/lang/String;
    .end local v4    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    .end local v5    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method handleActionPackageRemoved(Landroid/os/Bundle;)V
    .locals 16
    .param p1, "map"    # Landroid/os/Bundle;

    .prologue
    .line 3399
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v12, "handleActionPackageRemoved"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3400
    const-string/jumbo v11, "uid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 3401
    .local v10, "uid":I
    const-string v11, "package"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3402
    .local v7, "originalPackageName":Ljava/lang/String;
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3403
    .local v1, "cid":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v11, v1, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3405
    .local v8, "packageName":Ljava/lang/String;
    const-string v11, "new_install_or_update"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 3406
    .local v5, "extraReplacing":Z
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleActionPackageRemoved : packageName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : replacing = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3407
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->hasVpnInterface(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 3409
    if-eqz v5, :cond_1

    .line 3410
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v12, "Package is being reinstalled. Skip remove profile"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3458
    :cond_0
    :goto_0
    return-void

    .line 3413
    :cond_1
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v12, "handleActionPackageRemoved : packageName is Vpn Vendor"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3415
    :try_start_0
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v12, "handleActionPackageRemoved : Getting profile list for vendor from DB"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3416
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v12, "VpnProfileInfo"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "vendorName"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 3418
    .local v3, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v9, 0x0

    .line 3419
    .local v9, "profileName":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 3420
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 3421
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v11, "profileName"

    invoke-virtual {v2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3422
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleActionPackageRemoved : Remvoing profile = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3423
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeProfileFromHashMapAndDB(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3426
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "profileName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 3427
    .local v4, "e":Ljava/lang/Exception;
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleActionPackageRemoved : Failure at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3430
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "com.cisco.anyconnect.vpn.android.avf"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 3431
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    if-eqz v11, :cond_3

    .line 3432
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "1. handleActionPackageRemoved : cisco_proxy_application value is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3433
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleAnyConnectUninstall(Ljava/lang/String;I)Z

    .line 3438
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v11, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3439
    .restart local v9    # "profileName":Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 3441
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->deleteUIDFromPackageData(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 3442
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "vpn handle : package remove>> Remove from iptable/hashmap"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3443
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeFromHashMapByPackageName(Ljava/lang/String;)V

    .line 3447
    :cond_4
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    if-eqz v11, :cond_0

    .line 3448
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "2. handleActionPackageRemoved : cisco_proxy_application value is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3449
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3450
    if-nez v5, :cond_0

    .line 3451
    const-string v11, "com.cisco.anyconnect.vpn.android.avf"

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->checkIfAnyConnectSupportsKnox(Ljava/lang/String;I)Z

    move-result v11

    if-nez v11, :cond_0

    .line 3452
    const-string v11, "com.cisco.anyconnect.vpn.android.avf"

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleAnyConnectUninstall(Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method protected declared-synchronized initializeVpnDataAndVendors()V
    .locals 5

    .prologue
    .line 352
    monitor-enter p0

    :try_start_0
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v3, "initializeVpnDataAndVendors"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->isNeedToMigration()Z

    move-result v1

    .line 356
    .local v1, "state":Z
    if-eqz v1, :cond_1

    .line 357
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeVpnDataAndVendors : Have to wait until migration done : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->setupIntentFilterForMigration()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    :goto_0
    monitor-exit p0

    return-void

    .line 361
    :cond_1
    :try_start_1
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v3, "init vendor : Normal"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 363
    .local v0, "map":Landroid/os/Bundle;
    const/16 v2, 0x8

    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 352
    .end local v0    # "map":Landroid/os/Bundle;
    .end local v1    # "state":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isProxyOrAnyConnect(Ljava/lang/String;I)Z
    .locals 11
    .param p1, "packageNameEntered"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 3369
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isProxyOrAnyConnect : packageName value is  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "whose container id is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3370
    :cond_0
    const/4 v3, 0x0

    .line 3372
    .local v3, "packageInstalled":Z
    :try_start_0
    const-string v8, "com.cisco.anyconnect.vpn.android.avf"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3373
    const/4 v3, 0x1

    move v4, v3

    .line 3395
    .end local v3    # "packageInstalled":Z
    .local v4, "packageInstalled":I
    :goto_0
    return v4

    .line 3376
    .end local v4    # "packageInstalled":I
    .restart local v3    # "packageInstalled":Z
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.cisco.anyconnect.vpn.android.avf.BIND_SERVICE"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3377
    .local v1, "i":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 3378
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    invoke-virtual {v5, v1, v8, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    .line 3379
    .local v6, "proxyServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 3380
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 3381
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v8, :cond_3

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The packageNameEntered having the proxy cisco anyconnect intent is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "whose class name is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3382
    :cond_3
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3383
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    sput-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->cisco_proxy_application:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3384
    const/4 v3, 0x1

    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    move v4, v3

    .line 3388
    .restart local v4    # "packageInstalled":I
    goto :goto_0

    .line 3391
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "packageInstalled":I
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "proxyServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v0

    .line 3392
    .local v0, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception at isProxyOrAnyConnect "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3394
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v8, :cond_6

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isProxyOrAnyConnect : packageInstalled value is  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v4, v3

    .line 3395
    .restart local v4    # "packageInstalled":I
    goto/16 :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 202
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v1, "[onAdminAdded]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 207
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v1, "[onAdminRemoved]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 216
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v1, "[onPreAdminRemoval]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Admin has VPN Permission : Pre admin remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopVpnConnectionAfterAdminRemoval(I)V

    .line 219
    return-void
.end method

.method public removeAllContainerPackagesFromVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 11
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v10, 0x9

    const/4 v9, -0x1

    const/4 v5, 0x1

    .line 1928
    iput p2, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 1931
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPersonaExists(I)Z

    move-result v1

    .line 1932
    .local v1, "isPersona":Z
    new-instance v0, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v0}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1933
    .local v0, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    if-nez v1, :cond_0

    .line 1934
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v7, "remove all container packages : The container id entered is an invalid id"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1936
    const/16 v6, 0xb

    invoke-virtual {v0, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1982
    .end local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :goto_0
    return-object v0

    .line 1942
    .restart local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v3

    .line 1943
    .local v3, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v3, :cond_1

    .line 1944
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remove all container packages : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1946
    invoke-virtual {v0, v5, v10}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1949
    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPersonaExists(I)Z

    move-result v1

    .line 1950
    if-eqz v1, :cond_2

    .line 1951
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v6

    if-eq v6, p2, :cond_2

    .line 1952
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v7, "remove all container packages : plz check a containerId"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1954
    invoke-virtual {v0, v5, v10}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1973
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVpnConnectionType(Ljava/lang/String;)I

    move-result v4

    .line 1974
    .local v4, "vpnConnectionType":I
    if-ne v4, v5, :cond_3

    move v2, v5

    .line 1975
    .local v2, "onDemand":Z
    :goto_1
    if-eqz v2, :cond_4

    .line 1976
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v7, "remove all contaienr packages to vpn : plz check a containerId"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1978
    invoke-virtual {v0, v5, v10}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1974
    .end local v2    # "onDemand":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 1982
    .restart local v2    # "onDemand":Z
    :cond_4
    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeAllPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized removeAllPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 18
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1586
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1587
    .local v3, "adminId":I
    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v16, "removeAllPackagesFromVpn : "

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    new-instance v9, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v9}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1590
    .local v9, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    sget v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1591
    const/4 v15, 0x1

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1593
    if-nez p2, :cond_1

    .line 1659
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v9

    .line 1597
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v15

    if-eqz v15, :cond_2

    .line 1598
    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v16, "removePackagesFromVpn : validate failed"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1656
    :catch_0
    move-exception v8

    .line 1657
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "removeAllPackagesFromVpn : Exception : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1586
    .end local v3    # "adminId":I
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15

    .line 1602
    .restart local v3    # "adminId":I
    .restart local v9    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v10

    .line 1603
    .local v10, "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getContainerVpnState()I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 1604
    :cond_3
    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "removeAllPackagesFromVpn : not container profile :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1607
    :cond_4
    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "removeAllPackagesFromVpn : profileName = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    const/4 v6, -0x1

    .line 1610
    .local v6, "containerVpnState":I
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1611
    .local v7, "cv":Landroid/content/ContentValues;
    const-string v15, "containerVpnState"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1612
    const/4 v15, 0x1

    new-array v5, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "profileName"

    aput-object v16, v5, v15

    .line 1615
    .local v5, "columns":[Ljava/lang/String;
    const/4 v15, 0x1

    new-array v14, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object p2, v14, v15

    .line 1618
    .local v14, "values":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v16, "VpnProfileInfo"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v5, v14, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v13

    .line 1620
    .local v13, "status":Z
    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "removeAllPackagesFromVpn : profileName = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "containerVpnState = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    if-eqz v13, :cond_0

    .line 1625
    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getContainerVpnState()I

    move-result v4

    .line 1626
    .local v4, "cid":I
    if-eqz v10, :cond_6

    .line 1627
    sget-boolean v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v15, :cond_5

    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "removeAllPackagesFromVpn : profileInfo = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    :cond_5
    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v16, "removeAllPackagesFromVpn : Setting containerVpnState to -1"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    invoke-virtual {v10, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setContainerVpnState(I)V

    .line 1633
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v4, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpTableMangleNatRulesForRange(ILjava/lang/String;)V

    .line 1634
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startUid(I)I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopUid(I)I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-direct {v0, v1, v15, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->unsetDnsSystemProperty(Ljava/lang/String;II)V

    .line 1637
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeContainerFromExceptionList(Ljava/lang/String;I)V

    .line 1639
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v12

    .line 1640
    .local v12, "state":I
    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "removeAllPackagesFromVpn : current state = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1642
    :try_start_4
    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageCount()I

    move-result v11

    .line 1643
    .local v11, "size":I
    if-gtz v11, :cond_8

    .line 1644
    sget-boolean v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v15, :cond_7

    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "removeAllPackagesFromVpn : stop  = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    :cond_7
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopConnection(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1651
    .end local v11    # "size":I
    :cond_8
    :goto_1
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->refreshDomainInHashMap(Ljava/lang/String;)V

    .line 1652
    move-object/from16 v0, p1

    iget v15, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-direct {v0, v1, v15, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updateNotification(Ljava/lang/String;IZ)V

    .line 1654
    sget v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->VPN_RETURN_INT_SUCCESS:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1655
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_0

    .line 1647
    :catch_1
    move-exception v8

    .line 1648
    .restart local v8    # "e":Ljava/lang/Exception;
    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "removeAllPackagesFromVpn : Exception:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized removeAllPackagesFromVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 6
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1988
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeAllPackagesFromVpn: vpnContext.personaId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    :cond_0
    new-instance v0, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v0}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1992
    .local v0, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVpnConnectionType(Ljava/lang/String;)I

    move-result v2

    .line 1993
    .local v2, "vpnConnectionType":I
    if-ne v2, v1, :cond_1

    .line 1994
    .local v1, "onDemand":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 1995
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v4, "remove all packages to vpn : plz check a containerId"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1997
    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-virtual {v0, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2001
    .end local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :goto_1
    monitor-exit p0

    return-object v0

    .line 1993
    .end local v1    # "onDemand":Z
    .restart local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2001
    .restart local v1    # "onDemand":Z
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeAllPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 1988
    .end local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .end local v1    # "onDemand":Z
    .end local v2    # "vpnConnectionType":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized removeContainerPackagesFromVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 6
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "packageList"    # [Ljava/lang/String;
    .param p4, "enteredProfileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "I[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1715
    monitor-enter p0

    :try_start_0
    iput p2, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 1718
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPersonaExists(I)Z

    move-result v1

    .line 1719
    .local v1, "isPersona":Z
    new-instance v0, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v0}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1720
    .local v0, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    if-nez v1, :cond_0

    .line 1721
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v4, "remove container packages to vpn : The container id entered is an invalid id"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1723
    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-virtual {v0, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1757
    .end local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1729
    .restart local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 1730
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v2, :cond_1

    .line 1731
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove container packages to vpn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1733
    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-virtual {v0, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1715
    .end local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .end local v1    # "isPersona":Z
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1736
    .restart local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v1    # "isPersona":Z
    .restart local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPersonaExists(I)Z

    move-result v1

    .line 1737
    if-eqz v1, :cond_2

    .line 1738
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v3

    if-eq v3, p2, :cond_2

    .line 1739
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v4, "remove container packages to vpn : plz check a containerId"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1741
    const/4 v3, 0x1

    const/16 v4, 0x9

    invoke-virtual {v0, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0

    .line 1757
    :cond_2
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removePackagesFromVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized removePackageFromVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "regularPackageName"    # Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1321
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1322
    .local v0, "adminId":I
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remove to package : packageName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1323
    const/4 v2, -0x1

    .line 1327
    .local v2, "retvalue":I
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v6, v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1329
    .local v5, "transformedPackageName":Ljava/lang/String;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remove to package : transformed packageName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    if-nez v5, :cond_0

    .line 1331
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v7, "remove to package : Error occured for removing vpn, package map."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v2

    .line 1352
    .end local v2    # "retvalue":I
    .end local v5    # "transformedPackageName":Ljava/lang/String;
    .local v3, "retvalue":I
    :goto_0
    monitor-exit p0

    return v3

    .line 1334
    .end local v3    # "retvalue":I
    .restart local v2    # "retvalue":I
    .restart local v5    # "transformedPackageName":Ljava/lang/String;
    :cond_0
    :try_start_2
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v7, "VpnPackageInfo"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "packageName"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "profileName"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v10, 0x1

    aput-object p3, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    .line 1337
    .local v4, "success":Z
    if-nez v4, :cond_1

    .line 1338
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v7, "remove to package : Error deleting from DB"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1339
    .end local v2    # "retvalue":I
    .restart local v3    # "retvalue":I
    goto :goto_0

    .line 1343
    .end local v3    # "retvalue":I
    .restart local v2    # "retvalue":I
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->refreshDomainInHashMap(Ljava/lang/String;)V

    .line 1345
    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    const/4 v7, 0x0

    invoke-direct {p0, p3, v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updateNotification(Ljava/lang/String;IZ)V

    .line 1347
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeFromHashMapByPackageName(Ljava/lang/String;)V

    .line 1348
    sget v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->VPN_RETURN_INT_SUCCESS:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v4    # "success":Z
    .end local v5    # "transformedPackageName":Ljava/lang/String;
    :goto_1
    move v3, v2

    .line 1352
    .end local v2    # "retvalue":I
    .restart local v3    # "retvalue":I
    goto :goto_0

    .line 1349
    .end local v3    # "retvalue":I
    .restart local v2    # "retvalue":I
    :catch_0
    move-exception v1

    .line 1350
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remove to package : Exception occured for removing vpn, package map:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1321
    .end local v0    # "adminId":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "retvalue":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized removePackagesFromVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 25
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "packageList"    # [Ljava/lang/String;
    .param p3, "enteredProfileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1253
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget v6, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1255
    .local v6, "adminId":I
    sget-boolean v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v18, :cond_0

    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "removePackagesFromVpn : personaId = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :cond_0
    const/4 v3, 0x0

    .local v3, "ALL_PACKAGES_REMOVED":I
    const/4 v5, 0x1

    .local v5, "PARTIAL_PACKAGES_REMOVED":I
    const/4 v4, 0x2

    .line 1257
    .local v4, "NO_PACKAGES_REMOVED":I
    new-instance v15, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v15}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1258
    .local v15, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1259
    const/16 v18, 0x1

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1261
    if-eqz p2, :cond_1

    :try_start_1
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 1317
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v15

    .line 1264
    :cond_2
    move-object/from16 v7, p2

    .local v7, "arr$":[Ljava/lang/String;
    :try_start_2
    array-length v11, v7

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1
    if-ge v10, v11, :cond_8

    aget-object v14, v7, v10

    .line 1266
    .local v14, "regularPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1267
    .local v17, "transformedPackageName":Ljava/lang/String;
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "remove to package : transformed packageName = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    if-nez v17, :cond_3

    .line 1269
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v19, "remove to package : Error occured for removing vpn, package map."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1310
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v14    # "regularPackageName":Ljava/lang/String;
    .end local v17    # "transformedPackageName":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1311
    .local v9, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception in remove packages for vpn : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    const/16 v18, -0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1253
    .end local v3    # "ALL_PACKAGES_REMOVED":I
    .end local v4    # "NO_PACKAGES_REMOVED":I
    .end local v5    # "PARTIAL_PACKAGES_REMOVED":I
    .end local v6    # "adminId":I
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v15    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v18

    monitor-exit p0

    throw v18

    .line 1273
    .restart local v3    # "ALL_PACKAGES_REMOVED":I
    .restart local v4    # "NO_PACKAGES_REMOVED":I
    .restart local v5    # "PARTIAL_PACKAGES_REMOVED":I
    .restart local v6    # "adminId":I
    .restart local v7    # "arr$":[Ljava/lang/String;
    .restart local v10    # "i$":I
    .restart local v11    # "len$":I
    .restart local v14    # "regularPackageName":Ljava/lang/String;
    .restart local v15    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v17    # "transformedPackageName":Ljava/lang/String;
    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1274
    .local v13, "profileName":Ljava/lang/String;
    if-nez v13, :cond_5

    .line 1275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v18

    if-nez v18, :cond_5

    .line 1264
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 1279
    :cond_5
    if-eqz v13, :cond_1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    if-eqz p3, :cond_1

    .line 1282
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "remove to package : profileName = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v18

    if-eqz v18, :cond_6

    .line 1284
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v19, "removePackagesFromVpn : validate failed"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1289
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    move-object/from16 v18, v0

    const-string v19, "VpnPackageInfo"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "packageName"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v17, v21, v22

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "profileName"

    aput-object v24, v22, v23

    invoke-virtual/range {v18 .. v22}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 1297
    .local v8, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 1298
    :cond_7
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v19, "Package doesn\'t exist in DB"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1302
    .end local v8    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v13    # "profileName":Ljava/lang/String;
    .end local v14    # "regularPackageName":Ljava/lang/String;
    .end local v17    # "transformedPackageName":Ljava/lang/String;
    :cond_8
    move-object/from16 v7, p2

    array-length v11, v7

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v11, :cond_a

    aget-object v12, v7, v10

    .line 1303
    .local v12, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v12, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removePackageFromVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 1304
    .local v16, "tempResponseData":I
    const/16 v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 1305
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1306
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v19, "remove to package: partial packages removed"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1302
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1315
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v16    # "tempResponseData":I
    :cond_a
    :try_start_5
    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v19, "remove to package: all packages removed"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized removeVpnProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 19
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 489
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 490
    .local v3, "adminId":I
    const/4 v9, -0x1

    .line 491
    .local v9, "removeStatus":I
    const/4 v12, -0x1

    .line 492
    .local v12, "sVpnTransition":I
    const/4 v11, -0x1

    .line 493
    .local v11, "routeType":I
    const/4 v4, 0x0

    .line 494
    .local v4, "checkForPerApp":Z
    const/4 v5, 0x0

    .line 496
    .local v5, "checkForSystem":Z
    sget-boolean v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v16, :cond_0

    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "removeVpnProfile : profileName = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " : personaId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_0
    new-instance v10, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v10}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 498
    .local v10, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    sget v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 499
    const/16 v16, 0x1

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v16

    if-eqz v16, :cond_2

    .line 604
    .end local v10    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v10

    .line 507
    .restart local v10    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getRoutType(Ljava/lang/String;)I

    move-result v11

    .line 508
    sget-boolean v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v16, :cond_3

    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "removeVpnProfile getRoutType : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " :  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_3
    sget v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PER_APP_VPN:I

    move/from16 v0, v16

    if-ne v11, v0, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getActivate(Ljava/lang/String;)I

    move-result v16

    sget v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_ACTIVATED:I

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 510
    sget-boolean v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v16, :cond_1

    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v17, "removeVpnProfile Per App VPN is stil activated "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 600
    :catch_0
    move-exception v6

    .line 601
    .local v6, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "remove vpn profile : Failure at "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 602
    const/4 v10, 0x0

    goto :goto_0

    .line 515
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_4
    sget-boolean v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v16, :cond_5

    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "removeVpnProfile : Check STOP#1 profile =  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v12

    .line 518
    sget v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PER_APP_VPN:I

    move/from16 v0, v16

    if-ne v11, v0, :cond_19

    const/16 v16, 0x66

    move/from16 v0, v16

    if-eq v12, v0, :cond_6

    const/16 v16, 0x67

    move/from16 v0, v16

    if-eq v12, v0, :cond_6

    const/16 v16, 0x68

    move/from16 v0, v16

    if-ne v12, v0, :cond_19

    :cond_6
    const/4 v4, 0x1

    .line 521
    :goto_1
    sget v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->SYSTEM_VPN:I

    move/from16 v0, v16

    if-ne v11, v0, :cond_1a

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v12, v0, :cond_7

    const/16 v16, 0x3

    move/from16 v0, v16

    if-eq v12, v0, :cond_7

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v12, v0, :cond_1a

    :cond_7
    const/4 v5, 0x1

    .line 525
    :goto_2
    if-nez v4, :cond_8

    if-eqz v5, :cond_10

    .line 528
    :cond_8
    sget-boolean v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v16, :cond_9

    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "removeVpnProfile : STOP#2 profile =  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_9
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopConnection(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v7

    .line 531
    .local v7, "mEnterpriseResponseData":Landroid/app/enterprise/EnterpriseResponseData;
    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 533
    .local v13, "stopStatus":I
    sget-boolean v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v16, :cond_a

    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "removeVpnProfile : STOP#3 status  =  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v12

    .line 538
    sget v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PER_APP_VPN:I

    move/from16 v0, v16

    if-ne v11, v0, :cond_b

    const/16 v16, 0x65

    move/from16 v0, v16

    if-eq v12, v0, :cond_c

    :cond_b
    const/16 v16, 0x69

    move/from16 v0, v16

    if-eq v12, v0, :cond_c

    const/16 v16, 0x67

    move/from16 v0, v16

    if-ne v12, v0, :cond_1b

    :cond_c
    const/4 v4, 0x1

    .line 541
    :goto_3
    sget v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->SYSTEM_VPN:I

    move/from16 v0, v16

    if-ne v11, v0, :cond_d

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v12, v0, :cond_e

    :cond_d
    const/16 v16, 0x5

    move/from16 v0, v16

    if-eq v12, v0, :cond_e

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v12, v0, :cond_1c

    :cond_e
    const/4 v5, 0x1

    .line 544
    :goto_4
    sget v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    move/from16 v0, v16

    if-ne v13, v0, :cond_f

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    .line 548
    :cond_f
    sget v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->SYSTEM_VPN:I

    move/from16 v0, v16

    if-eq v11, v0, :cond_10

    .line 549
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removePackagesFromIpTables(Ljava/lang/String;)V

    .line 553
    .end local v7    # "mEnterpriseResponseData":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v13    # "stopStatus":I
    :cond_10
    sget-boolean v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v16, :cond_11

    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "removeVpnProfile : Delete a profile "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v12

    .line 556
    sget v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PER_APP_VPN:I

    move/from16 v0, v16

    if-ne v11, v0, :cond_12

    const/16 v16, 0x65

    move/from16 v0, v16

    if-eq v12, v0, :cond_13

    :cond_12
    const/16 v16, 0x69

    move/from16 v0, v16

    if-eq v12, v0, :cond_13

    const/16 v16, 0x66

    move/from16 v0, v16

    if-eq v12, v0, :cond_13

    const/16 v16, 0x67

    move/from16 v0, v16

    if-ne v12, v0, :cond_1d

    :cond_13
    const/4 v4, 0x1

    .line 559
    :goto_5
    sget v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->SYSTEM_VPN:I

    move/from16 v0, v16

    if-ne v11, v0, :cond_14

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v12, v0, :cond_15

    :cond_14
    const/16 v16, 0x5

    move/from16 v0, v16

    if-eq v12, v0, :cond_15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v12, v0, :cond_15

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v12, v0, :cond_1e

    :cond_15
    const/4 v5, 0x1

    .line 563
    :goto_6
    if-nez v4, :cond_16

    if-eqz v5, :cond_1

    .line 566
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v15

    .line 567
    .local v15, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v8

    .line 568
    .local v8, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v8, :cond_1

    .line 569
    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v14

    .line 571
    .local v14, "vendorName":Ljava/lang/String;
    sget-boolean v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v16, :cond_17

    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v17, "removeVpnProfile : check a service "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_17
    if-nez v15, :cond_1f

    .line 573
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v17, "remove vpn profile : interface is null"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const/4 v9, 0x0

    .line 581
    :goto_7
    if-nez v9, :cond_20

    .line 582
    sget-boolean v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v16, :cond_18

    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string v17, "removeVpnProfile : removeConnection success"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->removeProfileFromHashMapAndDB(Ljava/lang/String;)Z

    .line 589
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 596
    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 489
    .end local v3    # "adminId":I
    .end local v4    # "checkForPerApp":Z
    .end local v5    # "checkForSystem":Z
    .end local v8    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v9    # "removeStatus":I
    .end local v10    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .end local v11    # "routeType":I
    .end local v12    # "sVpnTransition":I
    .end local v14    # "vendorName":Ljava/lang/String;
    .end local v15    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catchall_0
    move-exception v16

    monitor-exit p0

    throw v16

    .line 518
    .restart local v3    # "adminId":I
    .restart local v4    # "checkForPerApp":Z
    .restart local v5    # "checkForSystem":Z
    .restart local v9    # "removeStatus":I
    .restart local v10    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v11    # "routeType":I
    .restart local v12    # "sVpnTransition":I
    :cond_19
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 521
    :cond_1a
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 538
    .restart local v7    # "mEnterpriseResponseData":Landroid/app/enterprise/EnterpriseResponseData;
    .restart local v13    # "stopStatus":I
    :cond_1b
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 541
    :cond_1c
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 556
    .end local v7    # "mEnterpriseResponseData":Landroid/app/enterprise/EnterpriseResponseData;
    .end local v13    # "stopStatus":I
    :cond_1d
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 559
    :cond_1e
    const/4 v5, 0x0

    goto :goto_6

    .line 578
    .restart local v8    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v14    # "vendorName":Ljava/lang/String;
    .restart local v15    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_1f
    :try_start_5
    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->removeConnection(Ljava/lang/String;)I

    move-result v9

    goto :goto_7

    .line 591
    :cond_20
    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "remove vpn profile : removeConnection failed for profile = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method public setAutoRetryOnConnectionError(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Z)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 8
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    const/4 v5, 0x0

    .line 2084
    const/4 v0, -0x1

    .line 2085
    .local v0, "adminId":I
    const/4 v3, 0x0

    .line 2086
    .local v3, "success":Z
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 2087
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 2088
    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 2090
    if-nez p1, :cond_1

    .line 2091
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "setAutoRetryOnConnectionError : vpnContext is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_0
    :goto_0
    return-object v2

    .line 2095
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_1
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 2096
    if-eqz p2, :cond_0

    .line 2098
    :try_start_0
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v5

    if-nez v5, :cond_0

    .line 2101
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v4

    .line 2102
    .local v4, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v4, :cond_2

    .line 2103
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "setAutoRetryOnConnectionError : VPN Service not started"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2110
    .end local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v1

    .line 2111
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAutoRetryOnConnectionError : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    const/4 v2, 0x0

    goto :goto_0

    .line 2106
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_2
    :try_start_1
    invoke-interface {v4, p2, p3}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->setAutoRetryOnConnectionError(Ljava/lang/String;Z)Z

    move-result v3

    .line 2107
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAutoRetryOnConnectionError : success = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 2109
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setCACertificate(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;[B)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 8
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "pkcs12Blob"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            "[B)",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 891
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 892
    .local v0, "adminId":I
    const/4 v3, 0x0

    .line 893
    .local v3, "success":Z
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 894
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 895
    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 897
    :try_start_0
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 912
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :goto_0
    return-object v2

    .line 900
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v4

    .line 901
    .local v4, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v4, :cond_1

    .line 902
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "setting CACertificate : Service is not started"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 908
    .end local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v1

    .line 909
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setting CACertificate : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    const/4 v2, 0x0

    goto :goto_0

    .line 905
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_1
    :try_start_1
    invoke-interface {v4, p2, p3}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->setCACertificate(Ljava/lang/String;[B)Z

    move-result v3

    .line 906
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 907
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setServerCertValidationUserAcceptanceCriteria(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;ZLjava/util/List;I)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 8
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "enableValidation"    # Z
    .param p4, "condition"    # Ljava/util/List;
    .param p5, "frequency"    # I

    .prologue
    const/4 v5, 0x0

    .line 2053
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 2054
    .local v0, "adminId":I
    const/4 v3, 0x0

    .line 2055
    .local v3, "success":Z
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 2056
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 2057
    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 2058
    if-eqz p2, :cond_0

    .line 2060
    :try_start_0
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 2077
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_0
    :goto_0
    return-object v2

    .line 2063
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v4

    .line 2064
    .local v4, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v4, :cond_2

    .line 2065
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "setting server cert validation : VPN Service not started"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2072
    .end local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v1

    .line 2073
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setting server cert validation : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    const/4 v2, 0x0

    goto :goto_0

    .line 2068
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_2
    :try_start_1
    invoke-interface {v4, p2, p3, p4, p5}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->setServerCertValidationUserAcceptanceCriteria(Ljava/lang/String;ZLjava/util/List;I)Z

    move-result v3

    .line 2070
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 2071
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public declared-synchronized setUserCertificate(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;[BLjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 8
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "pkcs12Blob"    # [B
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 838
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 839
    .local v0, "adminId":I
    const/4 v3, 0x0

    .line 840
    .local v3, "success":Z
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 841
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 842
    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    if-eqz p2, :cond_0

    .line 845
    :try_start_1
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 862
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v2

    .line 848
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_1
    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v4

    .line 849
    .local v4, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v4, :cond_2

    .line 850
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "setting user certificate : VPN Service not started"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 857
    .end local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v1

    .line 858
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setting user certificate : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 859
    const/4 v2, 0x0

    goto :goto_0

    .line 853
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_2
    :try_start_4
    invoke-interface {v4, p2, p3, p4}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->setUserCertificate(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v3

    .line 855
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 856
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 838
    .end local v0    # "adminId":I
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    .end local v3    # "success":Z
    .end local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public setVpnFrameworkSystemProperty(Ljava/lang/String;)V
    .locals 3
    .param p1, "currentFramework"    # Ljava/lang/String;

    .prologue
    .line 4087
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4089
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    if-eqz v1, :cond_0

    .line 4090
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const-string v2, "com.sec.enterprise.knox.KNOX_GENERIC_VPN"

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfAdminHasVpnPermission(ILjava/lang/String;)Z

    .line 4095
    const-string v1, "net.vpn.framework"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4096
    :cond_0
    return-void
.end method

.method public declared-synchronized setVpnModeOfOperation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;I)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 8
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "vpnMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 2007
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 2008
    .local v0, "adminId":I
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 2009
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    sget v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 2010
    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2011
    if-ltz p3, :cond_0

    if-le p3, v7, :cond_1

    .line 2026
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v2

    .line 2015
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v4

    .line 2016
    .local v4, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-eqz v4, :cond_0

    .line 2017
    invoke-interface {v4, p2, p3}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->setVpnModeOfOperation(Ljava/lang/String;I)I

    move-result v3

    .line 2018
    .local v3, "ret":I
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setVpnModeOfOperation : profileName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 2020
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2022
    .end local v3    # "ret":I
    .end local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v1

    .line 2023
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setting vpn mode : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2024
    const/4 v2, 0x0

    goto :goto_0

    .line 2007
    .end local v0    # "adminId":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized startConnection(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 17
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 942
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget v4, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 943
    .local v4, "adminId":I
    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "startConnection API called for profileName = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    new-instance v10, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v10}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 945
    .local v10, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    sget v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 946
    const/4 v14, 0x1

    const/4 v15, 0x2

    invoke-virtual {v10, v14, v15}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 948
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 949
    .local v9, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v9, :cond_1

    .line 987
    .end local v10    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v10

    .line 954
    .restart local v10    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v14

    if-eqz v14, :cond_2

    .line 955
    const/4 v14, 0x1

    const/16 v15, 0x8

    invoke-virtual {v10, v14, v15}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 983
    :catch_0
    move-exception v5

    .line 984
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "starting vpn connection : Failure at "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 985
    const/4 v10, 0x0

    goto :goto_0

    .line 958
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v13

    .line 959
    .local v13, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v13, :cond_3

    .line 960
    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "starting vpn connection : Mocana Service is not started"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    const/4 v10, 0x0

    goto :goto_0

    .line 964
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVPNTransitionState(Ljava/lang/String;)I

    move-result v11

    .line 965
    .local v11, "state":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getActivate(Ljava/lang/String;)I

    move-result v3

    .line 966
    .local v3, "active":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVpnConnectionType(Ljava/lang/String;)I

    move-result v12

    .line 967
    .local v12, "vpnConnectionType":I
    const/4 v14, 0x1

    if-eq v11, v14, :cond_4

    const/4 v14, 0x5

    if-ne v11, v14, :cond_5

    :cond_4
    sget v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    if-ne v3, v14, :cond_6

    :cond_5
    const/4 v7, 0x1

    .line 968
    .local v7, "notAllowed":Z
    :goto_1
    if-nez v12, :cond_7

    const/4 v6, 0x1

    .line 969
    .local v6, "keepOn":Z
    :goto_2
    const/4 v14, 0x1

    if-ne v12, v14, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->processRunCheck(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_8

    const/4 v8, 0x1

    .line 971
    .local v8, "onDemand":Z
    :goto_3
    if-eqz v7, :cond_9

    .line 972
    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "not allowd state for starting a vpn : profileName = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": state = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    const/4 v14, 0x1

    const/16 v15, 0xc

    invoke-virtual {v10, v14, v15}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 942
    .end local v3    # "active":I
    .end local v4    # "adminId":I
    .end local v6    # "keepOn":Z
    .end local v7    # "notAllowed":Z
    .end local v8    # "onDemand":Z
    .end local v9    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v10    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .end local v11    # "state":I
    .end local v12    # "vpnConnectionType":I
    .end local v13    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    .line 967
    .restart local v3    # "active":I
    .restart local v4    # "adminId":I
    .restart local v9    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v10    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v11    # "state":I
    .restart local v12    # "vpnConnectionType":I
    .restart local v13    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 968
    .restart local v7    # "notAllowed":Z
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 969
    .restart local v6    # "keepOn":Z
    :cond_8
    const/4 v8, 0x0

    goto :goto_3

    .line 977
    .restart local v8    # "onDemand":Z
    :cond_9
    :try_start_4
    sget-boolean v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    if-eqz v14, :cond_a

    sget-object v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "keepOn =  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " / onDemand = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_a
    if-nez v6, :cond_b

    if-eqz v8, :cond_0

    .line 980
    :cond_b
    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->startConnection(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 981
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized stopConnection(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 992
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 993
    .local v0, "adminId":I
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stopConnection API called for profileName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 995
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    sget v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->VPN_RETURN_INT_ERROR:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 996
    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 998
    :try_start_1
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 1012
    :goto_0
    monitor-exit p0

    return-object v2

    .line 1001
    :cond_0
    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v3

    .line 1002
    .local v3, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v3, :cond_1

    .line 1003
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "stopping vpn connection : Service is not started"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1008
    .end local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v1

    .line 1009
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stopping vpn connection : Failure at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 992
    .end local v0    # "adminId":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1006
    .restart local v0    # "adminId":I
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_1
    :try_start_4
    invoke-interface {v3, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->stopConnection(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1007
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method
