.class Lcom/android/server/DrmEventService$5;
.super Ljava/lang/Object;
.source "DrmEventService.java"

# interfaces
.implements Landroid/drm/DrmManagerClient$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DrmEventService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DrmEventService;


# direct methods
.method constructor <init>(Lcom/android/server/DrmEventService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/DrmEventService$5;->this$0:Lcom/android/server/DrmEventService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Landroid/drm/DrmManagerClient;Landroid/drm/DrmEvent;)V
    .registers 15

    const/4 v11, 0x1

    sget-boolean v8, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v8, :cond_21

    const-string v8, "DrmEventService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wap push receiver:acquireDrmInfo In"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/drm/DrmEvent;->getType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    invoke-virtual {p2}, Landroid/drm/DrmEvent;->getType()I

    move-result v8

    const/16 v9, 0x3ea

    if-ne v8, v9, :cond_18e

    const/4 v4, 0x0

    sget-boolean v8, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v8, :cond_4a

    const-string v8, "DrmEventService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wap push receiver:acquireDrmInfo In  1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/drm/DrmEvent;->getType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    const-string v8, "drm_info_status_object"

    invoke-virtual {p2, v8}, Landroid/drm/DrmEvent;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/drm/DrmInfoStatus;

    if-eqz v6, :cond_114

    iget-object v8, v6, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    if-eqz v8, :cond_114

    iget-object v8, p0, Lcom/android/server/DrmEventService$5;->this$0:Lcom/android/server/DrmEventService;

    new-instance v9, Ljava/lang/String;

    iget-object v10, v6, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    invoke-virtual {v10}, Landroid/drm/ProcessedData;->getData()[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    iput-object v9, v8, Lcom/android/server/DrmEventService;->contentId:Ljava/lang/String;

    sget-boolean v8, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v8, :cond_87

    const-string v8, "DrmEventService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wap push receiver:acquireDrmInfo contentId"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/DrmEventService$5;->this$0:Lcom/android/server/DrmEventService;

    iget-object v10, v10, Lcom/android/server/DrmEventService;->contentId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87
    iget-object v8, p0, Lcom/android/server/DrmEventService$5;->this$0:Lcom/android/server/DrmEventService;

    iget-object v8, v8, Lcom/android/server/DrmEventService;->contentId:Ljava/lang/String;

    if-eqz v8, :cond_12c

    new-instance v3, Landroid/drm/DrmInfoRequest;

    const/16 v8, 0x9

    const-string v9, "application/vnd.oma.drm.content"

    invoke-direct {v3, v8, v9}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    const-string v8, "cid"

    iget-object v9, p0, Lcom/android/server/DrmEventService$5;->this$0:Lcom/android/server/DrmEventService;

    iget-object v9, v9, Lcom/android/server/DrmEventService;->contentId:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/android/server/DrmEventService$5;->this$0:Lcom/android/server/DrmEventService;

    iget-object v8, v8, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v8, v3}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v4

    if-eqz v4, :cond_124

    const-string v8, "status"

    invoke-virtual {v4, v8}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    sget-boolean v8, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v8, :cond_cf

    const-string v8, "DrmEventService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wap push receiver:  processRequest status is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cf
    const-string v8, "success"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11c

    sget-boolean v8, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v8, :cond_e2

    const-string v8, "DrmEventService"

    const-string v9, "Wap push receiver: acquireDrmInfo Success"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e2
    const-string v8, "drm_path"

    invoke-virtual {v4, v8}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_134

    const-string v8, "drm_path"

    invoke-virtual {v4, v8}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_f5
    :goto_f5
    if-eqz v0, :cond_182

    const/4 v5, 0x1

    :try_start_f8
    iget-object v8, p0, Lcom/android/server/DrmEventService$5;->this$0:Lcom/android/server/DrmEventService;

    iget-object v8, v8, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v8, v0}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I
    :try_end_ff
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f8 .. :try_end_ff} :catch_140

    move-result v5

    :goto_100
    if-nez v5, :cond_163

    sget-boolean v8, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v8, :cond_10d

    const-string v8, "DrmEventService"

    const-string v9, " Rights Valid , Show Popup"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10d
    iget-object v8, p0, Lcom/android/server/DrmEventService$5;->this$0:Lcom/android/server/DrmEventService;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v0}, Lcom/android/server/DrmEventService;->InitializeOmaIntent(ILjava/lang/String;)V

    :cond_113
    :goto_113
    return-void

    :cond_114
    const-string v8, "DrmEventService"

    const-string v9, "Wap push receiver:acquireDrmInfo Fail  0"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_113

    :cond_11c
    const-string v8, "DrmEventService"

    const-string v9, "Wap push receiver:acquireDrmInfo Fail 1"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_113

    :cond_124
    const-string v8, "DrmEventService"

    const-string v9, "Wap push receiver:acquireDrmInfo result is NULL "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_113

    :cond_12c
    const-string v8, "DrmEventService"

    const-string v9, "Wap push receiver:acquireDrmInfo Fail  2"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_113

    :cond_134
    sget-boolean v8, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v8, :cond_f5

    const-string v8, "DrmEventService"

    const-string v9, "Wap push receiver:acquireDrmInfo FILE Object not available"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f5

    :catch_140
    move-exception v2

    sget-boolean v8, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v8, :cond_161

    const-string v8, "DrmEventService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IllegalArgumentException is raised."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_161
    const/4 v5, 0x1

    goto :goto_100

    :cond_163
    if-ne v5, v11, :cond_176

    sget-boolean v8, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v8, :cond_170

    const-string v8, "DrmEventService"

    const-string v9, " Rights are not yet active: Show Popup"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_170
    iget-object v8, p0, Lcom/android/server/DrmEventService$5;->this$0:Lcom/android/server/DrmEventService;

    invoke-virtual {v8, v11, v0}, Lcom/android/server/DrmEventService;->InitializeOmaIntent(ILjava/lang/String;)V

    goto :goto_113

    :cond_176
    sget-boolean v8, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v8, :cond_113

    const-string v8, "DrmEventService"

    const-string v9, "Unknown right status. Exit"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_113

    :cond_182
    sget-boolean v8, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v8, :cond_113

    const-string v8, "DrmEventService"

    const-string v9, "Wap push receiver: No File Path "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_113

    :cond_18e
    sget-boolean v8, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v8, :cond_113

    const-string v8, "DrmEventService"

    const-string v9, "DRM PUSH RECEIVER : mimeType is not valid for WAp Push Received"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_113
.end method
