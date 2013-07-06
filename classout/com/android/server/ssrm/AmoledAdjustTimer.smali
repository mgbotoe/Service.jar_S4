.class public final Lcom/android/server/ssrm/AmoledAdjustTimer;
.super Ljava/lang/Object;
.source "AmoledAdjustTimer.java"


# static fields
.field private static final INPUT_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/temp"

.field private static final OUTPUT_PATH:Ljava/lang/String; = "/sys/class/lcd/panel/temperature"

.field private static final TAG:Ljava/lang/String; = "AmoledAdjustTimer"

.field private static TEMP_TABLE:[I

.field private static currTemp:I

.field static currentTempFile:Ljava/io/File;

.field private static lastValue:I

.field private static mInputPathExist:Z

.field private static mOutputPathExist:Z

.field private static mService:Lcom/android/server/ssrm/AmoledAdjustTimer;

.field private static prevTemp:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const/16 v1, 0xc8

    const/4 v0, 0x0

    sput-object v2, Lcom/android/server/ssrm/AmoledAdjustTimer;->mService:Lcom/android/server/ssrm/AmoledAdjustTimer;

    sput-boolean v0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mInputPathExist:Z

    sput-boolean v0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mOutputPathExist:Z

    sput-object v2, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    sput v1, Lcom/android/server/ssrm/AmoledAdjustTimer;->prevTemp:I

    sput v1, Lcom/android/server/ssrm/AmoledAdjustTimer;->currTemp:I

    const/16 v0, 0x64

    sput v0, Lcom/android/server/ssrm/AmoledAdjustTimer;->lastValue:I

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/power_supply/battery/temp"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/ssrm/AmoledAdjustTimer;->currentTempFile:Ljava/io/File;

    return-void
.end method

.method private constructor <init>()V
    .registers 13

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/File;

    const-string v9, "/sys/class/power_supply/battery/temp"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v9, "/sys/class/lcd/panel/temperature"

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6d

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_6d

    move v9, v10

    :goto_20
    sput-boolean v9, Lcom/android/server/ssrm/AmoledAdjustTimer;->mInputPathExist:Z

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6f

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v9

    if-eqz v9, :cond_6f

    :goto_2e
    sput-boolean v10, Lcom/android/server/ssrm/AmoledAdjustTimer;->mOutputPathExist:Z

    sget-boolean v9, Lcom/android/server/ssrm/AmoledAdjustTimer;->mInputPathExist:Z

    if-eqz v9, :cond_38

    sget-boolean v9, Lcom/android/server/ssrm/AmoledAdjustTimer;->mOutputPathExist:Z

    if-nez v9, :cond_71

    :cond_38
    const-string v9, "AmoledAdjustTimer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mInputPathExist = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/android/server/ssrm/AmoledAdjustTimer;->mInputPathExist:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "AmoledAdjustTimer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mOutputPathExist = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/android/server/ssrm/AmoledAdjustTimer;->mOutputPathExist:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    :goto_6c
    return-void

    :cond_6d
    move v9, v11

    goto :goto_20

    :cond_6f
    move v10, v11

    goto :goto_2e

    :cond_71
    const/4 v4, 0x0

    const/4 v7, 0x0

    :try_start_73
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string v10, "/sys/class/lcd/panel/temperature"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7f
    .catchall {:try_start_73 .. :try_end_7f} :catchall_b9
    .catch Ljava/io/FileNotFoundException; {:try_start_73 .. :try_end_7f} :catch_9e
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_7f} :catch_ad

    :try_start_7f
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_126
    .catch Ljava/io/FileNotFoundException; {:try_start_7f .. :try_end_86} :catch_12c
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_86} :catch_129

    if-eqz v5, :cond_8b

    :try_start_88
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_120

    :cond_8b
    :goto_8b
    move-object v4, v5

    :cond_8c
    :goto_8c
    if-eqz v7, :cond_94

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_c0

    :cond_94
    const-string v9, "AmoledAdjustTimer"

    const-string v10, "failed to read /sys/class/lcd/panel/temperature"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v11, Lcom/android/server/ssrm/AmoledAdjustTimer;->mOutputPathExist:Z

    goto :goto_6c

    :catch_9e
    move-exception v2

    :goto_9f
    :try_start_9f
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_b9

    if-eqz v4, :cond_8c

    :try_start_a4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_a8

    goto :goto_8c

    :catch_a8
    move-exception v2

    :goto_a9
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8c

    :catch_ad
    move-exception v2

    :goto_ae
    :try_start_ae
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_b9

    if-eqz v4, :cond_8c

    :try_start_b3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_b7

    goto :goto_8c

    :catch_b7
    move-exception v2

    goto :goto_a9

    :catchall_b9
    move-exception v9

    :goto_ba
    if-eqz v4, :cond_bf

    :try_start_bc
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bf} :catch_11b

    :cond_bf
    :goto_bf
    throw v9

    :cond_c0
    const/4 v6, 0x0

    new-instance v8, Ljava/util/StringTokenizer;

    const-string v9, ", "

    invoke-direct {v8, v7, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c8
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_d4

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    goto :goto_c8

    :cond_d4
    new-array v9, v6, [I

    sput-object v9, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    new-instance v8, Ljava/util/StringTokenizer;

    const-string v9, ", "

    invoke-direct {v8, v7, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_e0
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_6c

    sget-object v9, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v9, v3

    const-string v9, "AmoledAdjustTimer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TEMP_TABLE["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    aget v11, v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_e0

    :catch_11b
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_bf

    :catch_120
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8b

    :catchall_126
    move-exception v9

    move-object v4, v5

    goto :goto_ba

    :catch_129
    move-exception v2

    move-object v4, v5

    goto :goto_ae

    :catch_12c
    move-exception v2

    move-object v4, v5

    goto/16 :goto_9f
.end method

.method private getCurrentTemp()I
    .registers 8

    const/4 v4, 0x0

    sget-object v5, Lcom/android/server/ssrm/AmoledAdjustTimer;->currentTempFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_a

    :cond_9
    :goto_9
    return v4

    :cond_a
    const/4 v0, 0x0

    :try_start_b
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/class/power_supply/battery/temp"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_3f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_17} :catch_33

    :try_start_17
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2c

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_50
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_20} :catch_53

    move-result v4

    if-eqz v1, :cond_9

    :try_start_23
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_9

    :catch_27
    move-exception v2

    :goto_28
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :cond_2c
    if-eqz v1, :cond_31

    :try_start_2e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_4b

    :cond_31
    :goto_31
    move-object v0, v1

    goto :goto_9

    :catch_33
    move-exception v2

    :goto_34
    :try_start_34
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3f

    if-eqz v0, :cond_9

    :try_start_39
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_9

    :catch_3d
    move-exception v2

    goto :goto_28

    :catchall_3f
    move-exception v4

    :goto_40
    if-eqz v0, :cond_45

    :try_start_42
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    :cond_45
    :goto_45
    throw v4

    :catch_46
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_45

    :catch_4b
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_31

    :catchall_50
    move-exception v4

    move-object v0, v1

    goto :goto_40

    :catch_53
    move-exception v2

    move-object v0, v1

    goto :goto_34
.end method

.method public static getInstance()Lcom/android/server/ssrm/AmoledAdjustTimer;
    .registers 1

    sget-object v0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mService:Lcom/android/server/ssrm/AmoledAdjustTimer;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/server/ssrm/AmoledAdjustTimer;

    invoke-direct {v0}, Lcom/android/server/ssrm/AmoledAdjustTimer;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mService:Lcom/android/server/ssrm/AmoledAdjustTimer;

    :cond_b
    sget-object v0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mService:Lcom/android/server/ssrm/AmoledAdjustTimer;

    return-object v0
.end method

.method private static writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_28
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_19

    :try_start_6
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_39
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_12} :catch_3c

    if-eqz v2, :cond_17

    :try_start_14
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_34

    :cond_17
    :goto_17
    move-object v1, v2

    :cond_18
    :goto_18
    return-void

    :catch_19
    move-exception v0

    :goto_1a
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_28

    if-eqz v1, :cond_18

    :try_start_1f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_18

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18

    :catchall_28
    move-exception v3

    :goto_29
    if-eqz v1, :cond_2e

    :try_start_2b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    :cond_2e
    :goto_2e
    throw v3

    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2e

    :catch_34
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17

    :catchall_39
    move-exception v3

    move-object v1, v2

    goto :goto_29

    :catch_3c
    move-exception v0

    move-object v1, v2

    goto :goto_1a
.end method


# virtual methods
.method getStepByTemp(I)I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    array-length v1, v1

    if-ge v0, v1, :cond_e

    sget-object v1, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    aget v1, v1, v0

    mul-int/lit8 v1, v1, 0xa

    if-ge p1, v1, :cond_f

    :cond_e
    return v0

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method getStepByTemp2(I)I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    array-length v1, v1

    if-ge v0, v1, :cond_e

    sget-object v1, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    aget v1, v1, v0

    mul-int/lit8 v1, v1, 0xa

    if-gt p1, v1, :cond_f

    :cond_e
    return v0

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method getTempByStep(I)I
    .registers 3

    sget-object v0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_9

    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    sget-object v0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    aget v0, v0, p1

    goto :goto_8
.end method

.method public update()V
    .registers 7

    sget-boolean v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->mInputPathExist:Z

    if-eqz v3, :cond_c

    sget-boolean v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->mOutputPathExist:Z

    if-eqz v3, :cond_c

    sget-object v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    if-nez v3, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-direct {p0}, Lcom/android/server/ssrm/AmoledAdjustTimer;->getCurrentTemp()I

    move-result v3

    sput v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->currTemp:I

    sget v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->prevTemp:I

    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/AmoledAdjustTimer;->getStepByTemp(I)I

    move-result v2

    sget v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->currTemp:I

    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/AmoledAdjustTimer;->getStepByTemp(I)I

    move-result v0

    const-string v3, "AmoledAdjustTimer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prevTemp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/ssrm/AmoledAdjustTimer;->prevTemp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", currTemp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/ssrm/AmoledAdjustTimer;->currTemp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", prevStep = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", currStep = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-le v2, v0, :cond_88

    sget v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->currTemp:I

    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/AmoledAdjustTimer;->getStepByTemp2(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/AmoledAdjustTimer;->getTempByStep(I)I

    move-result v1

    sget v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->lastValue:I

    if-eq v3, v1, :cond_81

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/sys/class/lcd/panel/temperature"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/AmoledAdjustTimer;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    :cond_81
    sput v1, Lcom/android/server/ssrm/AmoledAdjustTimer;->lastValue:I

    :cond_83
    :goto_83
    sget v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->currTemp:I

    sput v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->prevTemp:I

    goto :goto_c

    :cond_88
    if-ge v2, v0, :cond_83

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/AmoledAdjustTimer;->getTempByStep(I)I

    move-result v1

    sget v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->lastValue:I

    if-eq v3, v1, :cond_ac

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/sys/class/lcd/panel/temperature"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/AmoledAdjustTimer;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ac
    sput v1, Lcom/android/server/ssrm/AmoledAdjustTimer;->lastValue:I

    goto :goto_83
.end method
