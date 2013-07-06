.class public Lcom/android/server/ssrm/PolicyCreator;
.super Ljava/lang/Object;
.source "PolicyCreator.java"


# static fields
.field private static final AUTH_KEY_STRING:Ljava/lang/String; = "#@Sam$SSRM_Util@Monitor.PolicyCreator*Authr4e3w2q1AmitSg09.park@samsung.com!com_sec_android_server_ssrm_PolicyCreator"

#the value of this static final field might be set in the static constructor
.field static final BUILD_TYPE_ENG:Z = false

.field private static final ENCRYPT_POLICY_FILE_PATH:Ljava/lang/String; = "/data/system/encrypt_ssrm_policy.xml"

.field static final INTERMEDIATE_DECRYPT_FILE_PATH:Ljava/lang/String; = "/data/system/temp.xml"

.field static final POLICY_FILE_PATH:Ljava/lang/String; = "/data/system/ssrm_policy.xml"

.field private static final SIOPFileName:Ljava/lang/String; = "siop_jf_att"

.field private static final SSRMFileName:Ljava/lang/String; = "ssrm_ja_xx"

.field static final TAG:Ljava/lang/String; = "XMLPolicyCreator"

.field private static final TEST_POLICY_PATH:Ljava/lang/String; = "/data/system/ssrm_policy_test.xml"

.field private static isEngConvertedToUser:Z

