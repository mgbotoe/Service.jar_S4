.class Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;
.super Landroid/os/AsyncTask;
.source "CertificatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/certificate/CertificatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RollbackRefreshOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mOperation:I

.field private final mPriority:I

.field final synthetic this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->mOperation:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->mPriority:I

    return-void
.end method

.method private constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;II)V
    .registers 7

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->mOperation:I

    const/16 v0, -0x14

    if-lt p3, v0, :cond_2c

    const/16 v0, 0x13

    if-gt p3, v0, :cond_2c

    :goto_f
    iput p3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->mPriority:I

    const-string v0, "CertificatePolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPriority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->mPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2c
    const/16 p3, 0xa

    goto :goto_f
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;IILcom/android/server/enterprise/certificate/CertificatePolicy$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;II)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILcom/android/server/enterprise/certificate/CertificatePolicy$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V

    return-void
.end method

.method private refreshNativeKeyStore()V
    .registers 15

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1500(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string v3, "nativeRemovedList"

    #calls: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericList(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$700(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;)Ljava/util/Map;

    move-result-object v13

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStoreLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$200(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_1a
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #calls: Lcom/android/server/enterprise/certificate/CertificatePolicy;->isNativeKeyStoreUnlocked()Z
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$300(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Z

    move-result v1

    if-eqz v1, :cond_e0

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$500(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/security/KeyStore;

    move-result-object v1

    const-string v3, "CACERT_"

    invoke-virtual {v1, v3}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_81

    move-object v8, v7

    array-length v12, v8

    const/4 v11, 0x0

    :goto_33
    if-ge v11, v12, :cond_81

    aget-object v6, v8, v11

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$500(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/security/KeyStore;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CACERT_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v10

    if-eqz v10, :cond_7e

    #calls: Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertPemToX509([B)Ljava/security/cert/X509Certificate;
    invoke-static {v10}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1900([B)Ljava/security/cert/X509Certificate;

    move-result-object v9

    if-eqz v9, :cond_7e

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1000(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->validateCertificate(Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-nez v1, :cond_7e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CACERT_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7e
    add-int/lit8 v11, v11, 0x1

    goto :goto_33

    :cond_81
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$500(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/security/KeyStore;

    move-result-object v1

    const-string v3, "USRCERT_"

    invoke-virtual {v1, v3}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e0

    move-object v8, v7

    array-length v12, v8

    const/4 v11, 0x0

    :goto_92
    if-ge v11, v12, :cond_e0

    aget-object v6, v8, v11

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$500(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/security/KeyStore;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USRCERT_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v10

    if-eqz v10, :cond_dd

    #calls: Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertPemToX509([B)Ljava/security/cert/X509Certificate;
    invoke-static {v10}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1900([B)Ljava/security/cert/X509Certificate;

    move-result-object v9

    if-eqz v9, :cond_dd

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1000(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->validateCertificate(Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-nez v1, :cond_dd

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USRCERT_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_dd
    add-int/lit8 v11, v11, 0x1

    goto :goto_92

    :cond_e0
    monitor-exit v2
    :try_end_e1
    .catchall {:try_start_1a .. :try_end_e1} :catchall_111

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1500(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->installCertificates(Ljava/util/Map;)Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #calls: Lcom/android/server/enterprise/certificate/CertificatePolicy;->isNativeKeyStoreUnlocked()Z
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$300(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Z

    move-result v1

    if-eqz v1, :cond_105

    new-instance v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v2, 0x1

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILjava/util/Set;Ljava/util/Map;Lcom/android/server/enterprise/certificate/CertificatePolicy$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_105
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string v2, "nativeRemovedList"

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    #calls: Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericList(Ljava/lang/String;Ljava/util/Collection;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1200(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;Ljava/util/Collection;)V

    return-void

    :catchall_111
    move-exception v1

    :try_start_112
    monitor-exit v2
    :try_end_113
    .catchall {:try_start_112 .. :try_end_113} :catchall_111

    throw v1
.end method

.method private refreshSystemKeyStore()V
    .registers 19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string v3, "systemDisabledList"

    #calls: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericList(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$700(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string v3, "systemPrevDisabledList"

    #calls: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericList(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$700(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$900(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string v5, "userRemovedList"

    #calls: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericList(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v3, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$700(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;)Ljava/util/Map;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->allSystemAliases()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3a
    :goto_3a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v9, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v7, v3}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->getCertificate(Ljava/lang/String;Z)Ljava/security/cert/Certificate;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    if-eqz v8, :cond_3a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$800(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->validateRootCertificate(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_3a

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    move-result-object v2

    invoke-virtual {v2, v7}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3a

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    :cond_80
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->userAliases()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_90
    :goto_90
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_be

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    move-result-object v2

    invoke-virtual {v2, v7}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    if-eqz v8, :cond_90

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1000(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->validateCertificate(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_90

    invoke-interface {v13, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_90

    :cond_be
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$900(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->installCertificates(Ljava/util/Map;)Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILjava/util/List;Ljava/util/List;Lcom/android/server/enterprise/certificate/CertificatePolicy$1;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1800(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v2

    const-string v3, "systemDisabledList"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #calls: Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertListToString(Ljava/util/Collection;)Ljava/lang/String;
    invoke-static {v5, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1700(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1800(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v2

    const-string v3, "systemPrevDisabledList"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #calls: Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertListToString(Ljava/util/Collection;)Ljava/lang/String;
    invoke-static {v5, v11}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1700(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1800(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v2

    const-string v3, "userRemovedList"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    #calls: Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertListToString(Ljava/util/Collection;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1700(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootCompleted:Z
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1300(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Z

    move-result v2

    if-eqz v2, :cond_153

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    const-string v2, "edm.intent.action.REFRESH_UI"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1400(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_153
    return-void
.end method

.method private rollbackNativeKeyStore()V
    .registers 14

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1500(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string v12, "nativeRemovedList"

    #calls: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericList(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v5, v12}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$700(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;)Ljava/util/Map;

    move-result-object v11

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #calls: Lcom/android/server/enterprise/certificate/CertificatePolicy;->isNativeKeyStoreUnlocked()Z
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$300(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Z

    move-result v1

    if-eqz v1, :cond_7e

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_33
    :goto_33
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    if-eqz v7, :cond_33

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1000(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->validateCertificate(Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    :cond_5d
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_61
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v11, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_61

    :cond_71
    new-instance v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILjava/util/Set;Ljava/util/Map;Lcom/android/server/enterprise/certificate/CertificatePolicy$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_7e
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1500(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->removeCertificates(Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string v2, "nativeRemovedList"

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    #calls: Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericList(Ljava/lang/String;Ljava/util/Collection;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1200(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method private rollbackSystemKeyStore()V
    .registers 21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string v3, "systemDisabledList"

    #calls: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericList(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$700(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string v3, "systemPrevDisabledList"

    #calls: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericList(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$700(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string v3, "userRemovedList"

    #calls: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericList(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$700(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_31
    :goto_31
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v7, v3}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->getCertificate(Ljava/lang/String;Z)Ljava/security/cert/Certificate;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    if-eqz v8, :cond_31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$800(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->validateRootCertificate(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_31

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v14, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6b

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_6b
    invoke-interface {v14, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_6f
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_73
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v9, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_73

    :cond_83
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$900(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;)Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_99
    :goto_99
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cd

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    if-eqz v8, :cond_99

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1000(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->validateCertificate(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_99

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_99

    :cond_cd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$900(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->removeCertificates(Ljava/util/List;)Ljava/util/List;

    new-instance v1, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILjava/util/List;Ljava/util/List;Lcom/android/server/enterprise/certificate/CertificatePolicy$1;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string v3, "systemDisabledList"

    #calls: Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericList(Ljava/lang/String;Ljava/util/Collection;)V
    invoke-static {v2, v3, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1200(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string v3, "systemPrevDisabledList"

    #calls: Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericList(Ljava/lang/String;Ljava/util/Collection;)V
    invoke-static {v2, v3, v14}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1200(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string v3, "userRemovedList"

    move-object/from16 v0, v17

    #calls: Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericList(Ljava/lang/String;Ljava/util/Collection;)V
    invoke-static {v2, v3, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1200(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootCompleted:Z
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1300(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Z

    move-result v2

    if-eqz v2, :cond_12d

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    const-string v2, "edm.intent.action.REFRESH_UI"

    invoke-virtual {v15, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1400(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_12d
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    iget v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->mPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->mOperation:I

    packed-switch v0, :pswitch_data_48

    :goto_a
    const/4 v0, 0x0

    return-object v0

    :pswitch_c
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRefreshRollbackLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$600(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_13
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->refreshSystemKeyStore()V

    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->refreshNativeKeyStore()V

    monitor-exit v1

    goto :goto_a

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1b

    throw v0

    :pswitch_1e
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRefreshRollbackLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$600(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_25
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->rollbackSystemKeyStore()V

    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->rollbackNativeKeyStore()V

    monitor-exit v1

    goto :goto_a

    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_2d

    throw v0

    :pswitch_30
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRefreshRollbackLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$600(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_37
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->rollbackSystemKeyStore()V

    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->rollbackNativeKeyStore()V

    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->refreshSystemKeyStore()V

    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->refreshNativeKeyStore()V

    monitor-exit v1

    goto :goto_a

    :catchall_45
    move-exception v0

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_37 .. :try_end_47} :catchall_45

    throw v0

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_c
        :pswitch_30
    .end packed-switch
.end method
