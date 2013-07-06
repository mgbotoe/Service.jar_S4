.class Lcom/android/server/WifiService$7;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    iget-object v7, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/WifiService;->access$300(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_generalinfo_nwinfo"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/android/server/WifiService;->access$100()Z

    move-result v7

    if-eqz v7, :cond_2e

    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "String Matched General Info List"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    :try_start_2e
    new-instance v5, Ljava/io/File;

    const-string v7, "/data/misc/wifi"

    const-string v8, "generalinfo_nw.conf"

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_37} :catch_67
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_37} :catch_8e

    :try_start_37
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const-string v8, "chmod 664 /data/misc/wifi/generalinfo_nw.conf"

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_43} :catch_62
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_43} :catch_67

    move-result-object v4

    :try_start_44
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_4a
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_4a} :catch_5d
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4a} :catch_62
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_4a} :catch_67

    :goto_4a
    const/4 v2, 0x0

    :try_start_4b
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v3, v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_51} :catch_70
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_51} :catch_67
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_51} :catch_8e

    move-object v2, v3

    :goto_52
    :try_start_52
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_52 .. :try_end_5c} :catch_67
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_5c} :catch_8e

    :goto_5c
    return-void

    :catch_5d
    move-exception v0

    :try_start_5e
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62
    .catch Ljava/io/FileNotFoundException; {:try_start_5e .. :try_end_61} :catch_67

    goto :goto_4a

    :catch_62
    move-exception v0

    :try_start_63
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_66
    .catch Ljava/io/FileNotFoundException; {:try_start_63 .. :try_end_66} :catch_67
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_8e

    goto :goto_4a

    :catch_67
    move-exception v0

    const-string v7, "WifiService"

    const-string v8, "GeneralInfo Network File Create Not Found "

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    :catch_70
    move-exception v1

    :try_start_71
    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generalinfofilepath create file failed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catch Ljava/io/FileNotFoundException; {:try_start_71 .. :try_end_8d} :catch_67
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_8d} :catch_8e

    goto :goto_52

    :catch_8e
    move-exception v0

    const-string v7, "WifiService"

    const-string v8, "GeneralInfo Network IOException"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c
.end method
