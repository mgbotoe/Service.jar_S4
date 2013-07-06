.class Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsHandler;
.super Landroid/os/Handler;
.source "IptablesLogging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/auditlog/IptablesLogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommandsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/auditlog/IptablesLogging;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/auditlog/IptablesLogging;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsHandler;->this$0:Lcom/android/server/enterprise/auditlog/IptablesLogging;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16

    const-wide/16 v12, 0x3e8

    :try_start_2
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_39

    :goto_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_16
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_86

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v12, " "

    invoke-virtual {v1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    array-length v10, v0

    const/4 v7, 0x0

    :goto_2f
    if-ge v7, v10, :cond_43

    aget-object v2, v0, v7

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    :catch_39
    move-exception v6

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v6, v13}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_5

    :cond_43
    :try_start_43
    new-instance v12, Ljava/lang/ProcessBuilder;

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Process;->waitFor()I
    :try_end_5b
    .catchall {:try_start_43 .. :try_end_5b} :catchall_70
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_5b} :catch_5f
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_5b} :catch_75

    :goto_5b
    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_16

    :catch_5f
    move-exception v6

    :try_start_60
    const-string v12, "IptablesLogging"

    const-string v13, "IOException iptables command failed"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v6, v13}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_60 .. :try_end_6f} :catchall_70

    goto :goto_5b

    :catchall_70
    move-exception v12

    invoke-interface {v4}, Ljava/util/List;->clear()V

    throw v12

    :catch_75
    move-exception v6

    :try_start_76
    const-string v12, "IptablesLogging"

    const-string v13, "InterruptedException iptables command failed"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v6, v13}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_76 .. :try_end_85} :catchall_70

    goto :goto_5b

    :cond_86
    return-void
.end method
