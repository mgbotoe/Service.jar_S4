.class public Lcom/android/server/power/ShutdownDialog;
.super Landroid/app/Dialog;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownDialog$1;,
        Lcom/android/server/power/ShutdownDialog$SoundThread;,
        Lcom/android/server/power/ShutdownDialog$DrawHandler;,
        Lcom/android/server/power/ShutdownDialog$ImageLoadThread;,
        Lcom/android/server/power/ShutdownDialog$StateFinish;,
        Lcom/android/server/power/ShutdownDialog$StateDrawing;,
        Lcom/android/server/power/ShutdownDialog$StatePrepare;,
        Lcom/android/server/power/ShutdownDialog$DrawState;
    }
.end annotation


# static fields
.field private static final PATH_OLD_SHUTDOWNIMG:Ljava/lang/String; = "//system/media/video/shutdown/shutdown.qmg"

.field private static final PATH_SHUTDOWNIMG:Ljava/lang/String; = "//system/media/shutdown.qmg"

.field private static final PATH_SHUTDOWNIMG_MULTI_CSC:Ljava/lang/String; = "//system/csc_contents/shutdown.qmg"

.field private static final PATH_SHUTDOWNSOUND_MULTI_CSC:Ljava/lang/String; = "//system/csc_contents/PowerOff.ogg"

.field private static final TAG:Ljava/lang/String; = "ShutdownDialog"


# instance fields
.field private final BUFFER_SIZE:I

.field private bitmapQ:[Landroid/graphics/Bitmap;

.field bitmapQFront:I

.field bitmapQRear:I

.field drawBufferLock:Ljava/lang/Object;

.field private height:I

.field private mContext:Landroid/content/Context;

.field private mDrawHandler:Landroid/os/Handler;

.field private mShutdownView:Landroid/widget/ImageView;

.field private mState:Lcom/android/server/power/ShutdownDialog$DrawState;

.field private mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;

.field private mStateFinish:Lcom/android/server/power/ShutdownDialog$StateFinish;

.field private mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

.field private mp:Landroid/media/MediaPlayer;

.field private qmgDecodeBuffer:[I

.field private qmgHandle:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const v0, 0x1030007

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/ShutdownDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .registers 7

    const/4 v1, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput v1, p0, Lcom/android/server/power/ShutdownDialog;->BUFFER_SIZE:I

    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;

    iput v3, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I

    iput v3, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/power/ShutdownDialog;->qmgHandle:I

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/ShutdownDialog$StatePrepare;

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/ShutdownDialog$StatePrepare;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    iput-object v1, p0, Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    new-instance v1, Lcom/android/server/power/ShutdownDialog$StateDrawing;

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/ShutdownDialog$StateDrawing;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    iput-object v1, p0, Lcom/android/server/power/ShutdownDialog;->mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;

    new-instance v1, Lcom/android/server/power/ShutdownDialog$StateFinish;

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/ShutdownDialog$StateFinish;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    iput-object v1, p0, Lcom/android/server/power/ShutdownDialog;->mStateFinish:Lcom/android/server/power/ShutdownDialog$StateFinish;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    iput-object v1, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "POWER_OFF_ANIMATION_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0, v3}, Lcom/android/server/power/ShutdownDialog;->setCancelable(Z)V

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7e5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/power/ShutdownDialog;)I
    .registers 2

    iget v0, p0, Lcom/android/server/power/ShutdownDialog;->height:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/power/ShutdownDialog;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/power/ShutdownDialog;->height:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/power/ShutdownDialog;)[I
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgDecodeBuffer:[I

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/power/ShutdownDialog;[I)[I
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog;->qmgDecodeBuffer:[I

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/power/ShutdownDialog;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/power/ShutdownDialog;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$StateFinish;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mStateFinish:Lcom/android/server/power/ShutdownDialog$StateFinish;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$StatePrepare;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/power/ShutdownDialog;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/android/server/power/ShutdownDialog;->getSoundPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/android/server/power/ShutdownDialog;->getAnimPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$StateDrawing;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$DrawState;)Lcom/android/server/power/ShutdownDialog$DrawState;
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/power/ShutdownDialog;)I
    .registers 2

    iget v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgHandle:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/power/ShutdownDialog;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/power/ShutdownDialog;->qmgHandle:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/power/ShutdownDialog;)I
    .registers 2

    iget v0, p0, Lcom/android/server/power/ShutdownDialog;->width:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/power/ShutdownDialog;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/power/ShutdownDialog;->width:I

    return p1
.end method

.method public static existAnim()Z
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->getAnimPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static getAnimPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-eqz p0, :cond_e

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_e

    :goto_d
    return-object p0

    :cond_e
    const/4 v2, 0x0

    invoke-static {}, Lcom/android/server/power/ShutdownDialog;->getChameleonCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "//system/media/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "_shutdown.qmg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_d

    :cond_3a
    new-instance v1, Ljava/io/File;

    const-string v3, "//system/csc_contents/shutdown.qmg"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4c

    const-string p0, "//system/csc_contents/shutdown.qmg"

    goto :goto_d

    :cond_4c
    new-instance v1, Ljava/io/File;

    const-string v3, "//system/media/video/shutdown/shutdown.qmg"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_5e

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5e

    const-string p0, "//system/media/video/shutdown/shutdown.qmg"

    goto :goto_d

    :cond_5e
    new-instance v1, Ljava/io/File;

    const-string v3, "//system/media/shutdown.qmg"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_70

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_70

    const-string p0, "//system/media/shutdown.qmg"

    goto :goto_d

    :cond_70
    const/4 p0, 0x0

    goto :goto_d
.end method

.method private static getChameleonCode()Ljava/lang/String;
    .registers 7

    new-instance v4, Ljava/io/File;

    const-string v5, "/carrier/chameleon.xml"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1a

    new-instance v4, Ljava/io/File;

    const-string v5, "/carrier/chameleon.xml"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1c

    :cond_1a
    const/4 v1, 0x0

    :cond_1b
    :goto_1b
    return-object v1

    :cond_1c
    const-string v4, "ShutdownDialog"

    const-string v5, "Power off sound CHAMELEON is activated"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_25
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/efs/imei/mps_code.dat"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_31
    .catchall {:try_start_25 .. :try_end_31} :catchall_69
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_31} :catch_3c
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_31} :catch_54

    :try_start_31
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_82
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_34} :catch_88
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_85

    move-result-object v1

    if-eqz v3, :cond_3a

    :try_start_37
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_79

    :cond_3a
    :goto_3a
    move-object v2, v3

    goto :goto_1b

    :catch_3c
    move-exception v0

    :goto_3d
    :try_start_3d
    const-string v4, "ShutdownDialog"

    const-string v5, "read error : imei mps_code"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_69

    const/4 v1, 0x0

    if-eqz v2, :cond_1b

    :try_start_47
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_1b

    :catch_4b
    move-exception v0

    const-string v4, "ShutdownDialog"

    const-string v5, "FileReader close exception"

    :goto_50
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    :catch_54
    move-exception v0

    :goto_55
    :try_start_55
    const-string v4, "ShutdownDialog"

    const-string v5, "read error : imei mps_code"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_69

    const/4 v1, 0x0

    if-eqz v2, :cond_1b

    :try_start_5f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_1b

    :catch_63
    move-exception v0

    const-string v4, "ShutdownDialog"

    const-string v5, "FileReader close exception"

    goto :goto_50

    :catchall_69
    move-exception v4

    :goto_6a
    if-eqz v2, :cond_6f

    :try_start_6c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_70

    :cond_6f
    :goto_6f
    throw v4

    :catch_70
    move-exception v0

    const-string v5, "ShutdownDialog"

    const-string v6, "FileReader close exception"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6f

    :catch_79
    move-exception v0

    const-string v4, "ShutdownDialog"

    const-string v5, "FileReader close exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3a

    :catchall_82
    move-exception v4

    move-object v2, v3

    goto :goto_6a

    :catch_85
    move-exception v0

    move-object v2, v3

    goto :goto_55

    :catch_88
    move-exception v0

    move-object v2, v3

    goto :goto_3d
