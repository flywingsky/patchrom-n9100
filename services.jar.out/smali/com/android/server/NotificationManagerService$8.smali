.class Lcom/android/server/NotificationManagerService$8;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NotificationManagerService;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IIIZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;

.field final synthetic val$id:I

.field final synthetic val$mustHaveFlags:I

.field final synthetic val$mustNotHaveFlags:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$sendDelete:Z

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;Ljava/lang/String;IIIILjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 2611
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/NotificationManagerService$8;->val$pkg:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/NotificationManagerService$8;->val$id:I

    iput p4, p0, Lcom/android/server/NotificationManagerService$8;->val$userId:I

    iput p5, p0, Lcom/android/server/NotificationManagerService$8;->val$mustHaveFlags:I

    iput p6, p0, Lcom/android/server/NotificationManagerService$8;->val$mustNotHaveFlags:I

    iput-object p7, p0, Lcom/android/server/NotificationManagerService$8;->val$tag:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/android/server/NotificationManagerService$8;->val$sendDelete:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 2616
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v3

    if-ne v3, v9, :cond_0

    .line 2617
    const/16 v3, 0xabf

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/NotificationManagerService$8;->val$pkg:Ljava/lang/String;

    aput-object v5, v4, v6

    iget v5, p0, Lcom/android/server/NotificationManagerService$8;->val$id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    iget v5, p0, Lcom/android/server/NotificationManagerService$8;->val$userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget v5, p0, Lcom/android/server/NotificationManagerService$8;->val$mustHaveFlags:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    iget v5, p0, Lcom/android/server/NotificationManagerService$8;->val$mustNotHaveFlags:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2624
    :goto_0
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$300(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 2625
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v5, p0, Lcom/android/server/NotificationManagerService$8;->val$pkg:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/NotificationManagerService$8;->val$tag:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/NotificationManagerService$8;->val$id:I

    iget v8, p0, Lcom/android/server/NotificationManagerService$8;->val$userId:I

    # invokes: Lcom/android/server/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)I
    invoke-static {v3, v5, v6, v7, v8}, Lcom/android/server/NotificationManagerService;->access$4400(Lcom/android/server/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    .line 2626
    .local v0, "index":I
    if-ltz v0, :cond_5

    .line 2627
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$300(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 2629
    .local v2, "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-virtual {v2}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->flags:I

    iget v5, p0, Lcom/android/server/NotificationManagerService$8;->val$mustHaveFlags:I

    and-int/2addr v3, v5

    iget v5, p0, Lcom/android/server/NotificationManagerService$8;->val$mustHaveFlags:I

    if-eq v3, v5, :cond_1

    .line 2630
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2668
    .end local v2    # "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    :goto_1
    return-void

    .line 2620
    .end local v0    # "index":I
    :cond_0
    const/16 v3, 0xabf

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/NotificationManagerService$8;->val$pkg:Ljava/lang/String;

    aput-object v5, v4, v6

    iget v5, p0, Lcom/android/server/NotificationManagerService$8;->val$id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/android/server/NotificationManagerService$8;->val$tag:Ljava/lang/String;

    aput-object v5, v4, v7

    iget v5, p0, Lcom/android/server/NotificationManagerService$8;->val$userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    iget v5, p0, Lcom/android/server/NotificationManagerService$8;->val$mustHaveFlags:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x5

    iget v6, p0, Lcom/android/server/NotificationManagerService$8;->val$mustNotHaveFlags:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_0

    .line 2632
    .restart local v0    # "index":I
    .restart local v2    # "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->flags:I

    iget v5, p0, Lcom/android/server/NotificationManagerService$8;->val$mustNotHaveFlags:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_2

    .line 2634
    iget-object v3, v2, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->knoxFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eq v3, v9, :cond_2

    .line 2636
    monitor-exit v4

    goto :goto_1

    .line 2667
    .end local v0    # "index":I
    .end local v2    # "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 2640
    .restart local v0    # "index":I
    .restart local v2    # "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$300(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2643
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    iget-boolean v5, p0, Lcom/android/server/NotificationManagerService$8;->val$sendDelete:Z

    iget v6, p0, Lcom/android/server/NotificationManagerService$8;->val$userId:I

    # invokes: Lcom/android/server/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;ZI)V
    invoke-static {v3, v2, v5, v6}, Lcom/android/server/NotificationManagerService;->access$5300(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;ZI)V

    .line 2645
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateLightsLocked()V
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$2100(Lcom/android/server/NotificationManagerService;)V

    .line 2650
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mSystemReady:Z
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$1200(Lcom/android/server/NotificationManagerService;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2651
    const-string v3, "com.android.phone"

    iget-object v5, p0, Lcom/android/server/NotificationManagerService$8;->val$pkg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.android.mms"

    iget-object v5, p0, Lcom/android/server/NotificationManagerService$8;->val$pkg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "KOR"

    const-string v5, "CHN"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "com.skt.prod.dialer"

    iget-object v5, p0, Lcom/android/server/NotificationManagerService$8;->val$pkg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2653
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2656
    .local v1, "notificationRemovedIntent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->missedCount:I

    if-lez v3, :cond_4

    .line 2657
    const-string v3, "Notification"

    invoke-virtual {v2}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2658
    const-string v3, "pkg"

    iget-object v5, p0, Lcom/android/server/NotificationManagerService$8;->val$pkg:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2659
    const-string v3, "id"

    iget v5, p0, Lcom/android/server/NotificationManagerService$8;->val$id:I

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2662
    :cond_4
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$8;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/server/NotificationManagerService$8;->val$userId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2667
    .end local v1    # "notificationRemovedIntent":Landroid/content/Intent;
    .end local v2    # "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_5
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method
