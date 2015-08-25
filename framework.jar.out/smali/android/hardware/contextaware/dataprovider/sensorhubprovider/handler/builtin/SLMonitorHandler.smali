.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/SLMonitorHandler;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;
.source "SLMonitorHandler.java"


# static fields
.field private static volatile instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/SLMonitorHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/SLMonitorHandler;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/SLMonitorHandler;->instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/SLMonitorHandler;

    if-nez v0, :cond_1

    .line 46
    const-class v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/SLMonitorHandler;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/SLMonitorHandler;->instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/SLMonitorHandler;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/SLMonitorHandler;

    invoke-direct {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/SLMonitorHandler;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/SLMonitorHandler;->instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/SLMonitorHandler;

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/SLMonitorHandler;->instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/SLMonitorHandler;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected final disable()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method protected final enable()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method protected final getModeList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 65
    .local v0, "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/lang/String;>;"
    sget-object v1, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SL_MONITOR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v1}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v1, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SL_MONITOR_EXTENDED_INTERRUPT:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v1}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v1, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVE_TIME:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v1}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    return-object v0
.end method