.end method

.method private static getSoundPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_e

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_e

    :goto_d
    return-object p0

    :cond_e
    new-instance v0, Ljava/io/File;

    const-string v3, "//system/csc_contents/PowerOff.ogg"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_26

    const-string p0, "//system/csc_contents/PowerOff.ogg"

    goto :goto_d

    :cond_26
    const-string v2, "//system/media/audio/ui/PowerOff.wav"

    new-instance v0, Ljava/io/File;

    const-string v3, "//system/media/audio/ui/PowerOff.wav"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_40

    const-string p0, "//system/media/audio/ui/PowerOff.wav"

    goto :goto_d

    :cond_40
    const-string v1, "//system/media/audio/ui/PowerOff.ogg"

    new-instance v0, Ljava/io/File;

    const-string v3, "//system/media/audio/ui/PowerOff.ogg"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_5a

    const-string p0, "//system/media/audio/ui/PowerOff.ogg"

    goto :goto_d

    :cond_5a
    const/4 p0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public drawState()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->started()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x12c

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getMediaPlayer()Landroid/media/MediaPlayer;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "ShutdownDialog"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/server/power/ShutdownDialog$DrawHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/ShutdownDialog$DrawHandler;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/server/power/ShutdownDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->start()V

    return-void
.end method

.method protected onStop()V
    .registers 1

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method public prepareBootup()V
    .registers 4

    const-string v0, "ShutdownDialog"

    const-string v1, "prepare shutdown dialog image and sound"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    const-string v1, "/system/media/warmboot.qmg"

    const-string v2, "/system/media/audio/ui/PowerOn.ogg"

    invoke-interface {v0, v1, v2}, Lcom/android/server/power/ShutdownDialog$DrawState;->prepare(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public prepareShutdown(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0, p1, p2}, Lcom/android/server/power/ShutdownDialog$DrawState;->prepare(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->start()V

    return-void
.end method

.method public waitForAnimEnd(I)Z
    .registers 5

    :goto_0
    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v1, p1}, Lcom/android/server/power/ShutdownDialog$DrawState;->waitForFinish(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "ShutdownDialog"

    const-string v2, "playing not yet. sleep a time"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x64

    :try_start_11
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_0

    :catch_15
    move-exception v0

    const-string v1, "ShutdownDialog"

    const-string v2, "InterruptedException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1e
    const/4 v1, 0x1

    return v1
.end method