.field private static policyCreator:Lcom/android/server/ssrm/PolicyCreator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ssrm/PolicyCreator;->isEngConvertedToUser:Z

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/PolicyCreator;->BUILD_TYPE_ENG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private LoadRawFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "raw"

    const-string v6, "android"

    invoke-virtual {v4, p1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v5, "XMLPolicyCreator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " LoadRawFile :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " resID is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/ssrm/PolicyCreator;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_50

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v5

    new-array v0, v5, [B

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_4f
    return-object v5

    :cond_50
    const-string v5, "XMLPolicyCreator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No Resource found :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/ssrm/PolicyCreator;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, ""

    goto :goto_4f
.end method

.method private createPolicyFileEng()V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyCreator;->isTestPolicyXMLExist()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/android/server/ssrm/PolicyCreator;->isPolicyXMLExist()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyCreator;->isValidFingerPrint()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyCreator;->deletePolicyFile()V

    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyCreator;->generatePolicyFile()V

    :cond_18
    :goto_18
    return-void

    :cond_19
    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyCreator;->generatePolicyFile()V

    goto :goto_18

    :cond_1d
    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyCreator;->createPolicyFileUser()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/ssrm/PolicyCreator;->isEngConvertedToUser:Z

    goto :goto_18
.end method

.method private createPolicyFileUser()V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyCreator;->isValidFingerPrint()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyCreator;->deleteEncriptedFile()V

    :cond_9
    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyCreator;->isEncryptedPolicyXMLExist()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyCreator;->generatePolicyFile()V

    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyCreator;->encryptPolicyFile()V

    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyCreator;->deletePolicyFile()V

    :cond_18
    return-void
.end method

.method private deleteEncriptedFile()V
    .registers 3

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/encrypt_ssrm_policy.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private deletePolicyFile()V
    .registers 3

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/ssrm_policy.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private static deleteTempFile()V
    .registers 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/temp.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_10
    return-void
.end method

.method private encryptPolicyFile()V
    .registers 26

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    :try_start_3
    new-instance v10, Ljava/io/FileInputStream;

    new-instance v22, Ljava/io/File;

    const-string v23, "/data/system/ssrm_policy.xml"

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_189
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_11} :catch_22f
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_11} :catch_fe
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_11} :catch_117
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_11} :catch_12d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_11} :catch_144
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_11} :catch_15b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_11} :catch_172

    :try_start_11
    new-instance v18, Ljava/io/File;

    const-string v22, "/data/system/encrypt_ssrm_policy.xml"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_1cc
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_1f} :catch_96
    .catch Ljava/security/InvalidKeyException; {:try_start_11 .. :try_end_1f} :catch_220
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_11 .. :try_end_1f} :catch_211
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_11 .. :try_end_1f} :catch_202
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1f} :catch_1f3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_11 .. :try_end_1f} :catch_1e4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_11 .. :try_end_1f} :catch_1d8

    move-result v22

    if-nez v22, :cond_25

    :try_start_22
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->createNewFile()Z
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_1cc
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_72
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_25} :catch_96
    .catch Ljava/security/InvalidKeyException; {:try_start_22 .. :try_end_25} :catch_220
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_22 .. :try_end_25} :catch_211
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_22 .. :try_end_25} :catch_202
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_22 .. :try_end_25} :catch_1e4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_22 .. :try_end_25} :catch_1d8

    :cond_25
    :goto_25
    :try_start_25
    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_1cc
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_2c} :catch_96
    .catch Ljava/security/InvalidKeyException; {:try_start_25 .. :try_end_2c} :catch_220
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_25 .. :try_end_2c} :catch_211
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_25 .. :try_end_2c} :catch_202
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2c} :catch_1f3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_25 .. :try_end_2c} :catch_1e4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_25 .. :try_end_2c} :catch_1d8

    :try_start_2c
    new-instance v16, Ljavax/crypto/spec/PBEKeySpec;

    const-string v22, "#@Sam$SSRM_Util@Monitor.PolicyCreator*Authr4e3w2q1AmitSg09.park@samsung.com!com_sec_android_server_ssrm_PolicyCreator"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toCharArray()[C

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    const-string v22, "PBEWithMD5AndDES"

    invoke-static/range {v22 .. v22}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v15

    invoke-virtual/range {v15 .. v16}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v14

    const-string v22, "MD5"

    invoke-static/range {v22 .. v22}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v17

    const-string v22, "ssrmpolicy"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual/range {v17 .. v17}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    const/16 v22, 0x8

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v21, v0

    const/4 v13, 0x0

    :goto_65
    const/16 v22, 0x8

    move/from16 v0, v22

    if-ge v13, v0, :cond_ab

    aget-byte v22, v6, v13

    aput-byte v22, v21, v13
    :try_end_6f
    .catchall {:try_start_2c .. :try_end_6f} :catchall_1cf
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_6f} :catch_232
    .catch Ljava/security/InvalidKeyException; {:try_start_2c .. :try_end_6f} :catch_224
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2c .. :try_end_6f} :catch_215
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2c .. :try_end_6f} :catch_206
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_6f} :catch_1f7
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2c .. :try_end_6f} :catch_1e8
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2c .. :try_end_6f} :catch_1db

    add-int/lit8 v13, v13, 0x1

    goto :goto_65

    :catch_72
    move-exception v7

    :try_start_73
    const-string v22, "XMLPolicyCreator"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "encryptPolicyFile:: e = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/PolicyCreator;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_95
    .catchall {:try_start_73 .. :try_end_95} :catchall_1cc
    .catch Ljava/io/FileNotFoundException; {:try_start_73 .. :try_end_95} :catch_96
    .catch Ljava/security/InvalidKeyException; {:try_start_73 .. :try_end_95} :catch_220
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_73 .. :try_end_95} :catch_211
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_73 .. :try_end_95} :catch_202
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_95} :catch_1f3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_73 .. :try_end_95} :catch_1e4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_73 .. :try_end_95} :catch_1d8

    goto :goto_25

    :catch_96
    move-exception v8

    move-object v9, v10

    :goto_98
    :try_start_98
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_189

    if-eqz v11, :cond_a0

    :try_start_9d
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    :cond_a0
    if-eqz v9, :cond_a5

    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    :cond_a5
    if-eqz v4, :cond_aa

    invoke-virtual {v4}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_aa} :catch_1c9

    :cond_aa
    :goto_aa
    return-void

    :cond_ab
    :try_start_ab
    new-instance v19, Ljavax/crypto/spec/PBEParameterSpec;

    const/16 v22, 0x14

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    const-string v22, "PBEWithMD5AndDES"

    invoke-static/range {v22 .. v22}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v14, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v5, Ljavax/crypto/CipherInputStream;

    invoke-direct {v5, v10, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_cc
    .catchall {:try_start_ab .. :try_end_cc} :catchall_1cf
    .catch Ljava/io/FileNotFoundException; {:try_start_ab .. :try_end_cc} :catch_232
    .catch Ljava/security/InvalidKeyException; {:try_start_ab .. :try_end_cc} :catch_224
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_ab .. :try_end_cc} :catch_215
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_ab .. :try_end_cc} :catch_206
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_cc} :catch_1f7
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_ab .. :try_end_cc} :catch_1e8
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_ab .. :try_end_cc} :catch_1db

    :goto_cc
    :try_start_cc
    invoke-virtual {v5}, Ljavax/crypto/CipherInputStream;->read()I

    move-result v20

    const/16 v22, -0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_eb

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write(I)V

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V
    :try_end_e5
    .catchall {:try_start_cc .. :try_end_e5} :catchall_1d3
    .catch Ljava/io/FileNotFoundException; {:try_start_cc .. :try_end_e5} :catch_e6
    .catch Ljava/security/InvalidKeyException; {:try_start_cc .. :try_end_e5} :catch_229
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_cc .. :try_end_e5} :catch_21a
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_cc .. :try_end_e5} :catch_20b
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_e5} :catch_1fc
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_cc .. :try_end_e5} :catch_1ed
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_cc .. :try_end_e5} :catch_1df

    goto :goto_cc

    :catch_e6
    move-exception v8

    move-object v4, v5

    move-object v9, v10

    move-object v11, v12

    goto :goto_98

    :cond_eb
    if-eqz v12, :cond_f0

    :try_start_ed
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    :cond_f0
    if-eqz v10, :cond_f5

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    :cond_f5
    if-eqz v5, :cond_fa

    invoke-virtual {v5}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_fa} :catch_19f

    :cond_fa
    :goto_fa
    move-object v4, v5

    move-object v9, v10

    move-object v11, v12

    goto :goto_aa

    :catch_fe
    move-exception v7

    :goto_ff
    :try_start_ff
    invoke-virtual {v7}, Ljava/security/InvalidKeyException;->printStackTrace()V
    :try_end_102
    .catchall {:try_start_ff .. :try_end_102} :catchall_189

    if-eqz v11, :cond_107

    :try_start_104
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_107
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_107} :catch_1c3

    :cond_107
    if-eqz v9, :cond_10c

    :try_start_109
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_10c
    .catch Ljava/io/IOException; {:try_start_109 .. :try_end_10c} :catch_1c6

    :cond_10c
    if-eqz v4, :cond_aa

    :try_start_10e
    invoke-virtual {v4}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_111
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_111} :catch_112

    goto :goto_aa

    :catch_112
    move-exception v7

    :goto_113
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_aa

    :catch_117
    move-exception v7

    :goto_118
    :try_start_118
    invoke-virtual {v7}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_11b
    .catchall {:try_start_118 .. :try_end_11b} :catchall_189

    if-eqz v11, :cond_120

    :try_start_11d
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_120} :catch_1bd

    :cond_120
    if-eqz v9, :cond_125

    :try_start_122
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_125
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_125} :catch_1c0

    :cond_125
    if-eqz v4, :cond_aa

    :try_start_127
    invoke-virtual {v4}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_12a
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_12a} :catch_12b

    goto :goto_aa

    :catch_12b
    move-exception v7

    goto :goto_113

    :catch_12d
    move-exception v7

    :goto_12e
    :try_start_12e
    invoke-virtual {v7}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V
    :try_end_131
    .catchall {:try_start_12e .. :try_end_131} :catchall_189

    if-eqz v11, :cond_136

    :try_start_133
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_136
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_136} :catch_1b7

    :cond_136
    if-eqz v9, :cond_13b

    :try_start_138
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_13b
    .catch Ljava/io/IOException; {:try_start_138 .. :try_end_13b} :catch_1ba

    :cond_13b
    if-eqz v4, :cond_aa

    :try_start_13d
    invoke-virtual {v4}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_140
    .catch Ljava/io/IOException; {:try_start_13d .. :try_end_140} :catch_142

    goto/16 :goto_aa

    :catch_142
    move-exception v7

    goto :goto_113

    :catch_144
    move-exception v7

    :goto_145
    :try_start_145
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_148
    .catchall {:try_start_145 .. :try_end_148} :catchall_189

    if-eqz v11, :cond_14d

    :try_start_14a
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_14d
    .catch Ljava/io/IOException; {:try_start_14a .. :try_end_14d} :catch_1b1

    :cond_14d
    if-eqz v9, :cond_152

    :try_start_14f
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_152
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_152} :catch_1b4

    :cond_152
    if-eqz v4, :cond_aa

    :try_start_154
    invoke-virtual {v4}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_157
    .catch Ljava/io/IOException; {:try_start_154 .. :try_end_157} :catch_159

    goto/16 :goto_aa

    :catch_159
    move-exception v7

    goto :goto_113

    :catch_15b
    move-exception v7

    :goto_15c
    :try_start_15c
    invoke-virtual {v7}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V
    :try_end_15f
    .catchall {:try_start_15c .. :try_end_15f} :catchall_189

    if-eqz v11, :cond_164

    :try_start_161
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_164
    .catch Ljava/io/IOException; {:try_start_161 .. :try_end_164} :catch_1ab

    :cond_164
    if-eqz v9, :cond_169

    :try_start_166
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_169
    .catch Ljava/io/IOException; {:try_start_166 .. :try_end_169} :catch_1ae

    :cond_169
    if-eqz v4, :cond_aa

    :try_start_16b
    invoke-virtual {v4}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_16e
    .catch Ljava/io/IOException; {:try_start_16b .. :try_end_16e} :catch_170

    goto/16 :goto_aa

    :catch_170
    move-exception v7

    goto :goto_113

    :catch_172
    move-exception v7

    :goto_173
    :try_start_173
    invoke-virtual {v7}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V
    :try_end_176
    .catchall {:try_start_173 .. :try_end_176} :catchall_189

    if-eqz v11, :cond_17b

    :try_start_178
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_17b
    .catch Ljava/io/IOException; {:try_start_178 .. :try_end_17b} :catch_1a5

    :cond_17b
    if-eqz v9, :cond_180

    :try_start_17d
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_180
    .catch Ljava/io/IOException; {:try_start_17d .. :try_end_180} :catch_1a8

    :cond_180
    if-eqz v4, :cond_aa

    :try_start_182
    invoke-virtual {v4}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_185
    .catch Ljava/io/IOException; {:try_start_182 .. :try_end_185} :catch_187

    goto/16 :goto_aa

    :catch_187
    move-exception v7

    goto :goto_113

    :catchall_189
    move-exception v22

    :goto_18a
    if-eqz v11, :cond_18f

    :try_start_18c
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    :cond_18f
    if-eqz v9, :cond_194

    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    :cond_194
    if-eqz v4, :cond_199

    invoke-virtual {v4}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_199
    .catch Ljava/io/IOException; {:try_start_18c .. :try_end_199} :catch_19a

    :cond_199
    :goto_199
    throw v22

    :catch_19a
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_199

    :catch_19f
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_fa

    :catch_1a5
    move-exception v7

    goto/16 :goto_113

    :catch_1a8
    move-exception v7

    goto/16 :goto_113

    :catch_1ab
    move-exception v7

    goto/16 :goto_113

    :catch_1ae
    move-exception v7

    goto/16 :goto_113

    :catch_1b1
    move-exception v7

    goto/16 :goto_113

    :catch_1b4
    move-exception v7

    goto/16 :goto_113

    :catch_1b7
    move-exception v7

    goto/16 :goto_113

    :catch_1ba
    move-exception v7

    goto/16 :goto_113

    :catch_1bd
    move-exception v7

    goto/16 :goto_113

    :catch_1c0
    move-exception v7

    goto/16 :goto_113

    :catch_1c3
    move-exception v7

    goto/16 :goto_113

    :catch_1c6
    move-exception v7

    goto/16 :goto_113

    :catch_1c9
    move-exception v7

    goto/16 :goto_113

    :catchall_1cc
    move-exception v22

    move-object v9, v10

    goto :goto_18a

    :catchall_1cf
    move-exception v22

    move-object v9, v10

    move-object v11, v12

    goto :goto_18a

    :catchall_1d3
    move-exception v22

    move-object v4, v5

    move-object v9, v10

    move-object v11, v12

    goto :goto_18a

    :catch_1d8
    move-exception v7

    move-object v9, v10

    goto :goto_173

    :catch_1db
    move-exception v7

    move-object v9, v10

    move-object v11, v12

    goto :goto_173

    :catch_1df
    move-exception v7

    move-object v4, v5

    move-object v9, v10

    move-object v11, v12

    goto :goto_173

    :catch_1e4
    move-exception v7

    move-object v9, v10

    goto/16 :goto_15c

    :catch_1e8
    move-exception v7

    move-object v9, v10

    move-object v11, v12

    goto/16 :goto_15c

    :catch_1ed
    move-exception v7

    move-object v4, v5

    move-object v9, v10

    move-object v11, v12

    goto/16 :goto_15c

    :catch_1f3
    move-exception v7

    move-object v9, v10

    goto/16 :goto_145

    :catch_1f7
    move-exception v7

    move-object v9, v10

    move-object v11, v12

    goto/16 :goto_145

    :catch_1fc
    move-exception v7

    move-object v4, v5

    move-object v9, v10

    move-object v11, v12

    goto/16 :goto_145

    :catch_202
    move-exception v7

    move-object v9, v10

    goto/16 :goto_12e

    :catch_206
    move-exception v7

    move-object v9, v10

    move-object v11, v12

    goto/16 :goto_12e

    :catch_20b
    move-exception v7

    move-object v4, v5

    move-object v9, v10

    move-object v11, v12

    goto/16 :goto_12e

    :catch_211
    move-exception v7

    move-object v9, v10

    goto/16 :goto_118

    :catch_215
    move-exception v7

    move-object v9, v10

    move-object v11, v12

    goto/16 :goto_118

    :catch_21a
    move-exception v7

    move-object v4, v5

    move-object v9, v10

    move-object v11, v12

    goto/16 :goto_118

    :catch_220
    move-exception v7

    move-object v9, v10

    goto/16 :goto_ff

    :catch_224
    move-exception v7

    move-object v9, v10

    move-object v11, v12

    goto/16 :goto_ff

    :catch_229
    move-exception v7

    move-object v4, v5

    move-object v9, v10

    move-object v11, v12

    goto/16 :goto_ff

    :catch_22f
    move-exception v8

    goto/16 :goto_98

    :catch_232
    move-exception v8

    move-object v9, v10

    move-object v11, v12

    goto/16 :goto_98
