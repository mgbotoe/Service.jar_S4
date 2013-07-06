.class public Lcom/android/server/enterprise/auditlog/Dumper;
.super Ljava/lang/Thread;
.source "Dumper.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBegin:J

.field private mDeviceInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpFilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpResult:Z

.field private mEnd:J

.field private mFilter:Lcom/android/server/enterprise/auditlog/Filter;

.field private mHeaderDate:Ljava/text/SimpleDateFormat;

.field private mIsFullDump:Z

.field private mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

.field private mPackageName:Ljava/lang/String;

.field private mPfd:Landroid/os/ParcelFileDescriptor;

.field private mZos:Ljava/util/zip/GZIPOutputStream;


# direct methods
.method public constructor <init>(JJLandroid/os/ParcelFileDescriptor;Ljava/util/ArrayList;Lcom/android/server/enterprise/auditlog/IObserver;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;",
            "Lcom/android/server/enterprise/auditlog/IObserver;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "Dumper"

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    iput-object p6, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    iput-wide p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    const-string v0, "Dumper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dumper/constructor Begin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide p3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    const-string v0, "Dumper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dumper/constructor End: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    return-void
.end method

.method private fullDump()V
    .registers 11

    const-string v7, "Dumper"

    const-string v8, "fullDump - Begin"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v6, v5

    :cond_f
    :goto_f
    :try_start_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    const-string v7, "Dumper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DUMPER file name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_f

    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v7

    const-string v8, "r"

    invoke-direct {v5, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_f .. :try_end_50} :catchall_bb
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_50} :catch_e0

    :try_start_50
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    if-eqz v7, :cond_99

    :cond_54
    :goto_54
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_ae

    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    invoke-virtual {v7, v3}, Lcom/android/server/enterprise/auditlog/Filter;->filtering(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_54

    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_7e
    .catchall {:try_start_50 .. :try_end_7e} :catchall_de
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_7e} :catch_7f

    goto :goto_54

    :catch_7f
    move-exception v0

    :goto_80
    const/4 v7, 0x0

    :try_start_81
    iput-boolean v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    const-string v7, "Dumper"

    const-string v8, "Exception on fullDump"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v0, v8}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_93
    .catchall {:try_start_81 .. :try_end_93} :catchall_de

    if-eqz v5, :cond_98

    :try_start_95
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_cc

    :cond_98
    :goto_98
    return-void

    :cond_99
    :try_start_99
    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v1, v7, [B

    const/4 v7, 0x0

    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v5, v1, v7, v8}, Ljava/io/RandomAccessFile;->readFully([BII)V

    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v7, v1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    :cond_ae
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b1
    .catchall {:try_start_99 .. :try_end_b1} :catchall_de
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_b1} :catch_7f

    move-object v6, v5

    goto/16 :goto_f

    :cond_b4
    if-eqz v6, :cond_b9

    :try_start_b6
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_d5

    :cond_b9
    :goto_b9
    move-object v5, v6

    goto :goto_98

    :catchall_bb
    move-exception v7

    move-object v5, v6

    :goto_bd
    if-eqz v5, :cond_c2

    :try_start_bf
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_c3

    :cond_c2
    :goto_c2
    throw v7

    :catch_c3
    move-exception v0

    const-string v8, "Dumper"

    const-string v9, "fullDump - IOException Close"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c2

    :catch_cc
    move-exception v0

    const-string v7, "Dumper"

    const-string v8, "fullDump - IOException Close"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_98

    :catch_d5
    move-exception v0

    const-string v7, "Dumper"

    const-string v8, "fullDump - IOException Close"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b9

    :catchall_de
    move-exception v7

    goto :goto_bd

    :catch_e0
    move-exception v0

    move-object v5, v6

    goto :goto_80
.end method

.method private readFileLineByLine(Ljava/io/File;)V
    .registers 12

    const/4 v4, 0x0

    const-wide/16 v0, 0x0

    :try_start_3
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v7, "r"

    invoke-direct {v5, p1, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_a2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_a4

    :cond_a
    :goto_a
    :try_start_a
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_27

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_96
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_65

    move-result-object v6

    const/4 v7, 0x0

    :try_start_17
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_96
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_20} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_20} :catch_65

    move-result-wide v0

    :try_start_21
    iget-wide v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_96
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_23} :catch_65

    cmp-long v7, v0, v7

    if-lez v7, :cond_30

    :cond_27
    if-eqz v5, :cond_2c

    :try_start_29
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_a0

    :cond_2c
    :goto_2c
    move-object v4, v5

    :cond_2d
    :goto_2d
    return-void

    :catch_2e
    move-exception v2

    goto :goto_a

    :cond_30
    :try_start_30
    iget-wide v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    cmp-long v7, v0, v7

    if-ltz v7, :cond_a

    iget-wide v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    cmp-long v7, v0, v7

    if-gez v7, :cond_a

    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    if-eqz v7, :cond_78

    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    invoke-virtual {v7, v3}, Lcom/android/server/enterprise/auditlog/Filter;->filtering(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_64
    .catchall {:try_start_30 .. :try_end_64} :catchall_96
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_64} :catch_65

    goto :goto_a

    :catch_65
    move-exception v2

    move-object v4, v5

    :goto_67
    :try_start_67
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_67 .. :try_end_70} :catchall_a2

    if-eqz v4, :cond_2d

    :try_start_72
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76

    goto :goto_2d

    :catch_76
    move-exception v7

    goto :goto_2d

    :cond_78
    :try_start_78
    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_94
    .catchall {:try_start_78 .. :try_end_94} :catchall_96
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_94} :catch_65

    goto/16 :goto_a

    :catchall_96
    move-exception v7

    move-object v4, v5

    :goto_98
    if-eqz v4, :cond_9d

    :try_start_9a
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9e

    :cond_9d
    :goto_9d
    throw v7

    :catch_9e
    move-exception v8

    goto :goto_9d

    :catch_a0
    move-exception v7

    goto :goto_2c

    :catchall_a2
    move-exception v7

    goto :goto_98

    :catch_a4
    move-exception v2

    goto :goto_67
