.class public final Lcom/android/server/power/PowerManagerService$TimeMeasurement;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "TimeMeasurement"
.end annotation


# instance fields
.field mIsPrinted:Z

.field mLapTime:J

.field mStartTime:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 6065
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6066
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->mLapTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->mStartTime:J

    .line 6067
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->mIsPrinted:Z

    .line 6068
    return-void
.end method


# virtual methods
.method printLapTime(Ljava/lang/String;J)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "limitTime"    # J

    .prologue
    .line 6083
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->mLapTime:J

    sub-long v0, v2, v4

    .line 6084
    .local v0, "executionTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->mLapTime:J

    .line 6086
    cmp-long v2, v0, p2

    if-ltz v2, :cond_0

    .line 6087
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Excessive delay in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6089
    :cond_0
    return-void
.end method

.method printTotalTime(Ljava/lang/String;J)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "limitTime"    # J

    .prologue
    .line 6071
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->mIsPrinted:Z

    if-nez v2, :cond_1

    .line 6072
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->mStartTime:J

    sub-long v0, v2, v4

    .line 6074
    .local v0, "executionTime":J
    cmp-long v2, v0, p2

    if-ltz v2, :cond_0

    .line 6075
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Excessive delay in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6078
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->mIsPrinted:Z

    .line 6080
    .end local v0    # "executionTime":J
    :cond_1
    return-void
.end method

.method resetTime()V
    .locals 2

    .prologue
    .line 6093
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->mLapTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->mStartTime:J

    .line 6094
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->mIsPrinted:Z

    .line 6095
    return-void
.end method