.end method

.method private generatePolicyFile()V
    .registers 11

    const-string v0, ""

    const-string v1, ""

    :try_start_4
    const-string v7, "siop_jf_att"

    invoke-direct {p0, v7}, Lcom/android/server/ssrm/PolicyCreator;->LoadRawFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "ssrm_ja_xx"

    invoke-direct {p0, v7}, Lcom/android/server/ssrm/PolicyCreator;->LoadRawFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_f} :catch_24

    move-result-object v1

    :goto_10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_29

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_29

    const-string v7, "XMLPolicyCreator"

    const-string v8, "Empty raw Policy Files, Returning!!!"

    invoke-virtual {p0, v7, v8}, Lcom/android/server/ssrm/PolicyCreator;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    :goto_23
    return-void

    :catch_24
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    :cond_29
    const/4 v5, 0x0

    const/4 v2, 0x0

    :try_start_2b
    new-instance v6, Ljava/io/FileWriter;

    const-string v7, "/data/system/ssrm_policy.xml"

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_ac
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_32} :catch_89

    :try_start_32
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_d0
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_37} :catch_d7

    :try_start_37
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<PowerFramework fingerprint=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x22

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " >\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_69

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :cond_69
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_77

    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :cond_77
    const-string v7, "</PowerFramework>\n"

    invoke-virtual {v3, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_37 .. :try_end_7c} :catchall_d3
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_7c} :catch_da

    if-eqz v3, :cond_81

    :try_start_7e
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    :cond_81
    if-eqz v6, :cond_86

    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_86} :catch_c4

    :cond_86
    :goto_86
    move-object v2, v3

    move-object v5, v6

    goto :goto_23

    :catch_89
    move-exception v4

    :goto_8a
    :try_start_8a
    const-string v7, "XMLPolicyCreator"

    const-string v8, "Error during adding Build Finger:"

    invoke-virtual {p0, v7, v8}, Lcom/android/server/ssrm/PolicyCreator;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_94
    .catchall {:try_start_8a .. :try_end_94} :catchall_ac

    if-eqz v2, :cond_99

    :try_start_96
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    :cond_99
    if-eqz v5, :cond_23

    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_9e} :catch_9f

    goto :goto_23

    :catch_9f
    move-exception v4

    const-string v7, "XMLPolicyCreator"

    const-string v8, "Error during adding Build Finger:"

    invoke-virtual {p0, v7, v8}, Lcom/android/server/ssrm/PolicyCreator;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_23

    :catchall_ac
    move-exception v7

    :goto_ad
    if-eqz v2, :cond_b2

    :try_start_af
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    :cond_b2
    if-eqz v5, :cond_b7

    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b7} :catch_b8

    :cond_b7
    :goto_b7
    throw v7

    :catch_b8
    move-exception v4

    const-string v8, "XMLPolicyCreator"

    const-string v9, "Error during adding Build Finger:"

    invoke-virtual {p0, v8, v9}, Lcom/android/server/ssrm/PolicyCreator;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b7

    :catch_c4
    move-exception v4

    const-string v7, "XMLPolicyCreator"

    const-string v8, "Error during adding Build Finger:"

    invoke-virtual {p0, v7, v8}, Lcom/android/server/ssrm/PolicyCreator;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_86

    :catchall_d0
    move-exception v7

    move-object v5, v6

    goto :goto_ad

    :catchall_d3
    move-exception v7

    move-object v2, v3

    move-object v5, v6

    goto :goto_ad

    :catch_d7
    move-exception v4

    move-object v5, v6

    goto :goto_8a

    :catch_da
    move-exception v4

    move-object v2, v3

    move-object v5, v6

    goto :goto_8a
