.class Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;
.super Ljava/lang/Object;
.source "MultiWindowManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackDeathRecipient"
.end annotation


# instance fields
.field mCallback:Landroid/os/IBinder;

.field mToken:Landroid/os/IBinder;

.field mType:I

.field final synthetic this$0:Lcom/android/server/am/MultiWindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowManagerService;Landroid/os/IBinder;ILandroid/os/IBinder;)V
    .locals 0
    .param p2, "callback"    # Landroid/os/IBinder;
    .param p3, "type"    # I
    .param p4, "token"    # Landroid/os/IBinder;

    .prologue
    .line 850
    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 851
    iput-object p2, p0, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;->mCallback:Landroid/os/IBinder;

    .line 852
    iput p3, p0, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;->mType:I

    .line 853
    iput-object p4, p0, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;->mToken:Landroid/os/IBinder;

    .line 854
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 858
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;->mCallback:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->unRegisterCallback(Landroid/os/IBinder;)Z

    .line 859
    return-void
.end method
