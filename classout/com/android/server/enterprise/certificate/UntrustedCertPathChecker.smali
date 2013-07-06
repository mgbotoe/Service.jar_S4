.class public Lcom/android/server/enterprise/certificate/UntrustedCertPathChecker;
.super Ljava/security/cert/PKIXCertPathChecker;
.source "UntrustedCertPathChecker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UntrustedCertPathChecker"


# instance fields
.field private mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/UntrustedCertPathChecker;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/UntrustedCertPathChecker;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    return-void
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/UntrustedCertPathChecker;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_7
    invoke-virtual {v2, p1}, Ljava/security/KeyStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/security/KeyStoreException; {:try_start_7 .. :try_end_a} :catch_39

    move-result-object v0

    if-eqz v0, :cond_42

    const-string v3, "UntrustedCertPathChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cert "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is blocked by Admin"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "Certificate explicitly blocked by admin"

    invoke-direct {v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_39
    move-exception v1

    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "Exception reading blacklist keyStore"

    invoke-direct {v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_42
    return-void
.end method

.method public getSupportedExtensions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public init(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    if-eqz p1, :cond_a

    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Forward checking not supported"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    return-void
.end method

.method public isForwardCheckingSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public validateChain(Ljava/security/cert/CertPath;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_a
    if-ltz v1, :cond_19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/enterprise/certificate/UntrustedCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_19
    return-void
.end method
