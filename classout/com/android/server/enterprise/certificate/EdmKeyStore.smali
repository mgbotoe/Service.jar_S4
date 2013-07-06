.class Lcom/android/server/enterprise/certificate/EdmKeyStore;
.super Ljava/lang/Object;
.source "EdmKeyStore.java"


# static fields
.field private static final NATIVE_KEYSTORE_PATH:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "EdmKeyStore"

.field private static final TRUSTED_KEYSTORE_PATH:Ljava/lang/String; = null

.field static final TYPE_NATIVE:I = 0x2

.field static final TYPE_TRUSTED:I = 0x0

.field static final TYPE_UNTRUSTED:I = 0x3

.field static final TYPE_USER:I = 0x1

.field private static final UNTRUSTED_KEYSTORE_PATH:Ljava/lang/String;

.field private static final USER_KEYSTORE_PATH:Ljava/lang/String;

.field private static mInstanceNative:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private static mInstanceTrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private static mInstanceUntrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private static mInstanceUser:Lcom/android/server/enterprise/certificate/EdmKeyStore;


# instance fields
.field private mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

.field private mKeyStore:Ljava/security/KeyStore;

.field private mPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "enterprise_cacerts.bks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->TRUSTED_KEYSTORE_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "enterprise_untrustedcerts.bks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->UNTRUSTED_KEYSTORE_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "enterprise_usercerts.bks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->USER_KEYSTORE_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "enterprise_nativecerts.bks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->NATIVE_KEYSTORE_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-direct {v4}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;-><init>()V

    iput-object v4, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mPath:Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_d
    const-string v4, "BKS"

    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_47

    :try_start_15
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_47
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_27

    :try_start_1a
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_4e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_20} :catch_51

    move-object v1, v2

    :goto_21
    if-eqz v1, :cond_26

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_26
    return-void

    :catch_27
    move-exception v0

    move-object v2, v1

    :goto_29
    :try_start_29
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_29 .. :try_end_40} :catchall_4e

    :try_start_40
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_47

    goto :goto_21

    :catchall_47
    move-exception v4

    :goto_48
    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_4d
    throw v4

    :catchall_4e
    move-exception v4

    move-object v1, v2

    goto :goto_48

    :catch_51
    move-exception v0

    goto :goto_29
.end method

