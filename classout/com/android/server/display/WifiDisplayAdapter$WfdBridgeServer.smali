.class Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;
.super Ljava/lang/Thread;
.source "WifiDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfdBridgeServer"
.end annotation


# static fields
.field public static final CONNECT_TYPE_CLIENT:I = 0x3

.field public static final CONNECT_TYPE_CONNECTING:I = 0x1

.field public static final CONNECT_TYPE_INITIALIZED:I = -0x1

.field public static final CONNECT_TYPE_NOT_CONNECTED:I = 0x0

.field public static final CONNECT_TYPE_SERVER:I = 0x2

.field public static final STATE_DISABLED:I = 0x0

.field public static final STATE_ENABLED:I = 0x1

.field private static final WfdBridgetPort:I = 0x26b5


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBridgeConnType:I

.field public mBusyFlag:I

.field private mContext:Landroid/content/Context;

.field private mInetAddress:Ljava/net/InetAddress;

.field private mInputStream:Ljava/io/InputStream;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mServerSocket:Ljava/net/ServerSocket;

.field public mSinkState:I

.field private mSocket:Ljava/net/Socket;

.field public mSourceState:I

.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/content/Context;Ljava/net/InetAddress;)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "WfdBridgeServer"

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSocket:Ljava/net/Socket;

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mInetAddress:Ljava/net/InetAddress;

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mInputStream:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mOutputStream:Ljava/io/OutputStream;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBridgeConnType:I

    iput v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSourceState:I

    iput v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSinkState:I

    iput v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBusyFlag:I

    iput-object p2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mInetAddress:Ljava/net/InetAddress;

    const-string v0, "WfdBridgeServer"

    const-string v1, "WfdBridgeServer is created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private RecvCommand()Z
    .registers 9

    const-string v5, "WfdBridgeServer"

    const-string v6, "Run ComRcvLoop"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/16 v5, 0x100

    new-array v0, v5, [B

    :goto_c
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_d7

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    :try_start_16
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_bc

    const-string v5, "WfdBridgeServer"

    const-string v6, "Just got CMD from client"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    const-class v5, Lcom/android/server/display/CmdInfo;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/CmdInfo;

    const-string v5, "WfdBridgeServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CmdType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/server/display/CmdInfo;->getCmdType()Lcom/android/server/display/CmdInfo$CmdType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/display/CmdInfo$CmdType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/server/display/WifiDisplayAdapter$13;->$SwitchMap$com$android$server$display$CmdInfo$CmdType:[I

    invoke-virtual {v1}, Lcom/android/server/display/CmdInfo;->getCmdType()Lcom/android/server/display/CmdInfo$CmdType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/display/CmdInfo$CmdType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_e0

    const-string v5, "WfdBridgeServer"

    const-string v6, "Wrong Cmd Type is accepted"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_16 .. :try_end_6f} :catchall_96
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_6f} :catch_7d

    :goto_6f
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    goto :goto_c

    :pswitch_73
    :try_start_73
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/CmdInfo;->getCmdDetail()I

    move-result v6

    #calls: Lcom/android/server/display/WifiDisplayAdapter;->launchWfdPlayer(I)V
    invoke-static {v5, v6}, Lcom/android/server/display/WifiDisplayAdapter;->access$2300(Lcom/android/server/display/WifiDisplayAdapter;I)V
    :try_end_7c
    .catchall {:try_start_73 .. :try_end_7c} :catchall_96
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_7c} :catch_7d

    goto :goto_6f

    :catch_7d
    move-exception v2

    :try_start_7e
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v5, "WfdBridgeServer"

    const-string v6, "Catch exception parcel"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_7e .. :try_end_88} :catchall_96

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    goto :goto_c

    :pswitch_8c
    :try_start_8c
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/CmdInfo;->getCmdDetail()I

    move-result v6

    #calls: Lcom/android/server/display/WifiDisplayAdapter;->startSourceRTSP(I)V
    invoke-static {v5, v6}, Lcom/android/server/display/WifiDisplayAdapter;->access$2400(Lcom/android/server/display/WifiDisplayAdapter;I)V
    :try_end_95
    .catchall {:try_start_8c .. :try_end_95} :catchall_96
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_95} :catch_7d

    goto :goto_6f

    :catchall_96
    move-exception v5

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    throw v5

    :pswitch_9b
    :try_start_9b
    invoke-virtual {v1}, Lcom/android/server/display/CmdInfo;->getCmdDetail()I

    move-result v5

    iput v5, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBusyFlag:I

    const-string v5, "WfdBridgeServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mBusyFlag = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBusyFlag:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    :cond_bc
    const-string v5, "WfdBridgeServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Input Stream is < 0  len = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d4
    .catchall {:try_start_9b .. :try_end_d4} :catchall_96
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_d4} :catch_7d

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    :cond_d7
    const-string v5, "WfdBridgeServer"

    const-string v6, "ComRcvLoop End"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    return v5

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_73
        :pswitch_8c
        :pswitch_9b
    .end packed-switch
