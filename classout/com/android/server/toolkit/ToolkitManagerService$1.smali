.class Lcom/android/server/toolkit/ToolkitManagerService$1;
.super Landroid/os/Handler;
.source "ToolkitManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/toolkit/ToolkitManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/toolkit/ToolkitManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/toolkit/ToolkitManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    const/4 v1, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_108

    :cond_6
    :goto_6
    :pswitch_6
    return-void

    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/toolkit/ToolkitManagerService$ReceiveData;

    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    iget-object v3, v1, Lcom/android/server/toolkit/ToolkitManagerService$ReceiveData;->mIntent:Landroid/content/Intent;

    iget v4, v1, Lcom/android/server/toolkit/ToolkitManagerService$ReceiveData;->mType:I

    iget-object v5, v1, Lcom/android/server/toolkit/ToolkitManagerService$ReceiveData;->mBundle:Landroid/os/Bundle;

    #calls: Lcom/android/server/toolkit/ToolkitManagerService;->SendData(Landroid/content/Intent;ILandroid/os/Bundle;)Z
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/toolkit/ToolkitManagerService;->access$000(Lcom/android/server/toolkit/ToolkitManagerService;Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    const/4 v3, 0x1

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v5, 0x3e8

    #calls: Lcom/android/server/toolkit/ToolkitManagerService;->SendMessage(ILjava/lang/Object;I)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/toolkit/ToolkitManagerService;->access$100(Lcom/android/server/toolkit/ToolkitManagerService;ILjava/lang/Object;I)V

    goto :goto_6

    :pswitch_24
    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mTabWindow:Lcom/android/server/toolkit/ToolkitTabDialog;
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$200(Lcom/android/server/toolkit/ToolkitManagerService;)Lcom/android/server/toolkit/ToolkitTabDialog;

    move-result-object v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mTabWindow:Lcom/android/server/toolkit/ToolkitTabDialog;
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$200(Lcom/android/server/toolkit/ToolkitManagerService;)Lcom/android/server/toolkit/ToolkitTabDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/toolkit/ToolkitTabDialog;->dismiss()V

    :cond_35
    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    new-instance v3, Lcom/android/server/toolkit/ToolkitTabDialog;

    iget-object v4, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/toolkit/ToolkitManagerService;->access$300(Lcom/android/server/toolkit/ToolkitManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/toolkit/ToolkitTabDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/server/toolkit/ToolkitManagerService;->mTabWindow:Lcom/android/server/toolkit/ToolkitTabDialog;
    invoke-static {v2, v3}, Lcom/android/server/toolkit/ToolkitManagerService;->access$202(Lcom/android/server/toolkit/ToolkitManagerService;Lcom/android/server/toolkit/ToolkitTabDialog;)Lcom/android/server/toolkit/ToolkitTabDialog;

    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$400(Lcom/android/server/toolkit/ToolkitManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_72

    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$400(Lcom/android/server/toolkit/ToolkitManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_72

    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mTabWindow:Lcom/android/server/toolkit/ToolkitTabDialog;
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$200(Lcom/android/server/toolkit/ToolkitManagerService;)Lcom/android/server/toolkit/ToolkitTabDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/toolkit/ToolkitManagerService;->access$400(Lcom/android/server/toolkit/ToolkitManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/toolkit/ToolkitTabDialog;->setPackageList(Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mTabWindow:Lcom/android/server/toolkit/ToolkitTabDialog;
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$200(Lcom/android/server/toolkit/ToolkitManagerService;)Lcom/android/server/toolkit/ToolkitTabDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/toolkit/ToolkitTabDialog;->show()V

    goto :goto_6

    :cond_72
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.MULTIWINDOW_TOOLKIT_INIT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.REQUEST_WINDOW_MODE"

    const v3, 0x2002010

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x3000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$300(Lcom/android/server/toolkit/ToolkitManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v2, "ToolkitManagerService"

    const-string v3, "The empty app is run."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :pswitch_9d
    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mTabWindow:Lcom/android/server/toolkit/ToolkitTabDialog;
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$200(Lcom/android/server/toolkit/ToolkitManagerService;)Lcom/android/server/toolkit/ToolkitTabDialog;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mTabWindow:Lcom/android/server/toolkit/ToolkitTabDialog;
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$200(Lcom/android/server/toolkit/ToolkitManagerService;)Lcom/android/server/toolkit/ToolkitTabDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/toolkit/ToolkitTabDialog;->destroy()V

    goto/16 :goto_6

    :pswitch_b0
    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mTabWindow:Lcom/android/server/toolkit/ToolkitTabDialog;
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$200(Lcom/android/server/toolkit/ToolkitManagerService;)Lcom/android/server/toolkit/ToolkitTabDialog;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$400(Lcom/android/server/toolkit/ToolkitManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_e0

    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mTabWindow:Lcom/android/server/toolkit/ToolkitTabDialog;
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$200(Lcom/android/server/toolkit/ToolkitManagerService;)Lcom/android/server/toolkit/ToolkitTabDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/toolkit/ToolkitManagerService;->access$400(Lcom/android/server/toolkit/ToolkitManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/toolkit/ToolkitTabDialog;->setPackageList(Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mShowingTab:Z
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$500(Lcom/android/server/toolkit/ToolkitManagerService;)Z

    move-result v2

    if-eqz v2, :cond_e0

    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mTabWindow:Lcom/android/server/toolkit/ToolkitTabDialog;
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$200(Lcom/android/server/toolkit/ToolkitManagerService;)Lcom/android/server/toolkit/ToolkitTabDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/toolkit/ToolkitTabDialog;->show()V

    :cond_e0
    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$400(Lcom/android/server/toolkit/ToolkitManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_f4

    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$400(Lcom/android/server/toolkit/ToolkitManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_6

    :cond_f4
    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mShowingTab:Z
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$500(Lcom/android/server/toolkit/ToolkitManagerService;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService$1;->this$0:Lcom/android/server/toolkit/ToolkitManagerService;

    #getter for: Lcom/android/server/toolkit/ToolkitManagerService;->mTabWindow:Lcom/android/server/toolkit/ToolkitTabDialog;
    invoke-static {v2}, Lcom/android/server/toolkit/ToolkitManagerService;->access$200(Lcom/android/server/toolkit/ToolkitManagerService;)Lcom/android/server/toolkit/ToolkitTabDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/toolkit/ToolkitTabDialog;->destroy()V

    goto/16 :goto_6

    nop

    :pswitch_data_108
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_24
        :pswitch_9d
        :pswitch_b0
    .end packed-switch
.end method
