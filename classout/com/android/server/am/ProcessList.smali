.class Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# static fields
.field static final BACKUP_APP_ADJ:I = 0x4

.field static final CONTENT_APP_IDLE_OFFSET:J = 0x3a98L

.field static final DEBUG:Z = false

.field static final DHA_INCREASE_THRESHOLD:J = 0xa00000L

.field static final DHA_MAX_MARGIN:J = 0x800000L

.field static final DHA_MIN_MARGIN:J = 0x400000L

.field static final EMPTY_APP_IDLE_OFFSET:J = 0x1d4c0L

.field static final FOREGROUND_APP_ADJ:I = 0x0

#the value of this static final field might be set in the static constructor
.field static final FREEMEM_FOR_LARGEMEM_MODEL:J = 0x0L

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x3

.field static final HIDDEN_APP_MAX_ADJ:I = 0xf

.field static HIDDEN_APP_MIN_ADJ:I = 0x0

.field static final HOME_APP_ADJ:I = 0x6

#the value of this static final field might be set in the static constructor
.field static final INIT_HIDDEN_APPS:I = 0x0

.field static final MAX_EMPTY_TIME:J = 0x1b7740L

#the value of this static final field might be set in the static constructor
.field static final MAX_HIDDEN_APPS:I = 0x0

#the value of this static final field might be set in the static constructor
.field static final MAX_HIDDEN_APPS_FOR_LOWMEM:I = 0x0

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static final MIN_HIDDEN_APPS:I = 0x2

#the value of this static final field might be set in the static constructor
.field static final MIN_HIDDEN_APPS_FOR_DHA:I = 0x0

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0x2

.field static final PERSISTENT_PROC_ADJ:I = -0xc

.field static final PREVIOUS_APP_ADJ:I = 0x7

.field static final SERVICE_ADJ:I = 0x5

.field static final SERVICE_B_ADJ:I = 0x8

.field static final SYSTEM_ADJ:I = -0x10

#the value of this static final field might be set in the static constructor
.field static final TOTAL_DEVICE_MEMORY:J = 0x0L

.field static final TRIM_CRITICAL_THRESHOLD:I = 0x3

.field static final TRIM_EMPTY_APPS:I = 0x3

.field static final TRIM_HIDDEN_APPS:I = 0x3

.field static final TRIM_LOW_THRESHOLD:I = 0x5

.field static final VISIBLE_APP_ADJ:I = 0x1

.field private static mInfo:Lcom/android/internal/util/MemInfoReader;


# instance fields
.field private mHaveDisplaySize:Z