.end method

.method static synthetic access$2100(Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->sendCmdLaunchWfdPlayer(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->sendCmdStartWfdSource(I)V

    return-void
.end method

.method private sendCmd(Lcom/android/server/display/CmdInfo;)V
    .registers 6

    :try_start_0
    const-string v2, "WfdBridgeServer"

    const-string v3, "-> sendCmd"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    const-string v2, "WfdBridgeServer"

    const-string v3, "<-send finished"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_26} :catch_27

    :goto_26
    return-void

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_26
.end method

.method private sendCmdLaunchWfdPlayer(I)V
    .registers 6

    const-string v1, "WfdBridgeServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCmdLaunchWfdPlayer /w deviceType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/display/CmdInfo;

    sget-object v1, Lcom/android/server/display/CmdInfo$CmdType;->START_PLAYER:Lcom/android/server/display/CmdInfo$CmdType;

    invoke-direct {v0, v1, p1}, Lcom/android/server/display/CmdInfo;-><init>(Lcom/android/server/display/CmdInfo$CmdType;I)V

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->sendCmd(Lcom/android/server/display/CmdInfo;)V

    return-void
.end method

.method private sendCmdStartWfdSource(I)V
    .registers 6

    const-string v1, "WfdBridgeServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCmdStartWfdSource /w deviceType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/display/CmdInfo;

    sget-object v1, Lcom/android/server/display/CmdInfo$CmdType;->START_SOURCE:Lcom/android/server/display/CmdInfo$CmdType;

    invoke-direct {v0, v1, p1}, Lcom/android/server/display/CmdInfo;-><init>(Lcom/android/server/display/CmdInfo$CmdType;I)V

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->sendCmd(Lcom/android/server/display/CmdInfo;)V

    return-void
.end method


# virtual methods
.method public closeBridge()V
    .registers 4

    const-string v1, "WfdBridgeServer"

    const-string v2, "closeBridge"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSocket:Ljava/net/Socket;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    :cond_10
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSocket:Ljava/net/Socket;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    :cond_1c
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBridgeConnType:I
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_22} :catch_23

    :goto_22
    return-void

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_22
.end method

.method public connectBridge()V
    .registers 7

    const/4 v5, 0x0

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBridgeConnType:I

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mInetAddress:Ljava/net/InetAddress;

    if-nez v1, :cond_65

    :try_start_8
    const-string v1, "WfdBridgeServer"

    const-string v2, "try to create SocketServer..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/net/ServerSocket;

    const/16 v2, 0x26b5

    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_41

    :try_start_18
    const-string v1, "WfdBridgeServer"

    const-string v2, "wait for a client..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSocket:Ljava/net/Socket;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_4f

    const-string v1, "WfdBridgeServer"

    const-string v2, "Connect to client Success!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBridgeConnType:I
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_40} :catch_5a

    :goto_40
    return-void

    :catch_41
    move-exception v0

    const-string v1, "WfdBridgeServer"

    const-string v2, "Catch Exception: SocketServer create failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    iput v5, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBridgeConnType:I

    goto :goto_40

    :cond_4f
    :try_start_4f
    const-string v1, "WfdBridgeServer"

    const-string v2, "Connect Fail with client"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBridgeConnType:I
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_59} :catch_5a

    goto :goto_40

    :catch_5a
    move-exception v0

    const-string v1, "WfdBridgeServer"

    const-string v2, "Catch Exception: Connect Fail with client"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBridgeConnType:I

    goto :goto_40

    :cond_65
    :try_start_65
    const-string v1, "WfdBridgeServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try to connect server : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mInetAddress:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSocket:Ljava/net/Socket;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSocket:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mInetAddress:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x26b5

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v3, 0xc8

    invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_bc

    const-string v1, "WfdBridgeServer"

    const-string v2, "Connect to server Success!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBridgeConnType:I
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_b0} :catch_b1

    goto :goto_40

    :catch_b1
    move-exception v0

    const-string v1, "WfdBridgeServer"

    const-string v2, "Catch Exception: Connect Fail to server"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBridgeConnType:I

    goto :goto_40

    :cond_bc
    :try_start_bc
    const-string v1, "WfdBridgeServer"

    const-string v2, "Connect Fail to server"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBridgeConnType:I
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_c6} :catch_b1

    goto/16 :goto_40
