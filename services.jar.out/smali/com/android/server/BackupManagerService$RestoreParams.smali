.class Lcom/android/server/BackupManagerService$RestoreParams;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreParams"
.end annotation


# instance fields
.field public dirName:Ljava/lang/String;

.field public filterSet:[Ljava/lang/String;

.field public needFullBackup:Z

.field public observer:Landroid/app/backup/IRestoreObserver;

.field public pkgInfo:Landroid/content/pm/PackageInfo;

.field public pmToken:I

.field final synthetic this$0:Lcom/android/server/BackupManagerService;

.field public token:J

.field public transport:Lcom/android/internal/backup/IBackupTransport;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;IZ)V
    .locals 1
    .param p2, "_transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "_dirName"    # Ljava/lang/String;
    .param p4, "_obs"    # Landroid/app/backup/IRestoreObserver;
    .param p5, "_token"    # J
    .param p7, "_pkg"    # Landroid/content/pm/PackageInfo;
    .param p8, "_pmToken"    # I
    .param p9, "_needFullBackup"    # Z

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/server/BackupManagerService$RestoreParams;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput-object p2, p0, Lcom/android/server/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    .line 376
    iput-object p3, p0, Lcom/android/server/BackupManagerService$RestoreParams;->dirName:Ljava/lang/String;

    .line 377
    iput-object p4, p0, Lcom/android/server/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    .line 378
    iput-wide p5, p0, Lcom/android/server/BackupManagerService$RestoreParams;->token:J

    .line 379
    iput-object p7, p0, Lcom/android/server/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    .line 380
    iput p8, p0, Lcom/android/server/BackupManagerService$RestoreParams;->pmToken:I

    .line 381
    iput-boolean p9, p0, Lcom/android/server/BackupManagerService$RestoreParams;->needFullBackup:Z

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    .line 383
    return-void
.end method

.method constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;JZ)V
    .locals 2
    .param p2, "_transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "_dirName"    # Ljava/lang/String;
    .param p4, "_obs"    # Landroid/app/backup/IRestoreObserver;
    .param p5, "_token"    # J
    .param p7, "_needFullBackup"    # Z

    .prologue
    const/4 v1, 0x0

    .line 386
    iput-object p1, p0, Lcom/android/server/BackupManagerService$RestoreParams;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput-object p2, p0, Lcom/android/server/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    .line 388
    iput-object p3, p0, Lcom/android/server/BackupManagerService$RestoreParams;->dirName:Ljava/lang/String;

    .line 389
    iput-object p4, p0, Lcom/android/server/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    .line 390
    iput-wide p5, p0, Lcom/android/server/BackupManagerService$RestoreParams;->token:J

    .line 391
    iput-object v1, p0, Lcom/android/server/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    .line 392
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BackupManagerService$RestoreParams;->pmToken:I

    .line 393
    iput-boolean p7, p0, Lcom/android/server/BackupManagerService$RestoreParams;->needFullBackup:Z

    .line 394
    iput-object v1, p0, Lcom/android/server/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    .line 395
    return-void
.end method

.method constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;J[Ljava/lang/String;Z)V
    .locals 1
    .param p2, "_transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "_dirName"    # Ljava/lang/String;
    .param p4, "_obs"    # Landroid/app/backup/IRestoreObserver;
    .param p5, "_token"    # J
    .param p7, "_filterSet"    # [Ljava/lang/String;
    .param p8, "_needFullBackup"    # Z

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/server/BackupManagerService$RestoreParams;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    iput-object p2, p0, Lcom/android/server/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    .line 400
    iput-object p3, p0, Lcom/android/server/BackupManagerService$RestoreParams;->dirName:Ljava/lang/String;

    .line 401
    iput-object p4, p0, Lcom/android/server/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    .line 402
    iput-wide p5, p0, Lcom/android/server/BackupManagerService$RestoreParams;->token:J

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    .line 404
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BackupManagerService$RestoreParams;->pmToken:I

    .line 405
    iput-boolean p8, p0, Lcom/android/server/BackupManagerService$RestoreParams;->needFullBackup:Z

    .line 406
    iput-object p7, p0, Lcom/android/server/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    .line 407
    return-void
.end method