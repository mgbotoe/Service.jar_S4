.class Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;
.super Ljava/lang/Object;
.source "ClippedDataPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12

    const/4 v6, -0x1

    if-ne p2, v6, :cond_f1

    const-string v6, "ClipboardServiceEx"

    const-string v7, "pressed OK"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v6

    if-nez v6, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v1

    const/4 v5, 0x0

    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_3e

    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clear button touched... count :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    const/4 v4, 0x0

    :goto_3f
    if-ge v4, v1, :cond_a4

    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_69

    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCbm.getDataListSize() :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v8, v8, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v8}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    :try_start_69
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #calls: Lcom/android/server/sec/ClippedDataPickerDialog;->isCheckProtectedItem(I)Z
    invoke-static {v6, v5}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$200(Lcom/android/server/sec/ClippedDataPickerDialog;I)Z

    move-result v6

    if-eqz v6, :cond_78

    add-int/lit8 v5, v5, 0x1

    :goto_75
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    :cond_78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    invoke-virtual {v6, v2}, Lcom/android/server/sec/ClippedDataPickerGridView;->setDeletedItems(Ljava/util/ArrayList;)V

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;
    invoke-static {v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$300(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/IClipboardDataUiEvent;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/sec/clipboard/IClipboardDataUiEvent;->removeItem(I)V

    sget v6, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I

    add-int/lit8 v6, v6, -0x1

    sput v6, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_9e} :catch_9f

    goto :goto_75

    :catch_9f
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_75

    :cond_a4
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mIsDarkTheme:Z
    invoke-static {v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$400(Lcom/android/server/sec/ClippedDataPickerDialog;)Z

    move-result v6

    if-eqz v6, :cond_e2

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->access$500(Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x1030128

    invoke-direct {v0, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :goto_bc
    const v6, 0x10408dc

    const/4 v7, 0x0

    invoke-static {v0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v6

    if-nez v6, :cond_14

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    goto/16 :goto_14

    :cond_e2
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->access$500(Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x103012b

    invoke-direct {v0, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_bc

    :cond_f1
    const/4 v6, -0x2

    if-ne p2, v6, :cond_fd

    const-string v6, "ClipboardServiceEx"

    const-string v7, "pressed CANCEL"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    :cond_fd
    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pressed invalid button. arg1 :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14
.end method
