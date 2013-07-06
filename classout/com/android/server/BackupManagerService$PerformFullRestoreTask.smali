.class Lcom/android/server/BackupManagerService$PerformFullRestoreTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformFullRestoreTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;,
        Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;,
        Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreFileRunnable;
    }
.end annotation


# instance fields
.field mAgent:Landroid/app/IBackupAgent;

.field mAgentPackage:Ljava/lang/String;

.field mBytes:J

.field final mClearedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentPassword:Ljava/lang/String;

.field mDecryptPassword:Ljava/lang/String;

.field final mDeleteObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;

.field mInputFile:Landroid/os/ParcelFileDescriptor;

.field final mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

.field mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mManifestSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field final mPackageInstallers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPackagePolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/BackupManagerService$RestorePolicy;",
            ">;"
        }
    .end annotation
.end field

.field mPipes:[Landroid/os/ParcelFileDescriptor;

.field mTargetApp:Landroid/content/pm/ApplicationInfo;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 9

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    new-instance v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    invoke-direct {v0, p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;-><init>(Lcom/android/server/BackupManagerService$PerformFullRestoreTask;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    new-instance v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;

    invoke-direct {v0, p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;-><init>(Lcom/android/server/BackupManagerService$PerformFullRestoreTask;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mDeleteObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;

    iput-object p2, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mCurrentPassword:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mDecryptPassword:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    iput-object p6, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgentPackage:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    const-string v1, "com.android.providers.settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private HEXLOG([B)V
    .registers 13

    const/16 v5, 0x10

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    array-length v4, p1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v6, 0x40

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_d
    if-lez v4, :cond_4f

    const-string v6, "%04x   "

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v4, v5, :cond_3e

    move v2, v5

    :goto_23
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_40

    const-string v6, "%02x "

    new-array v7, v10, [Ljava/lang/Object;

    add-int v8, v3, v1

    aget-byte v8, p1, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_3e
    move v2, v4

    goto :goto_23

    :cond_40
    const-string v6, "hexdump"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    sub-int/2addr v4, v2

    add-int/2addr v3, v2

    goto :goto_d

    :cond_4f
    return-void
.end method


# virtual methods
.method decodeAesHeaderAndInitialize(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 33

    const/16 v19, 0x0

    :try_start_2
    const-string v26, "AES-256"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_129

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    #calls: Lcom/android/server/BackupManagerService;->hexToByteArray(Ljava/lang/String;)[B
    invoke-static {v0, v1}, Lcom/android/server/BackupManagerService;->access$1800(Lcom/android/server/BackupManagerService;Ljava/lang/String;)[B

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    #calls: Lcom/android/server/BackupManagerService;->hexToByteArray(Ljava/lang/String;)[B
    invoke-static {v0, v8}, Lcom/android/server/BackupManagerService;->access$1800(Lcom/android/server/BackupManagerService;Ljava/lang/String;)[B

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v12

    const-string v26, "AES/CBC/PKCS5Padding"

    invoke-static/range {v26 .. v26}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mDecryptPassword:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v24

    move/from16 v3, v21

    #calls: Lcom/android/server/BackupManagerService;->buildPasswordKey(Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/BackupManagerService;->access$1400(Lcom/android/server/BackupManagerService;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    #calls: Lcom/android/server/BackupManagerService;->hexToByteArray(Ljava/lang/String;)[B
    invoke-static {v0, v1}, Lcom/android/server/BackupManagerService;->access$1800(Lcom/android/server/BackupManagerService;Ljava/lang/String;)[B

    move-result-object v4

    new-instance v10, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v10, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/16 v26, 0x2

    new-instance v27, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface/range {v23 .. v23}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v28

    const-string v29, "AES"

    invoke-direct/range {v27 .. v29}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    #calls: Lcom/android/server/BackupManagerService;->hexToByteArray(Ljava/lang/String;)[B
    invoke-static {v0, v12}, Lcom/android/server/BackupManagerService;->access$1800(Lcom/android/server/BackupManagerService;Ljava/lang/String;)[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v14

    const/16 v17, 0x0

    add-int/lit8 v18, v17, 0x1

    aget-byte v11, v14, v17

    add-int/lit8 v26, v11, 0x1

    move/from16 v0, v18

    move/from16 v1, v26

    invoke-static {v14, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    add-int/lit8 v17, v11, 0x1

    add-int/lit8 v18, v17, 0x1

    aget-byte v11, v14, v17

    add-int v26, v18, v11

    move/from16 v0, v18

    move/from16 v1, v26

    invoke-static {v14, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13

    add-int v17, v18, v11

    add-int/lit8 v18, v17, 0x1

    aget-byte v11, v14, v17

    add-int v26, v18, v11

    move/from16 v0, v18

    move/from16 v1, v26

    invoke-static {v14, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v21

    #calls: Lcom/android/server/BackupManagerService;->makeKeyChecksum([B[BI)[B
    invoke-static {v0, v13, v7, v1}, Lcom/android/server/BackupManagerService;->access$1700(Lcom/android/server/BackupManagerService;[B[BI)[B

    move-result-object v6

    invoke-static {v6, v15}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v26

    if-eqz v26, :cond_114

    new-instance v10, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v10, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/16 v26, 0x2

    new-instance v27, Ljavax/crypto/spec/SecretKeySpec;

    const-string v28, "AES"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v0, v13, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v20, Ljavax/crypto/CipherInputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    move-object/from16 v19, v20

    :goto_113
    return-object v19

    :cond_114
    const-string v26, "BackupManagerService"

    const-string v27, "Incorrect password"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_11b} :catch_11c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_11b} :catch_146
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_11b} :catch_14f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_11b} :catch_158
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_11b} :catch_161
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_11b} :catch_16a
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_11b} :catch_173
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_11b} :catch_17c

    goto :goto_113

    :catch_11c
    move-exception v9

    const-string v26, "BackupManagerService"

    const-string v27, "Needed parameter spec unavailable!"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_113

    :cond_129
    :try_start_129
    const-string v26, "BackupManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Unsupported encryption method: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_145
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_129 .. :try_end_145} :catch_11c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_129 .. :try_end_145} :catch_146
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_129 .. :try_end_145} :catch_14f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_129 .. :try_end_145} :catch_158
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_129 .. :try_end_145} :catch_161
    .catch Ljava/security/InvalidKeyException; {:try_start_129 .. :try_end_145} :catch_16a
    .catch Ljava/lang/NumberFormatException; {:try_start_129 .. :try_end_145} :catch_173
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_145} :catch_17c

    goto :goto_113

    :catch_146
    move-exception v9

    const-string v26, "BackupManagerService"

    const-string v27, "Incorrect password"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_113

    :catch_14f
    move-exception v9

    const-string v26, "BackupManagerService"

    const-string v27, "Invalid block size in master key"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_113

    :catch_158
    move-exception v9

    const-string v26, "BackupManagerService"

    const-string v27, "Needed decryption algorithm unavailable!"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_113

    :catch_161
    move-exception v9

    const-string v26, "BackupManagerService"

    const-string v27, "Needed padding mechanism unavailable!"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_113

    :catch_16a
    move-exception v9

    const-string v26, "BackupManagerService"

    const-string v27, "Illegal password; aborting"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_113

    :catch_173
    move-exception v9

    const-string v26, "BackupManagerService"

    const-string v27, "Can\'t parse restore data header"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_113

    :catch_17c
    move-exception v9

    const-string v26, "BackupManagerService"

    const-string v27, "Can\'t read input header"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_113
.end method

.method dumpFileMetadata(Lcom/android/server/BackupManagerService$FileMetadata;)V
    .registers 2

    return-void
.end method

.method extractLine([BI[Ljava/lang/String;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v1, p1

    if-lt p2, v1, :cond_b

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Incomplete data"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b
    move v2, p2

    :goto_c
    if-ge v2, v1, :cond_14

    aget-byte v0, p1, v2

    const/16 v3, 0xa

    if-ne v0, v3, :cond_21

    :cond_14
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    sub-int v5, v2, p2

    invoke-direct {v4, p1, p2, v5}, Ljava/lang/String;-><init>([BII)V

    aput-object v4, p3, v3

    add-int/lit8 v2, v2, 0x1

    return v2

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_c
.end method

.method extractRadix([BIII)J
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v3, 0x0

    add-int v1, p2, p3

    move v2, p2

    :goto_5
    if-ge v2, v1, :cond_f

    aget-byte v0, p1, v2

    if-eqz v0, :cond_f

    const/16 v5, 0x20

    if-ne v0, v5, :cond_10

    :cond_f
    return-wide v3

    :cond_10
    const/16 v5, 0x30

    if-lt v0, v5, :cond_1a

    add-int/lit8 v5, p4, 0x30

    add-int/lit8 v5, v5, -0x1

    if-le v0, v5, :cond_3e

    :cond_1a
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid number in header: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-char v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' for radix "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3e
    int-to-long v5, p4

    mul-long/2addr v5, v3

    add-int/lit8 v7, v0, -0x30

    int-to-long v7, v7

    add-long v3, v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method extractString([BII)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v0, p2, p3

    move v1, p2

    :goto_3
    if-ge v1, v0, :cond_c

    aget-byte v2, p1, v1

    if-eqz v2, :cond_c

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    new-instance v2, Ljava/lang/String;

    sub-int v3, v1, p2

    const-string v4, "US-ASCII"

    invoke-direct {v2, p1, p2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2
.end method

.method installApk(Lcom/android/server/BackupManagerService$FileMetadata;Ljava/lang/String;Ljava/io/InputStream;)Z
    .registers 26

    const/4 v9, 0x1

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mDataDir:Ljava/io/File;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_1c
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const v18, 0x8000

    move/from16 v0, v18

    new-array v6, v0, [B

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    :goto_2c
    const-wide/16 v18, 0x0

    cmp-long v18, v13, v18

    if-lez v18, :cond_75

    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v18, v18, v13

    if-gez v18, :cond_73

    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v15, v0

    :goto_44
    const/16 v18, 0x0

    long-to-int v0, v15

    move/from16 v19, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-ltz v7, :cond_66

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    move-wide/from16 v18, v0

    int-to-long v0, v7

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    :cond_66
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v6, v0, v7}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v0, v7

    move-wide/from16 v18, v0

    sub-long v13, v13, v18

    goto :goto_2c

    :cond_73
    move-wide v15, v13

    goto :goto_44

    :cond_75
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    const/16 v18, 0x1

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    move-object/from16 v19, v0

    const/16 v20, 0x22

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, p2

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->waitForCompletion()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->getResult()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    sget-object v19, Lcom/android/server/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/BackupManagerService$RestorePolicy;
    :try_end_da
    .catchall {:try_start_1c .. :try_end_da} :catchall_237
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_da} :catch_16d

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_e1

    const/4 v9, 0x0

    :cond_e1
    :goto_e1
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    return v9

    :cond_e5
    const/16 v17, 0x0

    :try_start_e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_178

    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restore stream claimed to include apk for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " but apk was really "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    const/16 v17, 0x1

    :cond_136
    :goto_136
    if-eqz v17, :cond_e1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mDeleteObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInstallObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mDeleteObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mDeleteObserver:Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;->waitForCompletion()V
    :try_end_16b
    .catchall {:try_start_e7 .. :try_end_16b} :catchall_237
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_16b} :catch_16d

    goto/16 :goto_e1

    :catch_16d
    move-exception v8

    :try_start_16e
    const-string v18, "BackupManagerService"

    const-string v19, "Unable to transcribe restored apk for install"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_175
    .catchall {:try_start_16e .. :try_end_175} :catchall_237

    const/4 v9, 0x0

    goto/16 :goto_e1

    :cond_178
    :try_start_178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x40

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    const v19, 0x8000

    and-int v18, v18, v19

    if-nez v18, :cond_1c6

    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restore stream contains apk of package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " but it disallows backup/restore"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_136

    :cond_1c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/content/pm/Signature;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/server/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z
    invoke-static {v0, v12, v11}, Lcom/android/server/BackupManagerService;->access$1900(Lcom/android/server/BackupManagerService;[Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v18

    if-nez v18, :cond_136

    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Installed app "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " signatures do not match restore manifest"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20a
    .catchall {:try_start_178 .. :try_end_20a} :catchall_237
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_178 .. :try_end_20a} :catch_20f
    .catch Ljava/io/IOException; {:try_start_178 .. :try_end_20a} :catch_16d

    const/4 v9, 0x0

    const/16 v17, 0x1

    goto/16 :goto_136

    :catch_20f
    move-exception v8

    :try_start_210
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Install of package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " succeeded but now not found"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_234
    .catchall {:try_start_210 .. :try_end_234} :catchall_237
    .catch Ljava/io/IOException; {:try_start_210 .. :try_end_234} :catch_16d

    const/4 v9, 0x0

    goto/16 :goto_136

    :catchall_237
    move-exception v18

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    throw v18
.end method

.method readAppManifest(Lcom/android/server/BackupManagerService$FileMetadata;Ljava/io/InputStream;)Lcom/android/server/BackupManagerService$RestorePolicy;
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x10000

    cmp-long v18, v18, v20

    if-lez v18, :cond_2c

    new-instance v18, Ljava/io/IOException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restore manifest too big; corrupt? size="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_2c
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v4, v0, [B

    const/16 v18, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-nez v18, :cond_12f

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    sget-object v14, Lcom/android/server/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/BackupManagerService$RestorePolicy;

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v11, 0x0

    :try_start_82
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    const/16 v18, 0x0

    aget-object v18, v16, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2e2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    const/16 v18, 0x0

    aget-object v9, v16, v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2b6

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    const/16 v18, 0x0

    aget-object v18, v16, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    const/16 v18, 0x0

    aget-object v18, v16, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    const/16 v18, 0x0

    aget-object v18, v16, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_137

    const/16 v18, 0x0

    aget-object v18, v16, v18

    :goto_ea
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/BackupManagerService$FileMetadata;->installerPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    const/16 v18, 0x0

    aget-object v18, v16, v18

    const-string v19, "1"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    const/16 v18, 0x0

    aget-object v18, v16, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_28a

    new-array v15, v10, [Landroid/content/pm/Signature;

    const/4 v8, 0x0

    :goto_117
    if-ge v8, v10, :cond_13a

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v11

    new-instance v18, Landroid/content/pm/Signature;

    const/16 v19, 0x0

    aget-object v19, v16, v19

    invoke-direct/range {v18 .. v19}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v18, v15, v8
    :try_end_12c
    .catch Ljava/lang/NumberFormatException; {:try_start_82 .. :try_end_12c} :catch_269
    .catch Ljava/lang/IllegalArgumentException; {:try_start_82 .. :try_end_12c} :catch_2aa

    add-int/lit8 v8, v8, 0x1

    goto :goto_117

    :cond_12f
    new-instance v18, Ljava/io/IOException;

    const-string v19, "Unexpected EOF in manifest"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_137
    const/16 v18, 0x0

    goto :goto_ea

    :cond_13a
    :try_start_13a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14d
    .catch Ljava/lang/NumberFormatException; {:try_start_13a .. :try_end_14d} :catch_269
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13a .. :try_end_14d} :catch_2aa

    :try_start_14d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x40

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v18, 0x8000

    and-int v18, v18, v6

    if-nez v18, :cond_180

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->isEdmRestoreRequest:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1bf

    :cond_180
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    const/16 v19, 0x2710

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_19e

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_243

    :cond_19e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/server/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z
    invoke-static {v0, v15, v12}, Lcom/android/server/BackupManagerService;->access$1900(Lcom/android/server/BackupManagerService;[Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v18

    if-eqz v18, :cond_21f

    iget v0, v12, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, v17

    if-lt v0, v1, :cond_1ec

    const-string v18, "BackupManagerService"

    const-string v19, "Sig + version match; taking data"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v14, Lcom/android/server/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/BackupManagerService$RestorePolicy;
    :try_end_1bf
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14d .. :try_end_1bf} :catch_23e
    .catch Ljava/lang/NumberFormatException; {:try_start_14d .. :try_end_1bf} :catch_269
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14d .. :try_end_1bf} :catch_2aa

    :cond_1bf
    :goto_1bf
    :try_start_1bf
    sget-object v18, Lcom/android/server/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/BackupManagerService$RestorePolicy;

    move-object/from16 v0, v18

    if-ne v14, v0, :cond_1eb

    if-nez v7, :cond_1eb

    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Cannot restore package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " without the matching .apk"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1eb
    .catch Ljava/lang/NumberFormatException; {:try_start_1bf .. :try_end_1eb} :catch_269
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1bf .. :try_end_1eb} :catch_2aa

    :cond_1eb
    :goto_1eb
    return-object v14

    :cond_1ec
    :try_start_1ec
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Data version "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " is newer than installed version "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v12, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " - requiring apk"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v14, Lcom/android/server/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/BackupManagerService$RestorePolicy;

    goto :goto_1bf

    :cond_21f
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restore manifest signatures do not match installed application for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1ec .. :try_end_23d} :catch_23e
    .catch Ljava/lang/NumberFormatException; {:try_start_1ec .. :try_end_23d} :catch_269
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1ec .. :try_end_23d} :catch_2aa

    goto :goto_1bf

    :catch_23e
    move-exception v5

    :try_start_23f
    sget-object v14, Lcom/android/server/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/BackupManagerService$RestorePolicy;
    :try_end_241
    .catch Ljava/lang/NumberFormatException; {:try_start_23f .. :try_end_241} :catch_269
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23f .. :try_end_241} :catch_2aa

    goto/16 :goto_1bf

    :cond_243
    :try_start_243
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " is system level with no agent"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_267
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_243 .. :try_end_267} :catch_23e
    .catch Ljava/lang/NumberFormatException; {:try_start_243 .. :try_end_267} :catch_269
    .catch Ljava/lang/IllegalArgumentException; {:try_start_243 .. :try_end_267} :catch_2aa

    goto/16 :goto_1bf

    :catch_269
    move-exception v5

    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Corrupt restore manifest for package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1eb

    :cond_28a
    :try_start_28a
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Missing signature on backed-up package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a8
    .catch Ljava/lang/NumberFormatException; {:try_start_28a .. :try_end_2a8} :catch_269
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28a .. :try_end_2a8} :catch_2aa

    goto/16 :goto_1eb

    :catch_2aa
    move-exception v5

    const-string v18, "BackupManagerService"

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1eb

    :cond_2b6
    :try_start_2b6
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Expected package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " but restore manifest claims "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1eb

    :cond_2e2
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unknown restore manifest version "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " for package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30e
    .catch Ljava/lang/NumberFormatException; {:try_start_2b6 .. :try_end_30e} :catch_269
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b6 .. :try_end_30e} :catch_2aa

    goto/16 :goto_1eb
.end method

.method readExactly(Ljava/io/InputStream;[BII)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gtz p4, :cond_a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "size must be > 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    const/4 v1, 0x0

    :goto_b
    if-ge v1, p4, :cond_17

    add-int v2, p3, v1

    sub-int v3, p4, v1

    invoke-virtual {p1, p2, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gtz v0, :cond_18

    :cond_17
    return v1

    :cond_18
    add-int/2addr v1, v0

    goto :goto_b
.end method

.method readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x50

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_7
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_11

    const/16 v2, 0xa

    if-ne v1, v2, :cond_16

    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_16
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7
.end method

.method readPaxExtendedHeader(Ljava/io/InputStream;Lcom/android/server/BackupManagerService$FileMetadata;)Z
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p2

    iget-wide v11, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    const-wide/32 v13, 0x8000

    cmp-long v11, v11, v13

    if-lez v11, :cond_4a

    const-string v11, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Suspiciously large pax header size "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " - aborting"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Sanity failure: pax header size "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_4a
    move-object/from16 v0, p2

    iget-wide v11, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    const-wide/16 v13, 0x1ff

    add-long/2addr v11, v13

    const/16 v13, 0x9

    shr-long/2addr v11, v13

    long-to-int v7, v11

    mul-int/lit16 v11, v7, 0x200

    new-array v2, v11, [B

    const/4 v11, 0x0

    array-length v12, v2

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v2, v11, v12}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v11

    array-length v12, v2

    if-ge v11, v12, :cond_6c

    new-instance v11, Ljava/io/IOException;

    const-string v12, "Unable to read full pax header"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_6c
    iget-wide v11, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    array-length v13, v2

    int-to-long v13, v13

    add-long/2addr v11, v13

    iput-wide v11, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    move-object/from16 v0, p2

    iget-wide v11, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    long-to-int v1, v11

    const/4 v8, 0x0

    :cond_79
    add-int/lit8 v3, v8, 0x1

    :goto_7b
    if-ge v3, v1, :cond_86

    aget-byte v11, v2, v3

    const/16 v12, 0x20

    if-eq v11, v12, :cond_86

    add-int/lit8 v3, v3, 0x1

    goto :goto_7b

    :cond_86
    if-lt v3, v1, :cond_90

    new-instance v11, Ljava/io/IOException;

    const-string v12, "Invalid pax data"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_90
    sub-int v11, v3, v8

    const/16 v12, 0xa

    invoke-virtual {p0, v2, v8, v11, v12}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractRadix([BIII)J

    move-result-wide v11

    long-to-int v6, v11

    add-int/lit8 v4, v3, 0x1

    add-int v11, v8, v6

    add-int/lit8 v3, v11, -0x1

    add-int/lit8 v10, v4, 0x1

    :goto_a1
    aget-byte v11, v2, v10

    const/16 v12, 0x3d

    if-eq v11, v12, :cond_ac

    if-gt v10, v3, :cond_ac

    add-int/lit8 v10, v10, 0x1

    goto :goto_a1

    :cond_ac
    if-le v10, v3, :cond_b6

    new-instance v11, Ljava/io/IOException;

    const-string v12, "Invalid pax declaration"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_b6
    new-instance v5, Ljava/lang/String;

    sub-int v11, v10, v4

    const-string v12, "UTF-8"

    invoke-direct {v5, v2, v4, v11, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance v9, Ljava/lang/String;

    add-int/lit8 v11, v10, 0x1

    sub-int v12, v3, v10

    add-int/lit8 v12, v12, -0x1

    const-string v13, "UTF-8"

    invoke-direct {v9, v2, v11, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const-string v11, "path"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_dd

    move-object/from16 v0, p2

    iput-object v9, v0, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    :cond_d8
    :goto_d8
    add-int/2addr v8, v6

    if-lt v8, v1, :cond_79

    const/4 v11, 0x1

    return v11

    :cond_dd
    const-string v11, "size"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d8

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    move-object/from16 v0, p2

    iput-wide v11, v0, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    goto :goto_d8
.end method

.method readTarHeader(Ljava/io/InputStream;[B)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x200

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    return v1

    :cond_a
    if-ge v0, v2, :cond_14

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to read full block header"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    iget-wide v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    const-wide/16 v3, 0x200

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    const/4 v1, 0x1

    goto :goto_9
.end method

.method readTarHeaders(Ljava/io/InputStream;)Lcom/android/server/BackupManagerService$FileMetadata;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0x200

    new-array v0, v8, [B

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readTarHeader(Ljava/io/InputStream;[B)Z

    move-result v2

    if-eqz v2, :cond_102

    :try_start_b
    new-instance v4, Lcom/android/server/BackupManagerService$FileMetadata;

    invoke-direct {v4}, Lcom/android/server/BackupManagerService$FileMetadata;-><init>()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_21c

    const/16 v8, 0x7c

    const/16 v9, 0xc

    const/16 v10, 0x8

    :try_start_16
    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    const/16 v8, 0x88

    const/16 v9, 0xc

    const/16 v10, 0x8

    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->mtime:J

    const/16 v8, 0x64

    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    const/16 v8, 0x159

    const/16 v9, 0x9b

    invoke-virtual {p0, v0, v8, v9}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractString([BII)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/4 v8, 0x0

    const/16 v9, 0x64

    invoke-virtual {p0, v0, v8, v9}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->extractString([BII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_7f

    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    :cond_6a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    :cond_7f
    const/16 v8, 0x9c

    aget-byte v7, v0, v8

    const/16 v8, 0x78

    if-ne v7, v8, :cond_a2

    invoke-virtual {p0, p1, v4}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readPaxExtendedHeader(Ljava/io/InputStream;Lcom/android/server/BackupManagerService$FileMetadata;)Z

    move-result v2

    if-eqz v2, :cond_91

    invoke-virtual {p0, p1, v0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readTarHeader(Ljava/io/InputStream;[B)Z

    move-result v2

    :cond_91
    if-nez v2, :cond_9e

    new-instance v8, Ljava/io/IOException;

    const-string v9, "Bad or missing pax header"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_9b} :catch_9b

    :catch_9b
    move-exception v1

    move-object v3, v4

    :goto_9d
    throw v1

    :cond_9e
    const/16 v8, 0x9c

    :try_start_a0
    aget-byte v7, v0, v8

    :cond_a2
    sparse-switch v7, :sswitch_data_220

    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown tar entity type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown entity type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :sswitch_d6
    const/4 v8, 0x1

    iput v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->type:I

    :cond_d9
    :goto_d9
    const-string v8, "shared/"

    const/4 v9, 0x0

    iget-object v10, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "shared/"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_11f

    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v9, "shared/"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v8, "com.android.sharedstoragebackup"

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    const-string v8, "shared"

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    :cond_101
    :goto_101
    move-object v3, v4

    :cond_102
    move-object v8, v3

    :goto_103
    return-object v8

    :sswitch_104
    const/4 v8, 0x2

    iput v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->type:I

    iget-wide v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_d9

    const-string v8, "BackupManagerService"

    const-string v9, "Directory entry with nonzero size in header"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x0

    iput-wide v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    goto :goto_d9

    :sswitch_11b
    const/4 v3, 0x0

    move-object v8, v3

    move-object v3, v4

    goto :goto_103

    :cond_11f
    const-string v8, "apps/"

    const/4 v9, 0x0

    iget-object v10, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "apps/"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_101

    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v9, "apps/"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_164

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Illegal semantic path in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_164
    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v9, "_manifest"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_101

    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_1a6

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Illegal semantic path in non-manifest "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1a6
    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v9, "a"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_210

    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v9, "f"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_210

    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v9, "db"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_210

    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v9, "r"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_210

    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v9, "sp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_210

    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v9, "obb"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_210

    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v9, "c"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_210

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unrecognized domain "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_210
    iget-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;
    :try_end_21a
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_21a} :catch_9b

    goto/16 :goto_101

    :catch_21c
    move-exception v1

    goto/16 :goto_9d

    nop

    :sswitch_data_220
    .sparse-switch
        0x0 -> :sswitch_11b
        0x30 -> :sswitch_d6
        0x35 -> :sswitch_104
    .end sparse-switch
.end method

.method restoreOneFile(Ljava/io/InputStream;[B)Z
    .registers 41

    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readTarHeaders(Ljava/io/InputStream;)Lcom/android/server/BackupManagerService$FileMetadata;

    move-result-object v6

    if-eqz v6, :cond_7f

    iget-object v0, v6, Lcom/android/server/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgentPackage:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/BackupManagerService$RestorePolicy;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v4, :cond_49

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownPipes()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgentPackage:Ljava/lang/String;

    :cond_49
    iget-object v4, v6, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v5, "_manifest"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_83

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v6, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readAppManifest(Lcom/android/server/BackupManagerService$FileMetadata;Ljava/io/InputStream;)Lcom/android/server/BackupManagerService$RestorePolicy;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    iget-object v5, v6, Lcom/android/server/BackupManagerService$FileMetadata;->installerPackageName:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, v6, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->skipTarPadding(JLjava/io/InputStream;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->sendOnRestorePackage(Ljava/lang/String;)V

    :cond_7f
    :goto_7f
    if-eqz v6, :cond_37f

    const/4 v4, 0x1

    :goto_82
    return v4

    :cond_83
    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/BackupManagerService$RestorePolicy;

    sget-object v4, Lcom/android/server/BackupManagerService$4;->$SwitchMap$com$android$server$BackupManagerService$RestorePolicy:[I

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/BackupManagerService$RestorePolicy;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_386

    const-string v4, "BackupManagerService"

    const-string v5, "Invalid policy from manifest"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/BackupManagerService$RestorePolicy;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b0
    :goto_b0
    if-eqz v30, :cond_148

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b6} :catch_37b

    if-nez v4, :cond_148

    :try_start_b8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v4, :cond_e8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Lcom/android/server/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    :cond_e8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_f1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->setUpPipes()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v4, v4, Lcom/android/server/BackupManagerService;->isEdmRestoreRequest:Z

    if-eqz v4, :cond_2f0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2f0

    const-string v4, "BackupManagerService"

    const-string v5, "changing backup agent name to null for edm restore request"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v23, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    const/4 v4, 0x0

    move-object/from16 v0, v23

    iput-object v4, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v5, 0x3

    move-object/from16 v0, v23

    invoke-virtual {v4, v0, v5}, Lcom/android/server/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    :goto_12c
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgentPackage:Ljava/lang/String;
    :try_end_132
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_132} :catch_303
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b8 .. :try_end_132} :catch_382

    :goto_132
    :try_start_132
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-nez v4, :cond_148

    const/16 v30, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownPipes()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/BackupManagerService$RestorePolicy;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_148
    if-eqz v30, :cond_180

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgentPackage:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_180

    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restoring data for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " but agent is for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v30, 0x0

    :cond_180
    if-eqz v30, :cond_24e

    const/16 v22, 0x1

    iget-wide v0, v6, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/BackupManagerService;->generateToken()I
    :try_end_18f
    .catch Ljava/io/IOException; {:try_start_132 .. :try_end_18f} :catch_37b

    move-result v8

    :try_start_190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    const-wide/32 v9, 0x493e0

    const/4 v5, 0x0

    invoke-virtual {v4, v8, v9, v10, v5}, Lcom/android/server/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/BackupManagerService$BackupRestoreTask;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v5, "system"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_306

    const-string v4, "BackupManagerService"

    const-string v5, "system process agent - spinning a thread"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreFileRunnable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x0

    aget-object v7, v4, v7

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreFileRunnable;-><init>(Lcom/android/server/BackupManagerService$PerformFullRestoreTask;Landroid/app/IBackupAgent;Lcom/android/server/BackupManagerService$FileMetadata;Landroid/os/ParcelFileDescriptor;I)V

    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_1ca
    .catch Ljava/io/IOException; {:try_start_190 .. :try_end_1ca} :catch_330
    .catch Landroid/os/RemoteException; {:try_start_190 .. :try_end_1ca} :catch_33e

    :goto_1ca
    if-eqz v30, :cond_21f

    const/16 v32, 0x1

    :try_start_1ce
    new-instance v31, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    :cond_1e0
    :goto_1e0
    const-wide/16 v4, 0x0

    cmp-long v4, v35, v4

    if-lez v4, :cond_20e

    move-object/from16 v0, p2

    array-length v4, v0

    int-to-long v4, v4

    cmp-long v4, v35, v4

    if-lez v4, :cond_34c

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v37, v0

    :goto_1f3
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v37

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v28

    if-ltz v28, :cond_20c

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    move/from16 v0, v28

    int-to-long v9, v0

    add-long/2addr v4, v9

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    :cond_20c
    if-gtz v28, :cond_353

    :cond_20e
    iget-wide v4, v6, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->skipTarPadding(JLjava/io/InputStream;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v4, v8}, Lcom/android/server/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v22

    :cond_21f
    if-nez v22, :cond_24e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownPipes()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/BackupManagerService$RestorePolicy;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/BackupManagerService;->isEdmRestoreFail:Z

    :cond_24e
    if-nez v30, :cond_7f

    iget-wide v4, v6, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    const-wide/16 v9, 0x1ff

    add-long/2addr v4, v9

    const-wide/16 v9, -0x200

    and-long v24, v4, v9

    :goto_259
    const-wide/16 v4, 0x0

    cmp-long v4, v24, v4

    if-lez v4, :cond_7f

    move-object/from16 v0, p2

    array-length v4, v0

    int-to-long v4, v4

    cmp-long v4, v24, v4

    if-lez v4, :cond_374

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v37, v0

    :goto_26c
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v37

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v28, v0

    const-wide/16 v4, 0x0

    cmp-long v4, v28, v4

    if-ltz v4, :cond_28a

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    add-long v4, v4, v28

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    :cond_28a
    const-wide/16 v4, 0x0

    cmp-long v4, v28, v4

    if-lez v4, :cond_7f

    sub-long v24, v24, v28

    goto :goto_259

    :pswitch_293
    const/16 v30, 0x0

    goto/16 :goto_b0

    :pswitch_297
    iget-object v4, v6, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v5, "a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, p1

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->installApk(Lcom/android/server/BackupManagerService$FileMetadata;Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v30

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v30, :cond_2d0

    sget-object v4, Lcom/android/server/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/BackupManagerService$RestorePolicy;

    :goto_2bf
    move-object/from16 v0, v33

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, v6, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->skipTarPadding(JLjava/io/InputStream;)V

    const/4 v4, 0x1

    goto/16 :goto_82

    :cond_2d0
    sget-object v4, Lcom/android/server/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/BackupManagerService$RestorePolicy;

    goto :goto_2bf

    :cond_2d3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/BackupManagerService$RestorePolicy;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v30, 0x0

    goto/16 :goto_b0

    :pswitch_2e2
    iget-object v4, v6, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v5, "a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2e9
    .catch Ljava/io/IOException; {:try_start_1ce .. :try_end_2e9} :catch_37b

    move-result v4

    if-eqz v4, :cond_b0

    const/16 v30, 0x0

    goto/16 :goto_b0

    :cond_2f0
    :try_start_2f0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v7, 0x3

    invoke-virtual {v4, v5, v7}, Lcom/android/server/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;
    :try_end_301
    .catch Ljava/io/IOException; {:try_start_2f0 .. :try_end_301} :catch_303
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2f0 .. :try_end_301} :catch_382

    goto/16 :goto_12c

    :catch_303
    move-exception v4

    goto/16 :goto_132

    :cond_306
    :try_start_306
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    aget-object v10, v4, v5

    iget-wide v11, v6, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    iget v13, v6, Lcom/android/server/BackupManagerService$FileMetadata;->type:I

    iget-object v14, v6, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    iget-object v15, v6, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    iget-wide v0, v6, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    move-wide/from16 v16, v0

    iget-wide v0, v6, Lcom/android/server/BackupManagerService$FileMetadata;->mtime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v0, v4, Lcom/android/server/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move-object/from16 v21, v0

    move/from16 v20, v8

    invoke-interface/range {v9 .. v21}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_32e
    .catch Ljava/io/IOException; {:try_start_306 .. :try_end_32e} :catch_330
    .catch Landroid/os/RemoteException; {:try_start_306 .. :try_end_32e} :catch_33e

    goto/16 :goto_1ca

    :catch_330
    move-exception v26

    :try_start_331
    const-string v4, "BackupManagerService"

    const-string v5, "Couldn\'t establish restore"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x0

    const/16 v30, 0x0

    goto/16 :goto_1ca

    :catch_33e
    move-exception v26

    const-string v4, "BackupManagerService"

    const-string v5, "Agent crashed during full restore"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_346
    .catch Ljava/io/IOException; {:try_start_331 .. :try_end_346} :catch_37b

    const/16 v22, 0x0

    const/16 v30, 0x0

    goto/16 :goto_1ca

    :cond_34c
    move-wide/from16 v0, v35

    long-to-int v0, v0

    move/from16 v37, v0

    goto/16 :goto_1f3

    :cond_353
    move/from16 v0, v28

    int-to-long v4, v0

    sub-long v35, v35, v4

    if-eqz v32, :cond_1e0

    const/4 v4, 0x0

    :try_start_35b
    move-object/from16 v0, v31

    move-object/from16 v1, p2

    move/from16 v2, v28

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_364
    .catch Ljava/io/IOException; {:try_start_35b .. :try_end_364} :catch_366

    goto/16 :goto_1e0

    :catch_366
    move-exception v26

    :try_start_367
    const-string v4, "BackupManagerService"

    const-string v5, "Failed to write to restore pipe"

    move-object/from16 v0, v26

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_370
    .catch Ljava/io/IOException; {:try_start_367 .. :try_end_370} :catch_37b

    const/16 v32, 0x0

    goto/16 :goto_1e0

    :cond_374
    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v37, v0

    goto/16 :goto_26c

    :catch_37b
    move-exception v26

    const/4 v6, 0x0

    goto/16 :goto_7f

    :cond_37f
    const/4 v4, 0x0

    goto/16 :goto_82

    :catch_382
    move-exception v4

    goto/16 :goto_132

    nop

    :pswitch_data_386
    .packed-switch 0x1
        :pswitch_293
        :pswitch_297
        :pswitch_2e2
    .end packed-switch
.end method

.method public run()V
    .registers 23

    const-string v18, "BackupManagerService"

    const-string v19, "--- Performing full-dataset restore ---"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->sendStartRestore()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v18

    const-string v19, "mounted"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v18, v0

    const-string v19, "com.android.sharedstoragebackup"

    sget-object v20, Lcom/android/server/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/BackupManagerService$RestorePolicy;

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    const/4 v14, 0x0

    const/4 v12, 0x0

    :try_start_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->isEdmRestoreRequest:Z

    move/from16 v18, v0

    if-nez v18, :cond_c9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/BackupManagerService;->hasBackupPassword()Z

    move-result v18

    if-eqz v18, :cond_c9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mCurrentPassword:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x2710

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/BackupManagerService;->passwordMatchesSaved(Ljava/lang/String;I)Z
    :try_end_50
    .catchall {:try_start_25 .. :try_end_50} :catchall_418
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_50} :catch_41f

    move-result v18

    if-nez v18, :cond_c9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownPipes()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    if-eqz v12, :cond_66

    :try_start_65
    throw v12

    :cond_66
    if-eqz v14, :cond_69

    throw v14

    :cond_69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_72} :catch_3dc

    :goto_72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_7f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->clear()V

    monitor-exit v19
    :try_end_8f
    .catchall {:try_start_7f .. :try_end_8f} :catchall_3ea

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v19
    :try_end_af
    .catchall {:try_start_96 .. :try_end_af} :catchall_3ed

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->sendEndRestore()V

    const-string v18, "BackupManagerService"

    const-string v19, "Full restore pass complete."

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v18, v0

    :goto_c5
    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_c8
    return-void

    :cond_c9
    const-wide/16 v18, 0x0

    :try_start_cb
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    const v18, 0x8000

    move/from16 v0, v18

    new-array v3, v0, [B

    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_e9
    .catchall {:try_start_cb .. :try_end_e9} :catchall_418
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_e9} :catch_41f

    :try_start_e9
    new-instance v13, Ljava/io/DataInputStream;

    invoke-direct {v13, v15}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_ee
    .catchall {:try_start_e9 .. :try_end_ee} :catchall_41b
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_ee} :catch_422

    const/4 v4, 0x0

    move-object v11, v15

    const/4 v10, 0x0

    :try_start_f1
    const-string v18, "ANDROID BACKUP\n"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v7

    new-array v0, v7, [B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/io/DataInputStream;->readFully([B)V

    const-string v18, "ANDROID BACKUP\n"

    const-string v19, "UTF-8"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v18

    if-eqz v18, :cond_31c

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_285

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    if-eqz v18, :cond_1d6

    const/4 v4, 0x1

    :goto_12f
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v16

    const-string v18, "none"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1d9

    const/4 v10, 0x1

    :cond_142
    :goto_142
    if-nez v10, :cond_325

    const-string v18, "BackupManagerService"

    const-string v19, "Invalid restore data; aborting."

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/server/BackupManagerService;->isEdmRestoreFail:Z
    :try_end_159
    .catchall {:try_start_f1 .. :try_end_159} :catchall_2a3
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_159} :catch_203

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownPipes()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    if-eqz v13, :cond_16e

    :try_start_16b
    invoke-virtual {v13}, Ljava/io/DataInputStream;->close()V

    :cond_16e
    if-eqz v15, :cond_173

    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    :cond_173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_17c
    .catch Ljava/io/IOException; {:try_start_16b .. :try_end_17c} :catch_3f0

    :goto_17c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->clear()V

    monitor-exit v19
    :try_end_199
    .catchall {:try_start_189 .. :try_end_199} :catchall_3fe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_1a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v19
    :try_end_1b9
    .catchall {:try_start_1a0 .. :try_end_1b9} :catchall_401

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->sendEndRestore()V

    const-string v18, "BackupManagerService"

    const-string v19, "Full restore pass complete."

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object v12, v13

    move-object v14, v15

    goto/16 :goto_c8

    :cond_1d6
    const/4 v4, 0x0

    goto/16 :goto_12f

    :cond_1d9
    :try_start_1d9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mDecryptPassword:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1fa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mDecryptPassword:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_1fa

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->decodeAesHeaderAndInitialize(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v11

    if-eqz v11, :cond_142

    const/4 v10, 0x1

    goto/16 :goto_142

    :cond_1fa
    const-string v18, "BackupManagerService"

    const-string v19, "Archive is encrypted but no password given"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_201
    .catchall {:try_start_1d9 .. :try_end_201} :catchall_2a3
    .catch Ljava/io/IOException; {:try_start_1d9 .. :try_end_201} :catch_203

    goto/16 :goto_142

    :catch_203
    move-exception v6

    move-object v12, v13

    move-object v14, v15

    :goto_206
    :try_start_206
    const-string v18, "BackupManagerService"

    const-string v19, "Unable to read restore input"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20d
    .catchall {:try_start_206 .. :try_end_20d} :catchall_418

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownPipes()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    if-eqz v12, :cond_222

    :try_start_21f
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V

    :cond_222
    if-eqz v14, :cond_227

    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    :cond_227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_230
    .catch Ljava/io/IOException; {:try_start_21f .. :try_end_230} :catch_3c8

    :goto_230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_23d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->clear()V

    monitor-exit v19
    :try_end_24d
    .catchall {:try_start_23d .. :try_end_24d} :catchall_3d6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v19
    :try_end_26d
    .catchall {:try_start_254 .. :try_end_26d} :catchall_3d9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->sendEndRestore()V

    const-string v18, "BackupManagerService"

    const-string v19, "Full restore pass complete."

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v18, v0

    goto/16 :goto_c5

    :cond_285
    :try_start_285
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Wrong header version: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a1
    .catchall {:try_start_285 .. :try_end_2a1} :catchall_2a3
    .catch Ljava/io/IOException; {:try_start_285 .. :try_end_2a1} :catch_203

    goto/16 :goto_142

    :catchall_2a3
    move-exception v18

    move-object v12, v13

    move-object v14, v15

    :goto_2a6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownPipes()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    if-eqz v12, :cond_2bb

    :try_start_2b8
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V

    :cond_2bb
    if-eqz v14, :cond_2c0

    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    :cond_2c0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2c9
    .catch Ljava/io/IOException; {:try_start_2b8 .. :try_end_2c9} :catch_3b4

    :goto_2c9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_2d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->clear()V

    monitor-exit v19
    :try_end_2e6
    .catchall {:try_start_2d6 .. :try_end_2e6} :catchall_3c2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_2ed
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v19
    :try_end_302
    .catchall {:try_start_2ed .. :try_end_302} :catchall_3c5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->sendEndRestore()V

    const-string v19, "BackupManagerService"

    const-string v20, "Full restore pass complete."

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v18

    :cond_31c
    :try_start_31c
    const-string v18, "BackupManagerService"

    const-string v19, "Didn\'t read the right header magic"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_142

    :cond_325
    if-eqz v4, :cond_3b1

    new-instance v8, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v8, v11}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    :cond_32c
    :goto_32c
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v3}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->restoreOneFile(Ljava/io/InputStream;[B)Z
    :try_end_331
    .catchall {:try_start_31c .. :try_end_331} :catchall_2a3
    .catch Ljava/io/IOException; {:try_start_31c .. :try_end_331} :catch_203

    move-result v5

    if-nez v5, :cond_32c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownPipes()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    if-eqz v13, :cond_349

    :try_start_346
    invoke-virtual {v13}, Ljava/io/DataInputStream;->close()V

    :cond_349
    if-eqz v15, :cond_34e

    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    :cond_34e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_357
    .catch Ljava/io/IOException; {:try_start_346 .. :try_end_357} :catch_404

    :goto_357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->clear()V

    monitor-exit v19
    :try_end_374
    .catchall {:try_start_364 .. :try_end_374} :catchall_412

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_37b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v19
    :try_end_394
    .catchall {:try_start_37b .. :try_end_394} :catchall_415

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->sendEndRestore()V

    const-string v18, "BackupManagerService"

    const-string v19, "Full restore pass complete."

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object v12, v13

    move-object v14, v15

    goto/16 :goto_c8

    :cond_3b1
    move-object v8, v11

    goto/16 :goto_32c

    :catch_3b4
    move-exception v6

    const-string v19, "BackupManagerService"

    const-string v20, "Close of restore data pipe threw"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2c9

    :catchall_3c2
    move-exception v18

    :try_start_3c3
    monitor-exit v19
    :try_end_3c4
    .catchall {:try_start_3c3 .. :try_end_3c4} :catchall_3c2

    throw v18

    :catchall_3c5
    move-exception v18

    :try_start_3c6
    monitor-exit v19
    :try_end_3c7
    .catchall {:try_start_3c6 .. :try_end_3c7} :catchall_3c5

    throw v18

    :catch_3c8
    move-exception v6

    const-string v18, "BackupManagerService"

    const-string v19, "Close of restore data pipe threw"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_230

    :catchall_3d6
    move-exception v18

    :try_start_3d7
    monitor-exit v19
    :try_end_3d8
    .catchall {:try_start_3d7 .. :try_end_3d8} :catchall_3d6

    throw v18

    :catchall_3d9
    move-exception v18

    :try_start_3da
    monitor-exit v19
    :try_end_3db
    .catchall {:try_start_3da .. :try_end_3db} :catchall_3d9

    throw v18

    :catch_3dc
    move-exception v6

    const-string v18, "BackupManagerService"

    const-string v19, "Close of restore data pipe threw"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_72

    :catchall_3ea
    move-exception v18

    :try_start_3eb
    monitor-exit v19
    :try_end_3ec
    .catchall {:try_start_3eb .. :try_end_3ec} :catchall_3ea

    throw v18

    :catchall_3ed
    move-exception v18

    :try_start_3ee
    monitor-exit v19
    :try_end_3ef
    .catchall {:try_start_3ee .. :try_end_3ef} :catchall_3ed

    throw v18

    :catch_3f0
    move-exception v6

    const-string v18, "BackupManagerService"

    const-string v19, "Close of restore data pipe threw"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_17c

    :catchall_3fe
    move-exception v18

    :try_start_3ff
    monitor-exit v19
    :try_end_400
    .catchall {:try_start_3ff .. :try_end_400} :catchall_3fe

    throw v18

    :catchall_401
    move-exception v18

    :try_start_402
    monitor-exit v19
    :try_end_403
    .catchall {:try_start_402 .. :try_end_403} :catchall_401

    throw v18

    :catch_404
    move-exception v6

    const-string v18, "BackupManagerService"

    const-string v19, "Close of restore data pipe threw"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_357

    :catchall_412
    move-exception v18

    :try_start_413
    monitor-exit v19
    :try_end_414
    .catchall {:try_start_413 .. :try_end_414} :catchall_412

    throw v18

    :catchall_415
    move-exception v18

    :try_start_416
    monitor-exit v19
    :try_end_417
    .catchall {:try_start_416 .. :try_end_417} :catchall_415

    throw v18

    :catchall_418
    move-exception v18

    goto/16 :goto_2a6

    :catchall_41b
    move-exception v18

    move-object v14, v15

    goto/16 :goto_2a6

    :catch_41f
    move-exception v6

    goto/16 :goto_206

    :catch_422
    move-exception v6

    move-object v14, v15

    goto/16 :goto_206
.end method

.method sendEndRestore()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_9

    :try_start_4
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onEndRestore()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "BackupManagerService"

    const-string v2, "full restore observer went away: endRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_9
.end method

.method sendOnRestorePackage(Ljava/lang/String;)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_9

    :try_start_4
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onRestorePackage(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "BackupManagerService"

    const-string v2, "full restore observer went away: restorePackage"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_9
.end method

.method sendStartRestore()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_9

    :try_start_4
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onStartRestore()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "BackupManagerService"

    const-string v2, "full restore observer went away: startRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_9
.end method

.method setUpPipes()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method skipTarPadding(JLjava/io/InputStream;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x200

    add-long v4, p1, v6

    rem-long v2, v4, v6

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1e

    long-to-int v4, v2

    rsub-int v1, v4, 0x200

    new-array v0, v1, [B

    const/4 v4, 0x0

    invoke-virtual {p0, p3, v0, v4, v1}, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v4

    if-ne v4, v1, :cond_1f

    iget-wide v4, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mBytes:J

    :cond_1e
    return-void

    :cond_1f
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unexpected EOF in padding"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method tearDownAgent(Landroid/content/pm/ApplicationInfo;)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v1, :cond_2d

    :try_start_4
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v1}, Lcom/android/server/BackupManagerService;->access$1000(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_2a

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.backupconfirm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v1}, Lcom/android/server/BackupManagerService;->access$1000(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_2a} :catch_2e

    :cond_2a
    :goto_2a
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    :cond_2d
    return-void

    :catch_2e
    move-exception v0

    const-string v1, "BackupManagerService"

    const-string v2, "Lost app trying to shut down"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method tearDownPipes()V
    .registers 6

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_23

    :try_start_5
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_21} :catch_24

    :goto_21
    iput-object v4, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    :cond_23
    return-void

    :catch_24
    move-exception v0

    const-string v1, "BackupManagerService"

    const-string v2, "Couldn\'t close agent pipes"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method
