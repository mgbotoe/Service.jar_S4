.class Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;
.super Landroid/os/AsyncTask;
.source "CertificatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/certificate/CertificatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValidateCertTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/security/cert/X509Certificate;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;Lcom/android/server/enterprise/certificate/CertificatePolicy$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/security/cert/X509Certificate;)Ljava/lang/Boolean;
    .registers 25

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v4, 0x0

    const/16 v18, 0x0

    const/4 v8, 0x1

    :try_start_8
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a2

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #calls: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getCertificateChainFromSystem(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    invoke-static {v0, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$2800(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v7

    :goto_2f
    const/4 v15, 0x0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_db

    const/4 v8, 0x0

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/security/cert/X509Certificate;

    :goto_47
    new-instance v17, Ljava/security/cert/TrustAnchor;

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v15, v1}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v18

    const-string v19, "X.509"

    invoke-static/range {v19 .. v19}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    :try_end_5f
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_5f} :catch_a6

    move-result-object v4

    :try_start_60
    new-instance v13, Ljava/security/cert/PKIXParameters;

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V
    :try_end_67
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_60 .. :try_end_67} :catch_ec

    const/4 v5, 0x0

    :try_start_68
    const-string v19, "PKIX"

    invoke-static/range {v19 .. v19}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;
    :try_end_6d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_68 .. :try_end_6d} :catch_121

    move-result-object v5

    const/4 v12, 0x0

    const-string v19, "ocsp.enable"

    invoke-static/range {v19 .. v19}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v8, :cond_157

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    const-string v19, "ocsp.enable"

    const-string v20, "true"

    invoke-static/range {v19 .. v20}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_85
    const/4 v14, 0x0

    :try_start_86
    invoke-virtual {v5, v4, v13}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v9

    const-string v19, "CertificatePolicy"

    const-string v20, "Validation success"

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_91
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_86 .. :try_end_91} :catch_167
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_86 .. :try_end_91} :catch_198

    const/4 v14, 0x1

    :goto_92
    if-nez v12, :cond_96

    const-string v12, "false"

    :cond_96
    const-string v19, "ocsp.enable"

    move-object/from16 v0, v19

    invoke-static {v0, v12}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    :goto_a1
    return-object v19

    :cond_a2
    :try_start_a2
    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_a5
    .catch Ljava/security/cert/CertificateException; {:try_start_a2 .. :try_end_a5} :catch_a6

    goto :goto_2f

    :catch_a6
    move-exception v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v19, v0

    const-string v20, "installer_module"

    const/16 v21, 0x8

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v19 .. v22}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v19, "CertificatePolicy"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failure generating cert path: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    goto :goto_a1

    :cond_db
    const/4 v8, 0x1

    :try_start_dc
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/security/cert/X509Certificate;
    :try_end_ea
    .catch Ljava/security/cert/CertificateException; {:try_start_dc .. :try_end_ea} :catch_a6

    goto/16 :goto_47

    :catch_ec
    move-exception v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v19, v0

    const-string v20, "installer_module"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v19 .. v22}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v19, "CertificatePolicy"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Should not happen!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    goto :goto_a1

    :catch_121
    move-exception v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v19, v0

    const-string v20, "installer_module"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v19 .. v22}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v19, "CertificatePolicy"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Should not happen!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    goto/16 :goto_a1

    :cond_157
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    const-string v19, "ocsp.enable"

    const-string v20, "false"

    invoke-static/range {v19 .. v20}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_85

    :catch_167
    move-exception v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v19, v0

    const-string v20, "installer_module"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v19 .. v22}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v19, "CertificatePolicy"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Should not happen!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    goto/16 :goto_92

    :catch_198
    move-exception v10

    invoke-virtual {v10}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v11

    const-string v19, "CertificatePolicy"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Validation failed: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v19, "Additional certificate path checker failed."

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_1d1

    invoke-virtual {v10}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v16

    if-eqz v16, :cond_1d1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_1d1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    :cond_1d1
    const-string v19, "is revoked"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1e5

    const-string v19, "Certificate revocation after"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_1fb

    :cond_1e5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v19, v0

    const-string v20, "installer_module"

    const/16 v21, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v19 .. v22}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1f8
    const/4 v14, 0x0

    goto/16 :goto_92

    :cond_1fb
    const-string v19, "OCSP check failed!"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_241

    const-string v19, "Certificate status could not be determined."

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_241

    const-string v19, "CRL distribution point extension could not be read"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_241

    const-string v19, "No additional CRL locations could be decoded from CRL distribution point extension."

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_241

    const-string v19, "Distribution points could not be read."

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_241

    const-string v19, "No valid CRL found."

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_241

    const-string v19, "Unable to get CRL for certificate"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_255

    :cond_241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v19, v0

    const-string v20, "installer_module"

    const/16 v21, 0xd

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v19 .. v22}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1f8

    :cond_255
    const-string v19, ", expiration time"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_273

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v19, v0

    const-string v20, "installer_module"

    const/16 v21, 0x4

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v19 .. v22}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1f8

    :cond_273
    const-string v19, ", validation time"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_292

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v19, v0

    const-string v20, "installer_module"

    const/16 v21, 0x3

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v19 .. v22}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1f8

    :cond_292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v19, v0

    const-string v20, "installer_module"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v19 .. v22}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1f8
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;->doInBackground([Ljava/security/cert/X509Certificate;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mValidateCertInstallWait:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$2600(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_a
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #setter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mValidateCertInstallResult:Ljava/lang/Boolean;
    invoke-static {v0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$2702(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mValidateCertInstallWait:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$2600(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
