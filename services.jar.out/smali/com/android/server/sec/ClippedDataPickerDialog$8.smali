.class Lcom/android/server/sec/ClippedDataPickerDialog$8;
.super Ljava/lang/Object;
.source "ClippedDataPickerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/ClippedDataPickerDialog;->onMenuItemSelected(ILandroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

.field final synthetic val$currentMode:I

.field final synthetic val$data:Landroid/sec/clipboard/data/ClipboardData;


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/data/ClipboardData;I)V
    .locals 0

    .prologue
    .line 1310
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$8;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iput-object p2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$8;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    iput p3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$8;->val$currentMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 1313
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v6

    .line 1314
    .local v6, "mFileHelper":Landroid/sec/clipboard/util/FileHelper;
    const/4 v2, 0x0

    .line 1315
    .local v2, "filePath":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$8;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 1316
    .local v0, "bitData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v7

    .line 1318
    .local v7, "path":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1320
    .local v5, "imageIntent":Landroid/content/Intent;
    iget v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog$8;->val$currentMode:I

    if-nez v8, :cond_1

    .line 1321
    invoke-virtual {v6}, Landroid/sec/clipboard/util/FileHelper;->getSDCardPath()Ljava/lang/String;

    move-result-object v2

    .line 1322
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "imageIntent":Landroid/content/Intent;
    const-string v8, "com.samsung.clipboardsaveservice.CLIPBOARD_SAVE_RECEIVER"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1328
    .restart local v5    # "imageIntent":Landroid/content/Intent;
    :goto_0
    if-eqz v5, :cond_0

    iget-object v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog$8;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$000(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/content/Context;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1329
    const/16 v8, 0x20

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1330
    const-string v8, "copyPath"

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1331
    const-string v8, "pastePath"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/Clipboard/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1332
    const-string v8, "darkTheme"

    iget-object v9, p0, Lcom/android/server/sec/ClippedDataPickerDialog$8;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mIsDarkTheme:Z
    invoke-static {v9}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$500(Lcom/android/server/sec/ClippedDataPickerDialog;)Z

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1334
    iget-object v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog$8;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v8}, Lcom/android/server/sec/ClippedDataPickerDialog;->isKnoxTwoEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1335
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1336
    .local v3, "ident":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 1337
    .local v1, "currUser":I
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1338
    iget-object v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog$8;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$000(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/content/Context;

    move-result-object v8

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, v5, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1339
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UID :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    .end local v1    # "currUser":I
    .end local v3    # "ident":J
    :cond_0
    :goto_1
    return-void

    .line 1324
    :cond_1
    const-string v2, "/mnt/sdcard"

    .line 1325
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "imageIntent":Landroid/content/Intent;
    const-string/jumbo v8, "sec_container_1.com.samsung.clipboardsaveservice.CLIPBOARD_SAVE_RECEIVER"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v5    # "imageIntent":Landroid/content/Intent;
    goto :goto_0

    .line 1342
    :cond_2
    iget-object v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog$8;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$000(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method
