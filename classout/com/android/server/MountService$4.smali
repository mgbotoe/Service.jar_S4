.class Lcom/android/server/MountService$4;
.super Ljava/lang/Object;
.source "MountService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;

.field final synthetic val$code:I

.field final synthetic val$cooked:[Ljava/lang/String;

.field final synthetic val$raw:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;ILjava/lang/String;[Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    iput p2, p0, Lcom/android/server/MountService$4;->val$code:I

    iput-object p3, p0, Lcom/android/server/MountService$4;->val$raw:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/MountService$4;->val$cooked:[Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    iget v1, p0, Lcom/android/server/MountService$4;->val$code:I

    iget-object v2, p0, Lcom/android/server/MountService$4;->val$raw:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/MountService$4;->val$cooked:[Ljava/lang/String;

    #calls: Lcom/android/server/MountService;->onEventInner(ILjava/lang/String;[Ljava/lang/String;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;ILjava/lang/String;[Ljava/lang/String;)Z

    return-void
.end method