.end method

.method public getBridgeConnType()I
    .registers 2

    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBridgeConnType:I

    return v0
.end method

.method public getConnectedAddress()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public isConnected()Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_45

    const-string v2, "WfdBridgeServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isConnected? mBridgeConnType ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBridgeConnType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), mSocket connected("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBridgeConnType:I

    if-le v2, v0, :cond_43

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_43

    :goto_42
    return v0

    :cond_43
    move v0, v1

    goto :goto_42

    :cond_45
    const-string v0, "WfdBridgeServer"

    const-string v2, "isConnected? return false"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_42
.end method

.method public isPartnerBusy()I
    .registers 4

    const-string v0, "WfdBridgeServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Other side is busy ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBusyFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBusyFlag:I

    return v0
.end method

.method public isWfdEngineRunning()Z
    .registers 5

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSourceState:I

    if-eq v1, v0, :cond_9

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSinkState:I

    if-ne v1, v0, :cond_36

    :cond_9
    const-string v1, "WfdBridgeServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WFD engine state(source:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSourceState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sink:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSinkState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_35
    return v0

    :cond_36
    const-string v0, "WfdBridgeServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WFD engine state(source:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSourceState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sink:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSinkState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_35
.end method

.method public run()V
    .registers 6

    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x19

    if-ge v1, v2, :cond_10

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->connectBridge()V

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    if-nez v2, :cond_10

    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBridgeConnType:I

    if-eqz v2, :cond_21

    :cond_10
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->isConnected()Z

    move-result v2

    if-nez v2, :cond_3c

    const-string v2, "WfdBridgeServer"

    const-string v3, "Does not connected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->closeBridge()V

    :goto_20
    return-void

    :cond_21
    const-string v2, "WfdBridgeServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retry cont "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3c
    :try_start_3c
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mOutputStream:Ljava/io/OutputStream;
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_44} :catch_53

    :goto_44
    :try_start_44
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mInputStream:Ljava/io/InputStream;

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->RecvCommand()Z
    :try_end_4f
    .catchall {:try_start_44 .. :try_end_4f} :catchall_60
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4f} :catch_58

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->closeBridge()V

    goto :goto_20

    :catch_53
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_44

    :catch_58
    move-exception v0

    :try_start_59
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_60

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->closeBridge()V

    goto :goto_20

    :catchall_60
    move-exception v2

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->closeBridge()V

    throw v2
.end method

.method public setSinkState(I)V
    .registers 6

    const-string v1, "WfdBridgeServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSinkState ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " etc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSourceState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSinkState:I

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_41

    new-instance v0, Lcom/android/server/display/CmdInfo;

    sget-object v1, Lcom/android/server/display/CmdInfo$CmdType;->SET_BUSY_FLAG:Lcom/android/server/display/CmdInfo$CmdType;

    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSinkState:I

    iget v3, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSourceState:I

    or-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/CmdInfo;-><init>(Lcom/android/server/display/CmdInfo$CmdType;I)V

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->sendCmd(Lcom/android/server/display/CmdInfo;)V

    :cond_41
    return-void
.end method

.method public setSourceState(I)V
    .registers 6

    const-string v1, "WfdBridgeServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSourceState ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " etc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSinkState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSourceState:I

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_41

    new-instance v0, Lcom/android/server/display/CmdInfo;

    sget-object v1, Lcom/android/server/display/CmdInfo$CmdType;->SET_BUSY_FLAG:Lcom/android/server/display/CmdInfo$CmdType;

    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSinkState:I

    iget v3, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSourceState:I

    or-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/CmdInfo;-><init>(Lcom/android/server/display/CmdInfo$CmdType;I)V

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->sendCmd(Lcom/android/server/display/CmdInfo;)V

    :cond_41
    return-void
.end method
