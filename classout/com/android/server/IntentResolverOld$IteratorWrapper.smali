.class Lcom/android/server/IntentResolverOld$IteratorWrapper;
.super Ljava/lang/Object;
.source "IntentResolverOld.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IntentResolverOld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IteratorWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TF;>;"
    }
.end annotation


# instance fields
.field private mCur:Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field private final mI:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TF;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/IntentResolverOld;


# direct methods
.method constructor <init>(Lcom/android/server/IntentResolverOld;Ljava/util/Iterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<TF;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/IntentResolverOld$IteratorWrapper;->this$0:Lcom/android/server/IntentResolverOld;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/IntentResolverOld$IteratorWrapper;->mI:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/IntentResolverOld$IteratorWrapper;->mI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Landroid/content/IntentFilter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/IntentResolverOld$IteratorWrapper;->mI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    iput-object v0, p0, Lcom/android/server/IntentResolverOld$IteratorWrapper;->mCur:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/IntentResolverOld$IteratorWrapper;->next()Landroid/content/IntentFilter;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/IntentResolverOld$IteratorWrapper;->mCur:Landroid/content/IntentFilter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/IntentResolverOld$IteratorWrapper;->this$0:Lcom/android/server/IntentResolverOld;

    iget-object v1, p0, Lcom/android/server/IntentResolverOld$IteratorWrapper;->mCur:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1}, Lcom/android/server/IntentResolverOld;->removeFilterInternal(Landroid/content/IntentFilter;)V

    :cond_b
    iget-object v0, p0, Lcom/android/server/IntentResolverOld$IteratorWrapper;->mI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method