.end method

.method static getDecryptedPolicyPath()Ljava/lang/String;
    .registers 23

    sget-boolean v22, Lcom/android/server/ssrm/PolicyCreator;->BUILD_TYPE_ENG:Z

    if-eqz v22, :cond_d

    invoke-static {}, Lcom/android/server/ssrm/PolicyCreator;->isPolicyXMLExist()Z

    move-result v22

    if-eqz v22, :cond_d

    const-string v22, "/data/system/ssrm_policy.xml"

    :goto_c
    return-object v22

    :cond_d
    invoke-static {}, Lcom/android/server/ssrm/PolicyCreator;->deleteTempFile()V

    new-instance v21, Ljava/io/File;

    const-string v22, "/data/system/temp.xml"

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/io/File;

    const-string v22, "/data/system/encrypt_ssrm_policy.xml"

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_2c

    const/16 v22, 0x0

    goto :goto_c

    :cond_2c
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_d3

    :try_start_32
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->createNewFile()Z

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_162
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3a} :catch_1ee
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_32 .. :try_end_3a} :catch_f0
    .catch Ljava/security/InvalidKeyException; {:try_start_32 .. :try_end_3a} :catch_109
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_32 .. :try_end_3a} :catch_11f
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_32 .. :try_end_3a} :catch_135
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_32 .. :try_end_3a} :catch_14b

    :try_start_3a
    new-instance v7, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_19b
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_41} :catch_1f1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3a .. :try_end_41} :catch_1df
    .catch Ljava/security/InvalidKeyException; {:try_start_3a .. :try_end_41} :catch_1d0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3a .. :try_end_41} :catch_1c1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3a .. :try_end_41} :catch_1b3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3a .. :try_end_41} :catch_1a7

    :try_start_41
    new-instance v16, Ljavax/crypto/spec/PBEKeySpec;

    const-string v22, "#@Sam$SSRM_Util@Monitor.PolicyCreator*Authr4e3w2q1AmitSg09.park@samsung.com!com_sec_android_server_ssrm_PolicyCreator"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toCharArray()[C

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    const-string v22, "PBEWithMD5AndDES"

    invoke-static/range {v22 .. v22}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v15

    invoke-virtual/range {v15 .. v16}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v14

    const-string v22, "MD5"

    invoke-static/range {v22 .. v22}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v17

    const-string v22, "ssrmpolicy"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual/range {v17 .. v17}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    const/16 v22, 0x8

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v20, v0

    const/4 v13, 0x0

    :goto_7a
    const/16 v22, 0x8

    move/from16 v0, v22

    if-ge v13, v0, :cond_87

    aget-byte v22, v8, v13

    aput-byte v22, v20, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_7a

    :cond_87
    new-instance v18, Ljavax/crypto/spec/PBEParameterSpec;

    const/16 v22, 0x14

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    const-string v22, "PBEWithMD5AndDES"

    invoke-static/range {v22 .. v22}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v14, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v5, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v5, v7, v3}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    :try_end_a8
    .catchall {:try_start_41 .. :try_end_a8} :catchall_19e
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_a8} :catch_1f5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_41 .. :try_end_a8} :catch_1e3
    .catch Ljava/security/InvalidKeyException; {:try_start_41 .. :try_end_a8} :catch_1d4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_41 .. :try_end_a8} :catch_1c5
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_41 .. :try_end_a8} :catch_1b6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_41 .. :try_end_a8} :catch_1aa

    :goto_a8
    :try_start_a8
    invoke-virtual {v11}, Ljava/io/FileInputStream;->read()I

    move-result v19

    const/16 v22, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_dd

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljavax/crypto/CipherOutputStream;->write(I)V

    invoke-virtual {v5}, Ljavax/crypto/CipherOutputStream;->flush()V
    :try_end_bc
    .catchall {:try_start_a8 .. :try_end_bc} :catchall_1a2
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_bc} :catch_bd
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a8 .. :try_end_bc} :catch_1e8
    .catch Ljava/security/InvalidKeyException; {:try_start_a8 .. :try_end_bc} :catch_1d9
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_a8 .. :try_end_bc} :catch_1ca
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_a8 .. :try_end_bc} :catch_1bb
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_a8 .. :try_end_bc} :catch_1ae

    goto :goto_a8

    :catch_bd
    move-exception v9

    move-object v4, v5

    move-object v6, v7

    move-object v10, v11

    :goto_c1
    :try_start_c1
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c4
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_162

    if-eqz v4, :cond_c9

    :try_start_c6
    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->close()V

    :cond_c9
    if-eqz v10, :cond_ce

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    :cond_ce
    if-eqz v6, :cond_d3

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_d3} :catch_198

    :cond_d3
    :goto_d3
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_c

    :cond_dd
    if-eqz v5, :cond_e2

    :try_start_df
    invoke-virtual {v5}, Ljavax/crypto/CipherOutputStream;->close()V

    :cond_e2
    if-eqz v11, :cond_e7

    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    :cond_e7
    if-eqz v7, :cond_ec

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_ec} :catch_178

    :cond_ec
    :goto_ec
    move-object v4, v5

    move-object v6, v7

    move-object v10, v11

    goto :goto_d3

    :catch_f0
    move-exception v9

    :goto_f1
    :try_start_f1
    invoke-virtual {v9}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_f4
    .catchall {:try_start_f1 .. :try_end_f4} :catchall_162

    if-eqz v4, :cond_f9

    :try_start_f6
    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_f9} :catch_192

    :cond_f9
    if-eqz v10, :cond_fe

    :try_start_fb
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_fe
    .catch Ljava/io/IOException; {:try_start_fb .. :try_end_fe} :catch_195

    :cond_fe
    if-eqz v6, :cond_d3

    :try_start_100
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_103
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_103} :catch_104

    goto :goto_d3

    :catch_104
    move-exception v9

    :goto_105
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d3

    :catch_109
    move-exception v9

    :goto_10a
    :try_start_10a
    invoke-virtual {v9}, Ljava/security/InvalidKeyException;->printStackTrace()V
    :try_end_10d
    .catchall {:try_start_10a .. :try_end_10d} :catchall_162

    if-eqz v4, :cond_112

    :try_start_10f
    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_112
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_112} :catch_18c

    :cond_112
    if-eqz v10, :cond_117

    :try_start_114
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_117
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_117} :catch_18f

    :cond_117
    if-eqz v6, :cond_d3

    :try_start_119
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_11c
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_11c} :catch_11d

    goto :goto_d3

    :catch_11d
    move-exception v9

    goto :goto_105

    :catch_11f
    move-exception v9

    :goto_120
    :try_start_120
    invoke-virtual {v9}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V
    :try_end_123
    .catchall {:try_start_120 .. :try_end_123} :catchall_162

    if-eqz v4, :cond_128

    :try_start_125
    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_128} :catch_186

    :cond_128
    if-eqz v10, :cond_12d

    :try_start_12a
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_12d
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_12d} :catch_189

    :cond_12d
    if-eqz v6, :cond_d3

    :try_start_12f
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_132
    .catch Ljava/io/IOException; {:try_start_12f .. :try_end_132} :catch_133

    goto :goto_d3

    :catch_133
    move-exception v9

    goto :goto_105

    :catch_135
    move-exception v9

    :goto_136
    :try_start_136
    invoke-virtual {v9}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V
    :try_end_139
    .catchall {:try_start_136 .. :try_end_139} :catchall_162

    if-eqz v4, :cond_13e

    :try_start_13b
    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_13e
    .catch Ljava/io/IOException; {:try_start_13b .. :try_end_13e} :catch_182

    :cond_13e
    if-eqz v10, :cond_143

    :try_start_140
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_140 .. :try_end_143} :catch_184

    :cond_143
    if-eqz v6, :cond_d3

    :try_start_145
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_148
    .catch Ljava/io/IOException; {:try_start_145 .. :try_end_148} :catch_149

    goto :goto_d3

    :catch_149
    move-exception v9

    goto :goto_105

    :catch_14b
    move-exception v9

    :goto_14c
    :try_start_14c
    invoke-virtual {v9}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V
    :try_end_14f
    .catchall {:try_start_14c .. :try_end_14f} :catchall_162

    if-eqz v4, :cond_154

    :try_start_151
    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_154
    .catch Ljava/io/IOException; {:try_start_151 .. :try_end_154} :catch_17e

    :cond_154
    if-eqz v10, :cond_159

    :try_start_156
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_159
    .catch Ljava/io/IOException; {:try_start_156 .. :try_end_159} :catch_180

    :cond_159
    if-eqz v6, :cond_d3

    :try_start_15b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_15e
    .catch Ljava/io/IOException; {:try_start_15b .. :try_end_15e} :catch_160

    goto/16 :goto_d3

    :catch_160
    move-exception v9

    goto :goto_105

    :catchall_162
    move-exception v22

    :goto_163
    if-eqz v4, :cond_168

    :try_start_165
    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->close()V

    :cond_168
    if-eqz v10, :cond_16d

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    :cond_16d
    if-eqz v6, :cond_172

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_172
    .catch Ljava/io/IOException; {:try_start_165 .. :try_end_172} :catch_173

    :cond_172
    :goto_172
    throw v22

    :catch_173
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_172

    :catch_178
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_ec

    :catch_17e
    move-exception v9

    goto :goto_105

    :catch_180
    move-exception v9

    goto :goto_105

    :catch_182
    move-exception v9

    goto :goto_105

    :catch_184
    move-exception v9

    goto :goto_105

    :catch_186
    move-exception v9

    goto/16 :goto_105

    :catch_189
    move-exception v9

    goto/16 :goto_105

    :catch_18c
    move-exception v9

    goto/16 :goto_105

    :catch_18f
    move-exception v9

    goto/16 :goto_105

    :catch_192
    move-exception v9

    goto/16 :goto_105

    :catch_195
    move-exception v9

    goto/16 :goto_105

    :catch_198
    move-exception v9

    goto/16 :goto_105

    :catchall_19b
    move-exception v22

    move-object v10, v11

    goto :goto_163

    :catchall_19e
    move-exception v22

    move-object v6, v7

    move-object v10, v11

    goto :goto_163

    :catchall_1a2
    move-exception v22

    move-object v4, v5

    move-object v6, v7

    move-object v10, v11

    goto :goto_163

    :catch_1a7
    move-exception v9

    move-object v10, v11

    goto :goto_14c

    :catch_1aa
    move-exception v9

    move-object v6, v7

    move-object v10, v11

    goto :goto_14c

    :catch_1ae
    move-exception v9

    move-object v4, v5

    move-object v6, v7

    move-object v10, v11

    goto :goto_14c

    :catch_1b3
    move-exception v9

    move-object v10, v11

    goto :goto_136

    :catch_1b6
    move-exception v9

    move-object v6, v7

    move-object v10, v11

    goto/16 :goto_136

    :catch_1bb
    move-exception v9

    move-object v4, v5

    move-object v6, v7

    move-object v10, v11

    goto/16 :goto_136

    :catch_1c1
    move-exception v9

    move-object v10, v11

    goto/16 :goto_120

    :catch_1c5
    move-exception v9

    move-object v6, v7

    move-object v10, v11

    goto/16 :goto_120

    :catch_1ca
    move-exception v9

    move-object v4, v5

    move-object v6, v7

    move-object v10, v11

    goto/16 :goto_120

    :catch_1d0
    move-exception v9

    move-object v10, v11

    goto/16 :goto_10a

    :catch_1d4
    move-exception v9

    move-object v6, v7

    move-object v10, v11

    goto/16 :goto_10a

    :catch_1d9
    move-exception v9

    move-object v4, v5

    move-object v6, v7

    move-object v10, v11

    goto/16 :goto_10a

    :catch_1df
    move-exception v9

    move-object v10, v11

    goto/16 :goto_f1

    :catch_1e3
    move-exception v9

    move-object v6, v7

    move-object v10, v11

    goto/16 :goto_f1

    :catch_1e8
    move-exception v9

    move-object v4, v5

    move-object v6, v7

    move-object v10, v11

    goto/16 :goto_f1

    :catch_1ee
    move-exception v9

    goto/16 :goto_c1

    :catch_1f1
    move-exception v9

    move-object v10, v11

    goto/16 :goto_c1

    :catch_1f5
    move-exception v9

    move-object v6, v7

    move-object v10, v11

    goto/16 :goto_c1