.field private final mOomAdj:[I

.field private final mOomKillDepth:[I

.field private final mOomMinFree:[J

.field private final mOomMinFreeHigh:[J

.field private final mOomMinFreeLow:[J

.field private mSzDHAThreshold:J

.field private final mTotalMemMb:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x9

    sput v0, Lcom/android/server/am/ProcessList;->HIDDEN_APP_MIN_ADJ:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-static {}, Lcom/android/server/am/ProcessList;->totalDeviceMemory()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-string v0, "MAX_HIDDEN_APPS"

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->dynamicStatus(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_HIDDEN_APPS:I

    const-string v0, "INIT_HIDDEN_APPS"

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->dynamicStatus(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->INIT_HIDDEN_APPS:I

    const-string v0, "MIN_HIDDEN_APPS_FOR_DHA"

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->dynamicStatus(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MIN_HIDDEN_APPS_FOR_DHA:I

    const-string v0, "MAX_HIDDEN_APPS_FOR_LOWMEM"

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->dynamicStatus(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_HIDDEN_APPS_FOR_LOWMEM:I

    const-string v0, "FREEMEM_FOR_LARGEMEM_MODEL"

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->dynamicStatus(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/am/ProcessList;->FREEMEM_FOR_LARGEMEM_MODEL:J

    return-void
.end method

.method constructor <init>()V
    .registers 8

    const/4 v6, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x6

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v5, [I

    aput v4, v1, v4

    aput v2, v1, v2

    aput v3, v1, v3

    const/4 v2, 0x3

    aput v6, v1, v2

    sget v2, Lcom/android/server/am/ProcessList;->HIDDEN_APP_MIN_ADJ:I

    aput v2, v1, v6

    const/4 v2, 0x5

    const/16 v3, 0xf

    aput v3, v1, v2

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    new-array v1, v5, [J

    fill-array-data v1, :array_50

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    new-array v1, v5, [J

    fill-array-data v1, :array_6c

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[J

    new-array v1, v5, [I

    fill-array-data v1, :array_88

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomKillDepth:[I

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    const-wide/32 v1, 0x2000000

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    sget-wide v1, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    invoke-direct {p0, v4, v4, v4}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    return-void

    nop

    :array_50
    .array-data 0x8
        0x0t 0x20t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x30t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x60t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x70t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_6c
    .array-data 0x8
        0x0t 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xa0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xc0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xe0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_88
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static dynamicStatus(Ljava/lang/String;)I
    .registers 14

    const/16 v4, 0x78

    const/16 v5, 0xa0

    const/16 v3, 0xf0

    const/16 v7, 0x140

    const/16 v8, 0x1e0

    const/4 v6, 0x0

    const-string v9, "ro.sf.lcd_density"

    const-string v10, "empty"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_13
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v9, "DHA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "density is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "FREEMEM_FOR_LARGEMEM_MODEL"

    if-ne p0, v9, :cond_46

    const/16 v9, 0x140

    if-gt v0, v9, :cond_44

    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x600

    cmp-long v9, v9, v11

    if-lez v9, :cond_42

    const/high16 v6, 0x1f40

    :goto_41
    return v6

    :cond_42
    const/4 v6, 0x0

    goto :goto_41

    :cond_44
    const/4 v6, 0x0

    goto :goto_41

    :cond_46
    const-string v9, "MAX_HIDDEN_APPS"

    if-ne p0, v9, :cond_4d

    const/16 v6, 0x3c

    goto :goto_41

    :cond_4d
    const-string v9, "INIT_HIDDEN_APPS"

    if-ne p0, v9, :cond_a4

    const/16 v9, 0x78

    if-gt v0, v9, :cond_58

    const/16 v6, 0xf

    goto :goto_41

    :cond_58
    const/16 v9, 0xa0

    if-gt v0, v9, :cond_6a

    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x200

    cmp-long v9, v9, v11

    if-gez v9, :cond_67

    const/16 v6, 0xf

    goto :goto_41

    :cond_67
    const/16 v6, 0x18

    goto :goto_41

    :cond_6a
    const/16 v9, 0xf0

    if-gt v0, v9, :cond_8f

    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x300

    cmp-long v9, v9, v11

    if-gez v9, :cond_79

    const/16 v6, 0xf

    goto :goto_41

    :cond_79
    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x300

    cmp-long v9, v9, v11

    if-ltz v9, :cond_8c

    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x400

    cmp-long v9, v9, v11

    if-gez v9, :cond_8c

    const/16 v6, 0x18

    goto :goto_41

    :cond_8c
    const/16 v6, 0x18

    goto :goto_41

    :cond_8f
    const/16 v9, 0x140

    if-gt v0, v9, :cond_a1

    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x400

    cmp-long v9, v9, v11

    if-gez v9, :cond_9e

    const/16 v6, 0x18

    goto :goto_41

    :cond_9e
    const/16 v6, 0x1e

    goto :goto_41

    :cond_a1
    const/16 v6, 0x1e

    goto :goto_41

    :cond_a4
    const-string v9, "MIN_HIDDEN_APPS_FOR_DHA"

    if-ne p0, v9, :cond_101

    const/16 v9, 0x78

    if-gt v0, v9, :cond_af

    const/16 v6, 0xf

    goto :goto_41

    :cond_af
    const/16 v9, 0xa0

    if-gt v0, v9, :cond_c1

    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x200

    cmp-long v9, v9, v11

    if-gez v9, :cond_be

    const/16 v6, 0xf

    goto :goto_41

    :cond_be
    const/16 v6, 0xf

    goto :goto_41

    :cond_c1
    const/16 v9, 0xf0

    if-gt v0, v9, :cond_e9

    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x300

    cmp-long v9, v9, v11

    if-gez v9, :cond_d1

    const/16 v6, 0xf

    goto/16 :goto_41

    :cond_d1
    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x300

    cmp-long v9, v9, v11

    if-ltz v9, :cond_e5

    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x400

    cmp-long v9, v9, v11

    if-gez v9, :cond_e5

    const/16 v6, 0xf

    goto/16 :goto_41

    :cond_e5
    const/16 v6, 0x15

    goto/16 :goto_41

    :cond_e9
    const/16 v9, 0x140

    if-gt v0, v9, :cond_fd

    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x400

    cmp-long v9, v9, v11

    if-gez v9, :cond_f9

    const/16 v6, 0xf

    goto/16 :goto_41

    :cond_f9
    const/16 v6, 0x15

    goto/16 :goto_41

    :cond_fd
    const/16 v6, 0x15

    goto/16 :goto_41

    :cond_101
    const/16 v9, 0x78

    if-gt v0, v9, :cond_109

    const/16 v6, 0x18

    goto/16 :goto_41

    :cond_109
    const/16 v9, 0xa0

    if-gt v0, v9, :cond_11d

    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x200

    cmp-long v9, v9, v11

    if-gez v9, :cond_119

    const/16 v6, 0x15

    goto/16 :goto_41

    :cond_119
    const/16 v6, 0x18

    goto/16 :goto_41

    :cond_11d
    const/16 v9, 0xf0

    if-gt v0, v9, :cond_145

    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x300

    cmp-long v9, v9, v11

    if-gez v9, :cond_12d

    const/16 v6, 0x18

    goto/16 :goto_41

    :cond_12d
    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x300

    cmp-long v9, v9, v11

    if-ltz v9, :cond_141

    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x400

    cmp-long v9, v9, v11

    if-gez v9, :cond_141

    const/16 v6, 0x1e

    goto/16 :goto_41

    :cond_141
    const/16 v6, 0x1e

    goto/16 :goto_41

    :cond_145
    const/16 v9, 0x140

    if-gt v0, v9, :cond_159

    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J
    :try_end_14b
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_14b} :catch_15d

    const-wide/16 v11, 0x400

    cmp-long v9, v9, v11

    if-gez v9, :cond_155

    const/16 v6, 0x1e

    goto/16 :goto_41

    :cond_155
    const/16 v6, 0x33

    goto/16 :goto_41

    :cond_159
    const/16 v6, 0x3c

    goto/16 :goto_41

    :catch_15d
    move-exception v2

    const-string v9, "DHA"

    const-string v10, "densityS is invalid"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "MAX_HIDDEN_APPS"

    if-ne p0, v9, :cond_16d

    const/16 v6, 0x3c

    goto/16 :goto_41

    :cond_16d
    const-string v9, "INIT_HIDDEN_APPS"

    if-ne p0, v9, :cond_175

    const/16 v6, 0x18

    goto/16 :goto_41

    :cond_175
    const-string v9, "MIN_HIDDEN_APPS_FOR_DHA"

    if-ne p0, v9, :cond_17d

    const/16 v6, 0xf

    goto/16 :goto_41

    :cond_17d
    const/16 v6, 0x18

    goto/16 :goto_41
.end method

.method static totalDeviceMemory()J
    .registers 4

    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    :cond_b
    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private updateOomLevels(IIZ)V
    .registers 23

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v17, 0x12c

    sub-long v15, v15, v17

    long-to-float v15, v15

    const/high16 v16, 0x43c8

    div-float v14, v15, v16

    const v11, 0x25800

    const v9, 0xfa000

    mul-int v15, p1, p2

    int-to-float v15, v15

    int-to-float v0, v11

    move/from16 v16, v0

    sub-float v15, v15, v16

    const v16, 0xd4800

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v13, v15, v16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    cmpl-float v15, v14, v13

    if-lez v15, :cond_a4

    move v12, v14

    :goto_39
    const/4 v15, 0x0

    cmpg-float v15, v12, v15

    if-gez v15, :cond_a6

    const/4 v12, 0x0

    :cond_3f
    :goto_3f
    const/4 v5, 0x0

    :goto_40
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v15, v15

    if-ge v5, v15, :cond_af

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    aget-wide v7, v15, v5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[J

    aget-wide v3, v15, v5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    long-to-float v0, v7

    move/from16 v16, v0

    sub-long v17, v3, v7

    move-wide/from16 v0, v17

    long-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v12

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-long v0, v0

    move-wide/from16 v16, v0

    aput-wide v16, v15, v5

    if-lez v5, :cond_7d

    const/16 v15, 0x2c

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v15, 0x2c

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v15, 0x2c

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v15, v15, v5

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    aget-wide v15, v15, v5

    const-wide/16 v17, 0x400

    mul-long v15, v15, v17

    const-wide/16 v17, 0x1000

    div-long v15, v15, v17

    move-wide v0, v15

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomKillDepth:[I

    aget v15, v15, v5

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_40

    :cond_a4
    move v12, v13

    goto :goto_39

    :cond_a6
    const/high16 v15, 0x3f80

    cmpl-float v15, v12, v15

    if-lez v15, :cond_3f

    const/high16 v12, 0x3f80

    goto :goto_3f

    :cond_af
    if-eqz p3, :cond_d8

    const-string v15, "/sys/module/lowmemorykiller/parameters/adj"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/server/am/ProcessList;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "/sys/module/lowmemorykiller/parameters/minfree"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/server/am/ProcessList;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "/sys/module/lowmemorykiller/parameters/adj_killed_level"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/server/am/ProcessList;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d8
    mul-int v15, p2, p1

    const v16, 0x1fa400

    move/from16 v0, v16

    if-ne v15, v0, :cond_e3

    const/high16 v12, 0x4000

    :cond_e3
    const/16 v15, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v15

    const/high16 v17, 0x4a80

    const/high16 v18, 0x4a80

    mul-float v18, v18, v12

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-long v0, v0

    move-wide/from16 v17, v0

    add-long v15, v15, v17

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    return-void
.end method

.method private writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_38
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_17

    :try_start_6
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_41
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_44

    if-eqz v2, :cond_47

    :try_start_f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_14

    move-object v1, v2

    :cond_13
    :goto_13
    return-void

    :catch_14
    move-exception v3

    move-object v1, v2

    goto :goto_13

    :catch_17
    move-exception v0

    :goto_18
    :try_start_18
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_38

    if-eqz v1, :cond_13

    :try_start_32
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_13

    :catch_36
    move-exception v3

    goto :goto_13

    :catchall_38
    move-exception v3

    :goto_39
    if-eqz v1, :cond_3e

    :try_start_3b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    :cond_3e
    :goto_3e
    throw v3

    :catch_3f
    move-exception v4

    goto :goto_3e

    :catchall_41
    move-exception v3

    move-object v1, v2

    goto :goto_39

    :catch_44
    move-exception v0

    move-object v1, v2

    goto :goto_18

    :cond_47
    move-object v1, v2

    goto :goto_13
.end method


# virtual methods
.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .registers 6

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v1, :cond_1f

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_1f

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_1f

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    :cond_1f
    return-void
.end method

.method getMemLevel(I)J
    .registers 7

    const-wide/16 v3, 0x400

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_14

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    aget-wide v1, v1, v0

    mul-long/2addr v1, v3

    :goto_13
    return-wide v1

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_17
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-wide v1, v1, v2

    mul-long/2addr v1, v3

    goto :goto_13
.end method

.method public updateHiddenAppNum(III)I
    .registers 16

    const-wide/16 v10, 0x0

    move v2, p1

    mul-int/lit8 v6, p1, 0x2

    div-int/lit8 v0, v6, 0x3

    sub-int v1, p1, v0

    sget-object v6, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    if-eqz v6, :cond_4c

    sget-object v6, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v6}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    sget-object v6, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v6}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v4

    cmp-long v6, v4, v10

    if-nez v6, :cond_1e

    move v3, v2

    :goto_1d
    return v3

    :cond_1e
    iget-wide v6, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    cmp-long v6, v4, v6

    if-gez v6, :cond_4e

    sget v6, Lcom/android/server/am/ProcessList;->MIN_HIDDEN_APPS_FOR_DHA:I

    if-le v2, v6, :cond_4e

    add-int/lit8 v2, v2, -0x3

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Decrease Hidden App Number from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    :goto_4c
    move v3, v2

    goto :goto_1d

    :cond_4e
    iget-wide v6, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    const-wide/32 v8, 0xa00000

    add-long/2addr v6, v8

    cmp-long v6, v4, v6

    if-lez v6, :cond_4c

    sget v6, Lcom/android/server/am/ProcessList;->MAX_HIDDEN_APPS:I

    if-ge v2, v6, :cond_4c

    if-le v1, p2, :cond_60

    if-gt v0, p3, :cond_4c

    :cond_60
    sget v6, Lcom/android/server/am/ProcessList;->MAX_HIDDEN_APPS_FOR_LOWMEM:I

    if-ge v2, v6, :cond_89

    add-int/lit8 v2, v2, 0x3

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Increase Hidden App Number from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    :cond_89
    sget-wide v6, Lcom/android/server/am/ProcessList;->FREEMEM_FOR_LARGEMEM_MODEL:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_4c

    sget-wide v6, Lcom/android/server/am/ProcessList;->FREEMEM_FOR_LARGEMEM_MODEL:J

    cmp-long v6, v4, v6

    if-lez v6, :cond_4c

    add-int/lit8 v2, v2, 0x3

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Increase Hidden App Number from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c
.end method
