.class Lcom/android/server/power/ShutdownDialog$StatePrepare;
.super Ljava/lang/Object;
.source "ShutdownDialog.java"

# interfaces
.implements Lcom/android/server/power/ShutdownDialog$DrawState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatePrepare"
.end annotation


# instance fields
.field private animPathConfirmed:Ljava/lang/String;

.field private soundPathConfirmed:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method private constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .registers 3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->soundPathConfirmed:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->animPathConfirmed:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog$StatePrepare;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    return-void
.end method

.method private playSoundForKor()Z
    .registers 5

    const/4 v1, 0x1

    const-string v2, "USA"

    const-string v3, "KOR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_26

    :try_start_b
    const-string v2, "ShutdownDialog"

    const-string v3, "shutdown Dialog kor power snd"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "service.media.powersnd"

    const-string v3, "2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ctl.start"

    const-string v3, "powersnd"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_25
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_25} :catch_28
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_25} :catch_2d

    :goto_25
    return v1

    :cond_26
    const/4 v1, 0x0

    goto :goto_25

    :catch_28
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_25

    :catch_2d
    move-exception v2

    goto :goto_25
.end method

.method private prepareAnim(Ljava/lang/String;)V
    .registers 9

    if-nez p1, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {p1}, Lcom/android/server/power/LibQmg;->qmgOpen(Ljava/lang/String;)I

    move-result v4

    #setter for: Lcom/android/server/power/ShutdownDialog;->qmgHandle:I
    invoke-static {v3, v4}, Lcom/android/server/power/ShutdownDialog;->access$802(Lcom/android/server/power/ShutdownDialog;I)I

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->qmgHandle:I
    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->access$800(Lcom/android/server/power/ShutdownDialog;)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/power/LibQmg;->qmgGetWidth(I)I

    move-result v4

    #setter for: Lcom/android/server/power/ShutdownDialog;->width:I
    invoke-static {v3, v4}, Lcom/android/server/power/ShutdownDialog;->access$902(Lcom/android/server/power/ShutdownDialog;I)I

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->qmgHandle:I
    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->access$800(Lcom/android/server/power/ShutdownDialog;)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/power/LibQmg;->qmgGetHeight(I)I

    move-result v4

    #setter for: Lcom/android/server/power/ShutdownDialog;->height:I
    invoke-static {v3, v4}, Lcom/android/server/power/ShutdownDialog;->access$1002(Lcom/android/server/power/ShutdownDialog;I)I

    const-string v3, "ShutdownDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Image w:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->width:I
    invoke-static {v5}, Lcom/android/server/power/ShutdownDialog;->access$900(Lcom/android/server/power/ShutdownDialog;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "ShutdownDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Image h:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->height:I
    invoke-static {v5}, Lcom/android/server/power/ShutdownDialog;->access$1000(Lcom/android/server/power/ShutdownDialog;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v3}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {v2, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->width:I
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$900(Lcom/android/server/power/ShutdownDialog;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->height:I
    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->access$1000(Lcom/android/server/power/ShutdownDialog;)I

    move-result v4

    if-le v3, v4, :cond_d8

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    :goto_89
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v3}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v3}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7e5

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->width:I
    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->access$900(Lcom/android/server/power/ShutdownDialog;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->height:I
    invoke-static {v5}, Lcom/android/server/power/ShutdownDialog;->access$1000(Lcom/android/server/power/ShutdownDialog;)I

    move-result v5

    mul-int/2addr v4, v5

    new-array v4, v4, [I

    #setter for: Lcom/android/server/power/ShutdownDialog;->qmgDecodeBuffer:[I
    invoke-static {v3, v4}, Lcom/android/server/power/ShutdownDialog;->access$1102(Lcom/android/server/power/ShutdownDialog;[I)[I

    const/4 v0, 0x0

    :goto_b8
    const/4 v3, 0x3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$1200(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->width:I
    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->access$900(Lcom/android/server/power/ShutdownDialog;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->height:I
    invoke-static {v5}, Lcom/android/server/power/ShutdownDialog;->access$1000(Lcom/android/server/power/ShutdownDialog;)I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b8

    :cond_d8
    const/4 v3, 0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_89
.end method

.method private prepareSound(Ljava/lang/String;)V
    .registers 11

    const/4 v8, 0x1

    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog$StatePrepare;->playSoundForKor()Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/power/ShutdownDialog;->access$1300(Lcom/android/server/power/ShutdownDialog;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_1f

    const-string v6, "shutdown"

    const-string v7, "1"

    invoke-virtual {v0, v6, v7}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    if-eqz p1, :cond_7

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    if-gez v5, :cond_34

    const-string v6, "ShutdownDialog"

    const-string v7, "!@Volume is not enough"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_34
    const/4 v3, 0x0

    :try_start_35
    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    new-instance v7, Landroid/media/MediaPlayer;

    invoke-direct {v7}, Landroid/media/MediaPlayer;-><init>()V

    #setter for: Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;
    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownDialog;->access$1402(Lcom/android/server/power/ShutdownDialog;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_44
    .catchall {:try_start_35 .. :try_end_44} :catchall_c6
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_44} :catch_83
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35 .. :try_end_44} :catch_9c
    .catch Ljava/lang/SecurityException; {:try_start_35 .. :try_end_44} :catch_b1

    :try_start_44
    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;
    invoke-static {v6}, Lcom/android/server/power/ShutdownDialog;->access$1400(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;
    invoke-static {v6}, Lcom/android/server/power/ShutdownDialog;->access$1400(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;
    invoke-static {v6}, Lcom/android/server/power/ShutdownDialog;->access$1400(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;
    invoke-static {v6}, Lcom/android/server/power/ShutdownDialog;->access$1400(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;

    move-result-object v6

    new-instance v7, Lcom/android/server/power/ShutdownDialog$StatePrepare$1;

    invoke-direct {v7, p0}, Lcom/android/server/power/ShutdownDialog$StatePrepare$1;-><init>(Lcom/android/server/power/ShutdownDialog$StatePrepare;)V

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;
    invoke-static {v6}, Lcom/android/server/power/ShutdownDialog;->access$1400(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_7c
    .catchall {:try_start_44 .. :try_end_7c} :catchall_df
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_7c} :catch_e8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_44 .. :try_end_7c} :catch_e5
    .catch Ljava/lang/SecurityException; {:try_start_44 .. :try_end_7c} :catch_e2

    if-eqz v4, :cond_81

    :try_start_7e
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_d6

    :cond_81
    :goto_81
    move-object v3, v4

    goto :goto_7

    :catch_83
    move-exception v1

    :goto_84
    :try_start_84
    const-string v6, "ShutdownDialog"

    const-string v7, "!@MediaPlayer exception. Sound will not started !"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8b
    .catchall {:try_start_84 .. :try_end_8b} :catchall_c6

    if-eqz v3, :cond_7

    :try_start_8d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_92

    goto/16 :goto_7

    :catch_92
    move-exception v1

    const-string v6, "ShutdownDialog"

    const-string v7, "sound file.close"

    :goto_97
    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    :catch_9c
    move-exception v1

    :goto_9d
    :try_start_9d
    const-string v6, "ShutdownDialog"

    const-string v7, "!@MediaPlayer exception. Sound will not started !"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a4
    .catchall {:try_start_9d .. :try_end_a4} :catchall_c6

    if-eqz v3, :cond_7

    :try_start_a6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_ab

    goto/16 :goto_7

    :catch_ab
    move-exception v1

    const-string v6, "ShutdownDialog"

    const-string v7, "sound file.close"

    goto :goto_97

    :catch_b1
    move-exception v1

    :goto_b2
    :try_start_b2
    const-string v6, "ShutdownDialog"

    const-string v7, "!@MediaPlayer exception. Sound will not started !"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b9
    .catchall {:try_start_b2 .. :try_end_b9} :catchall_c6

    if-eqz v3, :cond_7

    :try_start_bb
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_c0

    goto/16 :goto_7

    :catch_c0
    move-exception v1

    const-string v6, "ShutdownDialog"

    const-string v7, "sound file.close"

    goto :goto_97

    :catchall_c6
    move-exception v6

    :goto_c7
    if-eqz v3, :cond_cc

    :try_start_c9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_cd

    :cond_cc
    :goto_cc
    throw v6

    :catch_cd
    move-exception v1

    const-string v7, "ShutdownDialog"

    const-string v8, "sound file.close"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_cc

    :catch_d6
    move-exception v1

    const-string v6, "ShutdownDialog"

    const-string v7, "sound file.close"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_81

    :catchall_df
    move-exception v6

    move-object v3, v4

    goto :goto_c7

    :catch_e2
    move-exception v1

    move-object v3, v4

    goto :goto_b2

    :catch_e5
    move-exception v1

    move-object v3, v4

    goto :goto_9d

    :catch_e8
    move-exception v1

    move-object v3, v4

    goto :goto_84
.end method


# virtual methods
.method public prepare(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v2, 0x0

    const-string v0, "ShutdownDialog"

    const-string v1, "prepare shutdown dialog image and sound"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->soundPathConfirmed:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->animPathConfirmed:Ljava/lang/String;

    #calls: Lcom/android/server/power/ShutdownDialog;->getSoundPath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/power/ShutdownDialog;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->soundPathConfirmed:Ljava/lang/String;

    #calls: Lcom/android/server/power/ShutdownDialog;->getAnimPath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/power/ShutdownDialog;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->animPathConfirmed:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->animPathConfirmed:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/power/ShutdownDialog$StatePrepare;->prepareAnim(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->soundPathConfirmed:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/power/ShutdownDialog$StatePrepare;->prepareSound(Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .registers 3

    const-string v0, "ShutdownDialog"

    const-string v1, "start draw"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$600(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$StateDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog$StateDrawing;->start()V

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;
    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$600(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$StateDrawing;

    move-result-object v1

    #setter for: Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;
    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownDialog;->access$702(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$DrawState;)Lcom/android/server/power/ShutdownDialog$DrawState;

    return-void
.end method

.method public started()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public waitForFinish(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->soundPathConfirmed:Ljava/lang/String;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->animPathConfirmed:Ljava/lang/String;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method