.method private generateAlias(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;
    .registers 5

    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Ljava/lang/IntegralToString;->intToHexString(IZI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getCertificateChain(Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .registers 8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_9
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    :goto_1d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/security/cert/X509Certificate;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/security/cert/X509Certificate;

    return-object v4

    :cond_2a
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v4, v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->findIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    if-nez v3, :cond_4a

    sget-object v4, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceUntrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->findIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    if-nez v3, :cond_4a

    sget-object v4, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceUser:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->findIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    if-nez v3, :cond_4a

    const-string v4, "EdmKeyStore"

    const-string v5, "getCertificateChain error. Could not find certificate."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :cond_4a
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9
.end method

.method static declared-synchronized getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;
    .registers 5

    const/4 v1, 0x0

    const-class v2, Lcom/android/server/enterprise/certificate/EdmKeyStore;

    monitor-enter v2

    if-nez p0, :cond_26

    :try_start_6
    sget-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceTrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_23

    if-nez v1, :cond_13

    :try_start_a
    new-instance v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;

    sget-object v3, Lcom/android/server/enterprise/certificate/EdmKeyStore;->TRUSTED_KEYSTORE_PATH:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceTrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_23
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_17

    :cond_13
    :goto_13
    :try_start_13
    sget-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceTrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_23

    :cond_15
    :goto_15
    monitor-exit v2

    return-object v1

    :catch_17
    move-exception v0

    :try_start_18
    const-string v1, "EdmKeyStore"

    const-string v3, "Should not happen! "

    invoke-static {v1, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceTrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_23

    goto :goto_13

    :catchall_23
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_26
    const/4 v3, 0x1

    if-ne p0, v3, :cond_45

    :try_start_29
    sget-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceUser:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_2b
    .catchall {:try_start_29 .. :try_end_2b} :catchall_23

    if-nez v1, :cond_36

    :try_start_2d
    new-instance v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;

    sget-object v3, Lcom/android/server/enterprise/certificate/EdmKeyStore;->USER_KEYSTORE_PATH:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceUser:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_23
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_36} :catch_39

    :cond_36
    :goto_36
    :try_start_36
    sget-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceUser:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    goto :goto_15

    :catch_39
    move-exception v0

    const-string v1, "EdmKeyStore"

    const-string v3, "Should not happen! "

    invoke-static {v1, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceUser:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    goto :goto_36

    :cond_45
    const/4 v3, 0x2

    if-ne p0, v3, :cond_64

    sget-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceNative:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_4a
    .catchall {:try_start_36 .. :try_end_4a} :catchall_23

    if-nez v1, :cond_55

    :try_start_4c
    new-instance v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;

    sget-object v3, Lcom/android/server/enterprise/certificate/EdmKeyStore;->NATIVE_KEYSTORE_PATH:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceNative:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_23
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_55} :catch_58

    :cond_55
    :goto_55
    :try_start_55
    sget-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceNative:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    goto :goto_15

    :catch_58
    move-exception v0

    const-string v1, "EdmKeyStore"

    const-string v3, "Should not happen! "

    invoke-static {v1, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceNative:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    goto :goto_55

    :cond_64
    const/4 v3, 0x3

    if-ne p0, v3, :cond_15

    sget-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceUntrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_69
    .catchall {:try_start_55 .. :try_end_69} :catchall_23

    if-nez v1, :cond_74

    :try_start_6b
    new-instance v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;

    sget-object v3, Lcom/android/server/enterprise/certificate/EdmKeyStore;->UNTRUSTED_KEYSTORE_PATH:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceUntrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_74
    .catchall {:try_start_6b .. :try_end_74} :catchall_23
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_74} :catch_77

    :cond_74
    :goto_74
    :try_start_74
    sget-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceUntrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    goto :goto_15

    :catch_77
    move-exception v0

    const-string v1, "EdmKeyStore"

    const-string v3, "Should not happen! "

    invoke-static {v1, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceUntrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_82
    .catchall {:try_start_74 .. :try_end_82} :catchall_23

    goto :goto_74
.end method

.method private saveKeyStore()V
    .registers 6

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    monitor-enter v3

    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_10} :catch_12

    :goto_10
    :try_start_10
    monitor-exit v3

    return-void

    :catch_12
    move-exception v0

    const-string v2, "EdmKeyStore"

    const-string v4, ""

    invoke-static {v2, v4, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    :catchall_1b
    move-exception v2

    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1b

    throw v2
.end method


# virtual methods
.method findIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 7

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->generateAlias(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    move-result-object v0

    :try_start_8
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v2, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_10
    .catch Ljava/security/KeyStoreException; {:try_start_8 .. :try_end_10} :catch_11

    :goto_10
    return-object v2

    :catch_11
    move-exception v1

    const-string v2, "EdmKeyStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception with keystore "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_10
.end method

.method generateAlias(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->generateAlias(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCertificates(Ljava/util/List;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_15
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    monitor-enter v6
    :try_end_18
    .catch Ljava/security/KeyStoreException; {:try_start_15 .. :try_end_18} :catch_2a

    :try_start_18
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v5, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_25

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    monitor-exit v6

    goto :goto_9

    :catchall_27
    move-exception v5

    monitor-exit v6
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_27

    :try_start_29
    throw v5
    :try_end_2a
    .catch Ljava/security/KeyStoreException; {:try_start_29 .. :try_end_2a} :catch_2a

    :catch_2a
    move-exception v2

    const-string v5, "EdmKeyStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception with keystore "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_44
    return-object v4
.end method

.method getKeyStore()Ljava/security/KeyStore;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    return-object v0
.end method

.method installCertificates(Ljava/util/List;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->generateAlias(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v0

    :try_start_19
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    monitor-enter v6
    :try_end_1c
    .catch Ljava/security/KeyStoreException; {:try_start_19 .. :try_end_1c} :catch_31

    :try_start_1c
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v5, v0, v1}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    iget-object v5, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v5, v0}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    monitor-exit v6

    goto :goto_9

    :catchall_2e
    move-exception v5

    monitor-exit v6
    :try_end_30
    .catchall {:try_start_1c .. :try_end_30} :catchall_2e

    :try_start_30
    throw v5
    :try_end_31
    .catch Ljava/security/KeyStoreException; {:try_start_30 .. :try_end_31} :catch_31

    :catch_31
    move-exception v2

    const-string v5, "EdmKeyStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception with keystore "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_4b
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->saveKeyStore()V

    return-object v4
.end method

.method installCertificates(Ljava/util/Map;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    :try_start_19
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    monitor-enter v6
    :try_end_1c
    .catch Ljava/security/KeyStoreException; {:try_start_19 .. :try_end_1c} :catch_47

    :try_start_1c
    iget-object v7, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/Certificate;

    invoke-virtual {v7, v4, v5}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    iget-object v5, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_42
    monitor-exit v6

    goto :goto_d

    :catchall_44
    move-exception v4

    monitor-exit v6
    :try_end_46
    .catchall {:try_start_1c .. :try_end_46} :catchall_44

    :try_start_46
    throw v4
    :try_end_47
    .catch Ljava/security/KeyStoreException; {:try_start_46 .. :try_end_47} :catch_47

    :catch_47
    move-exception v0

    const-string v4, "EdmKeyStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception with keystore "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_61
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->saveKeyStore()V

    return-object v3
.end method

.method removeCertificates(Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_15
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    monitor-enter v5
    :try_end_18
    .catch Ljava/security/KeyStoreException; {:try_start_15 .. :try_end_18} :catch_2d

    :try_start_18
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v4, v0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v4, v0}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_28

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_28
    monitor-exit v5

    goto :goto_9

    :catchall_2a
    move-exception v4

    monitor-exit v5
    :try_end_2c
    .catchall {:try_start_18 .. :try_end_2c} :catchall_2a

    :try_start_2c
    throw v4
    :try_end_2d
    .catch Ljava/security/KeyStoreException; {:try_start_2c .. :try_end_2d} :catch_2d

    :catch_2d
    move-exception v1

    const-string v4, "EdmKeyStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception with keystore "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_47
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->saveKeyStore()V

    return-object v3
.end method

.method validateCertificate(Ljava/security/cert/X509Certificate;)Z
    .registers 16

    const-string v11, "EdmKeyStore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Validating certificate: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v13

    invoke-virtual {v13}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x3

    :try_start_23
    invoke-static {v11}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v11

    invoke-virtual {v11}, Ljava/security/KeyStore;->size()I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v11}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v11

    invoke-virtual {v11}, Ljava/security/KeyStore;->size()I

    move-result v9

    if-nez v9, :cond_53

    if-nez v10, :cond_53

    const-string v11, "EdmKeyStore"

    const-string v12, "Accept certificate because mdmKeyStores are empty"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/security/KeyStoreException; {:try_start_23 .. :try_end_47} :catch_49

    const/4 v11, 0x1

    :goto_48
    return v11

    :catch_49
    move-exception v6

    const-string v11, "EdmKeyStore"

    const-string v12, "Should not happen!"

    invoke-static {v11, v12, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v11, 0x0

    goto :goto_48

    :cond_53
    const/4 v2, 0x0

    :try_start_54
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificateChain(Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v11, "X.509"

    invoke-static {v11}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    :try_end_6d
    .catch Ljava/security/cert/CertificateException; {:try_start_54 .. :try_end_6d} :catch_7a

    move-result-object v2

    new-instance v0, Lcom/android/server/enterprise/certificate/UntrustedCertPathChecker;

    invoke-direct {v0}, Lcom/android/server/enterprise/certificate/UntrustedCertPathChecker;-><init>()V

    if-nez v9, :cond_8e

    :try_start_75
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/certificate/UntrustedCertPathChecker;->validateChain(Ljava/security/cert/CertPath;)V
    :try_end_78
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_75 .. :try_end_78} :catch_84

    const/4 v11, 0x1

    goto :goto_48

    :catch_7a
    move-exception v6

    const-string v11, "EdmKeyStore"

    const-string v12, "Failure generating cert path"

    invoke-static {v11, v12, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v11, 0x0

    goto :goto_48

    :catch_84
    move-exception v6

    const-string v11, "EdmKeyStore"

    const-string v12, "Certificate explicitly blocked by admin"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    goto :goto_48

    :cond_8e
    const/4 v3, 0x0

    :try_start_8f
    const-string v11, "PKIX"

    invoke-static {v11}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;
    :try_end_94
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8f .. :try_end_94} :catch_af

    move-result-object v3

    :try_start_95
    new-instance v8, Ljava/security/cert/PKIXParameters;

    iget-object v11, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-direct {v8, v11}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/security/KeyStore;)V
    :try_end_9c
    .catch Ljava/security/KeyStoreException; {:try_start_95 .. :try_end_9c} :catch_b9
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_95 .. :try_end_9c} :catch_c3

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    invoke-virtual {v8, v0}, Ljava/security/cert/PKIXParameters;->addCertPathChecker(Ljava/security/cert/PKIXCertPathChecker;)V

    :try_start_a3
    invoke-virtual {v3, v2, v8}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_a6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_a3 .. :try_end_a6} :catch_ce
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_a3 .. :try_end_a6} :catch_d9

    const-string v11, "EdmKeyStore"

    const-string v12, "Validation success"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    goto :goto_48

    :catch_af
    move-exception v7

    const-string v11, "EdmKeyStore"

    const-string v12, "Should not happen!"

    invoke-static {v11, v12, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v11, 0x0

    goto :goto_48

    :catch_b9
    move-exception v6

    const-string v11, "EdmKeyStore"

    const-string v12, "Should not happen!"

    invoke-static {v11, v12, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v11, 0x0

    goto :goto_48

    :catch_c3
    move-exception v6

    const-string v11, "EdmKeyStore"

    const-string v12, "Should not happen!"

    invoke-static {v11, v12, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v11, 0x0

    goto/16 :goto_48

    :catch_ce
    move-exception v6

    const-string v11, "EdmKeyStore"

    const-string v12, "Should not happen!"

    invoke-static {v11, v12, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v11, 0x0

    goto/16 :goto_48

    :catch_d9
    move-exception v6

    const-string v11, "EdmKeyStore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Validation failed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    goto/16 :goto_48
.end method

.method validateRootCertificate(Ljava/security/cert/X509Certificate;)Z
    .registers 7

    new-instance v0, Lcom/android/server/enterprise/certificate/UntrustedCertPathChecker;

    invoke-direct {v0}, Lcom/android/server/enterprise/certificate/UntrustedCertPathChecker;-><init>()V

    const/4 v2, 0x0

    :try_start_6
    invoke-virtual {v0, p1, v2}, Lcom/android/server/enterprise/certificate/UntrustedCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_9
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_6 .. :try_end_9} :catch_b

    const/4 v2, 0x1

    :goto_a
    return v2

    :catch_b
    move-exception v1

    const-string v2, "EdmKeyStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Validation failed for cert "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_a
.end method
