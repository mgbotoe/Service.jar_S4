.class final Lcom/android/server/MountService$MountCallBackBinderListener;
.super Ljava/lang/Object;
.source "MountService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MountCallBackBinderListener"
.end annotation


# instance fields
.field final mCallback:Landroid/os/storage/IMountCallBackListener;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Landroid/os/storage/IMountCallBackListener;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/MountService$MountCallBackBinderListener;->this$0:Lcom/android/server/MountService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/MountService$MountCallBackBinderListener;->mCallback:Landroid/os/storage/IMountCallBackListener;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/MountService$MountCallBackBinderListener;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/MountService;->access$3400(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/MountService$MountCallBackBinderListener;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/MountService;->access$3400(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/MountService$MountCallBackBinderListener;->mCallback:Landroid/os/storage/IMountCallBackListener;

    invoke-interface {v0}, Landroid/os/storage/IMountCallBackListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    monitor-exit v1

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v0
.end method
