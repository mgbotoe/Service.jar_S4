.class Lcom/android/server/display/WifiDisplayAdapter$12;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayAdapter;->startSourceRTSP(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;

.field final synthetic val$reqDevType:I


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput p2, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->val$reqDevType:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/WifiDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wfd"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/wfd/WfdManager;

    if-eqz v1, :cond_22

    const-string v2, "WifiDisplayAdapter"

    const-string v3, "AllShare Cast is turned on..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->val$reqDevType:I

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {v1, v2}, Lcom/samsung/wfd/WfdManager;->setWfdEnabled(I)Z

    invoke-virtual {v1}, Lcom/samsung/wfd/WfdManager;->sendToWfdStartRTSP()Z

    :goto_21
    return-void

    :cond_22
    const-string v2, "WifiDisplayAdapter"

    const-string v3, "WfdManager is null !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    goto :goto_21

    :catch_2a
    move-exception v0

    const-string v2, "WifiDisplayAdapter"

    const-string v3, "startSourceRTSP failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method
