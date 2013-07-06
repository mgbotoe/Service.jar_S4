.class public final Lcom/android/server/AttributeCache;
.super Ljava/lang/Object;
.source "AttributeCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AttributeCache$Entry;,
        Lcom/android/server/AttributeCache$Package;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/server/AttributeCache;


# instance fields
.field private final mConfiguration:Landroid/content/res/Configuration;

.field private final mContext:Landroid/content/Context;

.field private final mPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AttributeCache$Package;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/SparseArray;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    iput-object p1, p0, Lcom/android/server/AttributeCache;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    sget-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/server/AttributeCache;

    invoke-direct {v0, p0}, Lcom/android/server/AttributeCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    :cond_b
    return-void
.end method

.method public static instance()Lcom/android/server/AttributeCache;
    .registers 1

    sget-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    return-object v0
.end method


# virtual methods
.method public get(ILjava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;
    .registers 16

    const/4 v7, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v8, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/WeakHashMap;

    if-nez v5, :cond_16

    new-instance v5, Ljava/util/WeakHashMap;

    invoke-direct {v5}, Ljava/util/WeakHashMap;-><init>()V

    iget-object v8, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/SparseArray;

    invoke-virtual {v8, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_16
    invoke-virtual {v5, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AttributeCache$Package;

    const/4 v4, 0x0

    const/4 v2, 0x0

    if-eqz v6, :cond_37

    #getter for: Lcom/android/server/AttributeCache$Package;->mMap:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/server/AttributeCache$Package;->access$000(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    if-eqz v4, :cond_55

    invoke-virtual {v4, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AttributeCache$Entry;

    if-eqz v2, :cond_55

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_2 .. :try_end_35} :catchall_47

    move-object v7, v2

    :goto_36
    return-object v7

    :cond_37
    :try_start_37
    iget-object v8, p0, Lcom/android/server/AttributeCache;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, p2, v9, v10}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_47
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_42} :catch_4a

    move-result-object v0

    if-nez v0, :cond_4d

    :try_start_45
    monitor-exit p0

    goto :goto_36

    :catchall_47
    move-exception v7

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_47

    throw v7

    :catch_4a
    move-exception v1

    :try_start_4b
    monitor-exit p0

    goto :goto_36

    :cond_4d
    new-instance v6, Lcom/android/server/AttributeCache$Package;

    invoke-direct {v6, v0}, Lcom/android/server/AttributeCache$Package;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p2, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_55
    move-object v3, v2

    if-nez v4, :cond_64

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #getter for: Lcom/android/server/AttributeCache$Package;->mMap:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/server/AttributeCache$Package;->access$000(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, p3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_64
    .catchall {:try_start_4b .. :try_end_64} :catchall_47

    :cond_64
    :try_start_64
    new-instance v2, Lcom/android/server/AttributeCache$Entry;

    iget-object v8, v6, Lcom/android/server/AttributeCache$Package;->context:Landroid/content/Context;

    iget-object v9, v6, Lcom/android/server/AttributeCache$Package;->context:Landroid/content/Context;

    invoke-virtual {v9, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Lcom/android/server/AttributeCache$Entry;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    :try_end_71
    .catchall {:try_start_64 .. :try_end_71} :catchall_47
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_64 .. :try_end_71} :catch_77

    :try_start_71
    invoke-virtual {v4, p4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_47
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_71 .. :try_end_74} :catch_7b

    :try_start_74
    monitor-exit p0

    move-object v7, v2

    goto :goto_36

    :catch_77
    move-exception v1

    move-object v2, v3

    :goto_79
    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_74 .. :try_end_7a} :catchall_47

    goto :goto_36

    :catch_7b
    move-exception v1

    goto :goto_79
.end method

.method public removePackage(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    iget-object v1, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public removeUser(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    const v1, -0x400000a1

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v1
.end method