.end method

.method public static getInstance()Lcom/android/server/ssrm/PolicyCreator;
    .registers 1

    sget-object v0, Lcom/android/server/ssrm/PolicyCreator;->policyCreator:Lcom/android/server/ssrm/PolicyCreator;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/server/ssrm/PolicyCreator;

    invoke-direct {v0}, Lcom/android/server/ssrm/PolicyCreator;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/PolicyCreator;->policyCreator:Lcom/android/server/ssrm/PolicyCreator;

    :cond_b
    sget-object v0, Lcom/android/server/ssrm/PolicyCreator;->policyCreator:Lcom/android/server/ssrm/PolicyCreator;

    return-object v0
.end method

.method private isEncryptedPolicyXMLExist()Z
    .registers 6

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/encrypt_ssrm_policy.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1f

    const/4 v1, 0x1

    :goto_1e
    return v1

    :cond_1f
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public static isPolicyXMLExist()Z
    .registers 5

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/ssrm_policy.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1f

    const/4 v1, 0x1

    :goto_1e
    return v1

    :cond_1f
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method private isTestPolicyXMLExist()Z
    .registers 3

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/ssrm_policy_test.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method private isValidFingerPrint()Z
    .registers 4

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/ssrm_policy.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/ssrm/PolicyReader;->readFingerPrint()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    :goto_16
    return v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method


# virtual methods
.method public createPolicyFile()V
    .registers 2

    sget-boolean v0, Lcom/android/server/ssrm/PolicyCreator;->BUILD_TYPE_ENG:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyCreator;->createPolicyFileEng()V

    :goto_7
    return-void

    :cond_8
    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyCreator;->createPolicyFileUser()V

    goto :goto_7
.end method

.method public isPolicyFileCreated()Z
    .registers 2

    sget-boolean v0, Lcom/android/server/ssrm/PolicyCreator;->BUILD_TYPE_ENG:Z

    if-eqz v0, :cond_d

    sget-boolean v0, Lcom/android/server/ssrm/PolicyCreator;->isEngConvertedToUser:Z

    if-nez v0, :cond_d

    invoke-static {}, Lcom/android/server/ssrm/PolicyCreator;->isPolicyXMLExist()Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyCreator;->isEncryptedPolicyXMLExist()Z

    move-result v0

    goto :goto_c
.end method

.method public logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/android/server/ssrm/PolicyCreator;->BUILD_TYPE_ENG:Z

    if-eqz v0, :cond_7

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method
