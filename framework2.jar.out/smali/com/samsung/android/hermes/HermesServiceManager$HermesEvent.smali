.class public Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;
.super Ljava/lang/Object;
.source "HermesServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hermes/HermesServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HermesEvent"
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private endTime:J

.field private location:Ljava/lang/String;

.field private startTime:J

.field final synthetic this$0:Lcom/samsung/android/hermes/HermesServiceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hermes/HermesServiceManager;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .param p6, "location"    # Ljava/lang/String;
    .param p7, "description"    # Ljava/lang/String;

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 897
    iput-object p1, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->this$0:Lcom/samsung/android/hermes/HermesServiceManager;

    .line 898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 888
    iput-wide v1, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->startTime:J

    .line 890
    iput-wide v1, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->endTime:J

    .line 892
    iput-object v0, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->location:Ljava/lang/String;

    .line 894
    iput-object v0, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->description:Ljava/lang/String;

    .line 899
    iput-wide p2, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->startTime:J

    .line 900
    iput-wide p4, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->endTime:J

    .line 901
    iput-object p6, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->location:Ljava/lang/String;

    .line 902
    iput-object p7, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->description:Ljava/lang/String;

    .line 903
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 910
    iget-wide v0, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->endTime:J

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 906
    iget-wide v0, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->startTime:J

    return-wide v0
.end method
