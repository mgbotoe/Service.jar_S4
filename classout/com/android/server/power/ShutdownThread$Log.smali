.class Lcom/android/server/power/ShutdownThread$Log;
.super Landroid/os/Handler;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Log"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShutdownDelay"

.field private static handler:Lcom/android/server/power/ShutdownThread$Log;

.field private static handlerLock:Ljava/lang/Object;

.field private static queuePoint:I

.field private static queueState:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/power/ShutdownThread$Log;->handler:Lcom/android/server/power/ShutdownThread$Log;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread$Log;->handlerLock:Ljava/lang/Object;

    sput-object v1, Lcom/android/server/power/ShutdownThread$Log;->queueState:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    const/4 v1, -0x1

    :try_start_1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Log;->setMessage(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_9

    :goto_8
    return v1

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    const/4 v1, -0x1

    :try_start_1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Log;->setMessage(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_9

    :goto_8
    return v1

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    .registers 5

    const/4 v1, -0x1

    :try_start_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Log;->setMessage(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_9

    :goto_8
    return v1

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method static i(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    const/4 v1, -0x1

    :try_start_1
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Log;->setMessage(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_9

    :goto_8
    return v1

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method private static setMessage(Ljava/lang/String;)V
    .registers 7

    const/4 v5, 0x1

    sget-object v1, Lcom/android/server/power/ShutdownThread$Log;->handlerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    sget-object v0, Lcom/android/server/power/ShutdownThread$Log;->handler:Lcom/android/server/power/ShutdownThread$Log;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_11

    :cond_f
    monitor-exit v1

    :goto_10
    return-void

    :cond_11
    sget-object v0, Lcom/android/server/power/ShutdownThread$Log;->handler:Lcom/android/server/power/ShutdownThread$Log;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/power/ShutdownThread$Log;->removeMessages(I)V

    sget-object v0, Lcom/android/server/power/ShutdownThread$Log;->handler:Lcom/android/server/power/ShutdownThread$Log;

    const/4 v2, 0x1

    const-wide/32 v3, 0xea60

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/power/ShutdownThread$Log;->sendEmptyMessageDelayed(IJ)Z

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_43

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_46

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_46

    sget-object v0, Lcom/android/server/power/ShutdownThread$Log;->queueState:[Ljava/lang/String;

    sget v1, Lcom/android/server/power/ShutdownThread$Log;->queuePoint:I

    aput-object p0, v0, v1

    :goto_38
    sget v0, Lcom/android/server/power/ShutdownThread$Log;->queuePoint:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/android/server/power/ShutdownThread$Log;->queueState:[Ljava/lang/String;

    array-length v1, v1

    rem-int/2addr v0, v1

    sput v0, Lcom/android/server/power/ShutdownThread$Log;->queuePoint:I

    goto :goto_10

    :catchall_43
    move-exception v0

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v0

    :cond_46
    sget-object v0, Lcom/android/server/power/ShutdownThread$Log;->queueState:[Ljava/lang/String;

    sget v1, Lcom/android/server/power/ShutdownThread$Log;->queuePoint:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@delay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_38
.end method

.method public static startState()V
    .registers 4

    sget-object v0, Lcom/android/server/power/ShutdownThread$Log;->handler:Lcom/android/server/power/ShutdownThread$Log;

    if-nez v0, :cond_2e

    const-string v0, "ShutdownDelay"

    const-string v1, "Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/power/ShutdownThread$Log;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread$Log;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread$Log;->handler:Lcom/android/server/power/ShutdownThread$Log;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/power/ShutdownThread$Log;->queueState:[Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/android/server/power/ShutdownThread$Log;->queuePoint:I

    :goto_1a
    sget-object v0, Lcom/android/server/power/ShutdownThread$Log;->handler:Lcom/android/server/power/ShutdownThread$Log;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/power/ShutdownThread$Log;->sendEmptyMessage(I)Z

    sget-object v0, Lcom/android/server/power/ShutdownThread$Log;->handler:Lcom/android/server/power/ShutdownThread$Log;

    new-instance v1, Lcom/android/server/power/ShutdownThread$Log$1;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$Log$1;-><init>()V

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/ShutdownThread$Log;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2e
    const-string v0, "ShutdownDelay"

    const-string v1, "startstate again"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public static stopState()V
    .registers 3

    sget-object v0, Lcom/android/server/power/ShutdownThread$Log;->handler:Lcom/android/server/power/ShutdownThread$Log;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/server/power/ShutdownThread$Log;->queueState:[Ljava/lang/String;

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    const-string v0, "ShutdownDelay"

    const-string v1, "Stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/power/ShutdownThread$Log;->handlerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_13
    sget-object v0, Lcom/android/server/power/ShutdownThread$Log;->handler:Lcom/android/server/power/ShutdownThread$Log;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/power/ShutdownThread$Log;->removeMessages(I)V

    sget-object v0, Lcom/android/server/power/ShutdownThread$Log;->handler:Lcom/android/server/power/ShutdownThread$Log;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/power/ShutdownThread$Log;->removeMessages(I)V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread$Log;->handler:Lcom/android/server/power/ShutdownThread$Log;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread$Log;->queueState:[Ljava/lang/String;

    monitor-exit v1

    goto :goto_8

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_13 .. :try_end_29} :catchall_27

    throw v0
.end method

.method static v(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    const/4 v1, -0x1

    :try_start_1
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Log;->setMessage(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_9

    :goto_8
    return v1

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method static w(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    const/4 v1, -0x1

    :try_start_1
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Log;->setMessage(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_9

    :goto_8
    return v1

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    .registers 5

    const/4 v1, -0x1

    :try_start_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Log;->setMessage(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_9

    :goto_8
    return v1

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    sget-object v1, Lcom/android/server/power/ShutdownThread$Log;->queueState:[Ljava/lang/String;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/android/server/power/ShutdownThread$Log;->handler:Lcom/android/server/power/ShutdownThread$Log;

    if-nez v1, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    sget v0, Lcom/android/server/power/ShutdownThread$Log;->queuePoint:I

    :cond_b
    add-int/lit8 v1, v0, 0x1

    sget-object v2, Lcom/android/server/power/ShutdownThread$Log;->queueState:[Ljava/lang/String;

    array-length v2, v2

    rem-int v0, v1, v2

    sget-object v1, Lcom/android/server/power/ShutdownThread$Log;->queueState:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_21

    const-string v1, "ShutdownDelay"

    sget-object v2, Lcom/android/server/power/ShutdownThread$Log;->queueState:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    sget v1, Lcom/android/server/power/ShutdownThread$Log;->queuePoint:I

    if-ne v0, v1, :cond_b

    const/4 v1, 0x1

    const-wide/32 v2, 0xea60

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/power/ShutdownThread$Log;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8
.end method
