.class Lcom/android/server/wm/Task;
.super Ljava/lang/Object;
.source "Task.java"


# instance fields
.field final mAppTokens:Lcom/android/server/wm/AppTokenList;

.field mStack:Lcom/android/server/wm/TaskStack;

.field private mTaskOrderInfo:Lcom/android/server/wm/WindowManagerService$TaskOrderInfo;

.field final mUserId:I

.field final taskId:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/TaskStack;I)V
    .locals 3
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p3, "userId"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/android/server/wm/AppTokenList;

    invoke-direct {v0}, Lcom/android/server/wm/AppTokenList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 34
    iget v0, p1, Lcom/android/server/wm/AppWindowToken;->groupId:I

    iput v0, p0, Lcom/android/server/wm/Task;->taskId:I

    .line 35
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    iput-object p2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 37
    iput p3, p0, Lcom/android/server/wm/Task;->mUserId:I

    .line 39
    new-instance v0, Lcom/android/server/wm/WindowManagerService$TaskOrderInfo;

    iget v1, p0, Lcom/android/server/wm/Task;->taskId:I

    iget-object v2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v2, v2, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService$TaskOrderInfo;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrderInfo:Lcom/android/server/wm/WindowManagerService$TaskOrderInfo;

    .line 41
    return-void
.end method


# virtual methods
.method addAppToken(ILcom/android/server/wm/AppWindowToken;)V
    .locals 1
    .param p1, "addPos"    # I
    .param p2, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 49
    return-void
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    return-object v0
.end method

.method public getTaskOrderInfo()Lcom/android/server/wm/WindowManagerService$TaskOrderInfo;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrderInfo:Lcom/android/server/wm/WindowManagerService$TaskOrderInfo;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    iput v1, v0, Lcom/android/server/wm/WindowManagerService$TaskOrderInfo;->stackId:I

    .line 64
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrderInfo:Lcom/android/server/wm/WindowManagerService$TaskOrderInfo;

    return-object v0
.end method

.method removeAppToken(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 5
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 52
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 53
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 54
    const/16 v2, 0x791b

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/wm/Task;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "removeAppToken: last token"

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 56
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/TaskStack;->removeTask(Lcom/android/server/wm/Task;)V

    .line 59
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " appTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