.end method

.method private readFullFile(Ljava/io/File;)V
    .registers 10

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4f

    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_75
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_8e

    :try_start_e
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    if-eqz v5, :cond_5e

    :cond_12
    :goto_12
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4e

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    invoke-virtual {v5, v2}, Lcom/android/server/enterprise/auditlog/Filter;->filtering(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_3c
    .catchall {:try_start_e .. :try_end_3c} :catchall_8b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_3c} :catch_3d

    goto :goto_12

    :catch_3d
    move-exception v0

    move-object v3, v4

    :goto_3f
    :try_start_3f
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_75

    if-eqz v3, :cond_4d

    :try_start_4a
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_85

    :cond_4d
    :goto_4d
    return-void

    :cond_4e
    move-object v3, v4

    :cond_4f
    :goto_4f
    if-eqz v3, :cond_4d

    :try_start_51
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_4d

    :catch_55
    move-exception v0

    const-string v5, "Dumper"

    const-string v6, "readFullFile - IOException"

    :goto_5a
    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d

    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    new-array v1, v5, [B

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v4, v1, v5, v6}, Ljava/io/RandomAccessFile;->readFully([BII)V

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v5, v1}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_73
    .catchall {:try_start_5e .. :try_end_73} :catchall_8b
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_73} :catch_3d

    move-object v3, v4

    goto :goto_4f

    :catchall_75
    move-exception v5

    :goto_76
    if-eqz v3, :cond_7b

    :try_start_78
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c

    :cond_7b
    :goto_7b
    throw v5

    :catch_7c
    move-exception v0

    const-string v6, "Dumper"

    const-string v7, "readFullFile - IOException"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7b

    :catch_85
    move-exception v0

    const-string v5, "Dumper"

    const-string v6, "readFullFile - IOException"

    goto :goto_5a

    :catchall_8b
    move-exception v5

    move-object v3, v4

    goto :goto_76

    :catch_8e
    move-exception v0

    goto :goto_3f
.end method

.method private selectDumpInterval()V
    .registers 8

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v0, 0x1

    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getTimestamp()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_8

    if-eqz v0, :cond_2f

    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/auditlog/Dumper;->readFileLineByLine(Ljava/io/File;)V

    const/4 v0, 0x0

    goto :goto_8

    :cond_2f
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getTimestamp()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_41

    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/auditlog/Dumper;->readFullFile(Ljava/io/File;)V

    goto :goto_8

    :cond_41
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/auditlog/Dumper;->readFileLineByLine(Ljava/io/File;)V

    :cond_48
    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    const-wide/16 v9, 0x0

    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v6, Ljava/util/zip/GZIPOutputStream;

    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v7}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v6, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd \'at\' HH:mm:ss z"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeaderDate:Ljava/text/SimpleDateFormat;

    const-string v4, "----------------------------------------------\n"

    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDeviceInfo:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    if-eqz v3, :cond_85

    :goto_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_85

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_5f
    .catchall {:try_start_2 .. :try_end_5f} :catchall_f0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5f} :catch_60

    goto :goto_35

    :catch_60
    move-exception v1

    :try_start_61
    const-string v6, "Dumper"

    const-string v7, "Exception on Dumper Thread"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v1, v7}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_61 .. :try_end_74} :catchall_f0

    const-string v6, "Dumper"

    const-string v7, "notifyDumpFinished - Send"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iget-boolean v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    iget-boolean v8, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    :goto_81
    invoke-interface {v6, v7, v8}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyDumpFinished(ZZ)V

    return-void

    :cond_85
    :try_start_85
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dump Log Generated: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeaderDate:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    iget-wide v6, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    cmp-long v6, v6, v9

    if-ltz v6, :cond_c7

    iget-wide v6, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    cmp-long v6, v6, v9

    if-gez v6, :cond_ec

    :cond_c7
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->fullDump()V

    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    if-nez v6, :cond_d1

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    :cond_d1
    :goto_d1
    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->finish()V

    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mZos:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_de
    .catchall {:try_start_85 .. :try_end_de} :catchall_f0
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_de} :catch_60

    const-string v6, "Dumper"

    const-string v7, "notifyDumpFinished - Send"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iget-boolean v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    iget-boolean v8, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    goto :goto_81

    :cond_ec
    :try_start_ec
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->selectDumpInterval()V
    :try_end_ef
    .catchall {:try_start_ec .. :try_end_ef} :catchall_f0
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_ef} :catch_60

    goto :goto_d1

    :catchall_f0
    move-exception v6

    const-string v7, "Dumper"

    const-string v8, "notifyDumpFinished - Send"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iget-boolean v8, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    iget-boolean v9, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    invoke-interface {v7, v8, v9}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyDumpFinished(ZZ)V

    throw v6
.end method

.method public setDeviceInfo(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDeviceInfo:Ljava/util/List;

    return-void
.end method

.method public setFilter(Lcom/android/server/enterprise/auditlog/Filter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    return-void
.end method
