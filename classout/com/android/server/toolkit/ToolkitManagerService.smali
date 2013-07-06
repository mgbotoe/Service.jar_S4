.class public Lcom/android/server/toolkit/ToolkitManagerService;
.super Landroid/toolkit/IToolkitService$Stub;
.source "ToolkitManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/toolkit/ToolkitManagerService$ReceiveData;
    }
.end annotation


# static fields
.field private static final HIDE_TOOLKITBAR:I = 0x4

.field private static final MAX_VER:I = 0x3e8

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "ToolkitManagerService"

.field private static final REFRESH_TOOLKITBAR:I = 0x5

.field private static final SEND_BUNDLE:I = 0x1

.field private static final SHOW_TOOLKITBAR:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ToolkitManagerService"


# instance fields
.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/toolkit/IToolkitServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentHostPackageName:Ljava/lang/String;

.field private mCurrentPluginPackageNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageMap:Ljava/util/HashMap;

.field private final mPluginDataHandler:Landroid/os/Handler;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mShowingTab:Z

.field private mTabWindow:Lcom/android/server/toolkit/ToolkitTabDialog;

.field private mVer:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/toolkit/IToolkitService$Stub;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mPackageMap:Ljava/util/HashMap;

    iput v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mVer:I

    iput-boolean v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mShowingTab:Z

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/server/toolkit/ToolkitManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/toolkit/ToolkitManagerService$1;-><init>(Lcom/android/server/toolkit/ToolkitManagerService;)V

    iput-object v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mPluginDataHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mContext:Landroid/content/Context;

    return-void
.end method

.method private SendData(Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .registers 12

    const/4 v5, 0x0

    if-eqz p1, :cond_5

    if-nez p3, :cond_7

    :cond_5
    move v4, v5

    :goto_6
    return v4

    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5a

    iget-object v4, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v0, :cond_55

    :try_start_16
    iget-object v4, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    iget-object v4, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/toolkit/IToolkitServiceCallback;

    invoke-interface {v4, p2, p3}, Landroid/toolkit/IToolkitServiceCallback;->onReceiveBundle(ILandroid/os/Bundle;)V

    iget-object v4, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_34} :catch_36

    const/4 v4, 0x1

    goto :goto_6

    :catch_36
    move-exception v1

    const-string v4, "ToolkitManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_55
    iget-object v4, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_5a
    const-string v4, "ToolkitManagerService"

    const-string v6, "The app is not running."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto :goto_6
.end method

.method private SendMessage(ILjava/lang/Object;I)V
    .registers 8

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p3, :cond_13

    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mPluginDataHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_12
    return-void

    :cond_13
    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mPluginDataHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_12
.end method

.method static synthetic access$000(Lcom/android/server/toolkit/ToolkitManagerService;Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/toolkit/ToolkitManagerService;->SendData(Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/toolkit/ToolkitManagerService;ILjava/lang/Object;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/toolkit/ToolkitManagerService;->SendMessage(ILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/toolkit/ToolkitManagerService;)Lcom/android/server/toolkit/ToolkitTabDialog;
    .registers 2

    iget-object v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mTabWindow:Lcom/android/server/toolkit/ToolkitTabDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/toolkit/ToolkitManagerService;Lcom/android/server/toolkit/ToolkitTabDialog;)Lcom/android/server/toolkit/ToolkitTabDialog;
    .registers 2

    iput-object p1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mTabWindow:Lcom/android/server/toolkit/ToolkitTabDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/toolkit/ToolkitManagerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/toolkit/ToolkitManagerService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/toolkit/ToolkitManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mShowingTab:Z

    return v0
.end method

.method private increaseVer()V
    .registers 3

    iget v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mVer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mVer:I

    iget v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mVer:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_f

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mVer:I

    :cond_f
    return-void
.end method

.method private load()V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentHostPackageName:Ljava/lang/String;

    if-nez v1, :cond_6

    :goto_5
    return-void

    :cond_6
    invoke-direct {p0}, Lcom/android/server/toolkit/ToolkitManagerService;->resetVer()V

    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-object v3, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    :cond_14
    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mContext:Landroid/content/Context;

    const-string v2, "ToolkitManagerService"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mPrefs:Landroid/content/SharedPreferences;

    goto :goto_5

    :cond_24
    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentHostPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_3a

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3a
    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mPluginDataHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5
.end method

.method private resetVer()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mVer:I

    return-void
.end method

.method private save()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mPluginDataHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    if-nez v1, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-direct {p0}, Lcom/android/server/toolkit/ToolkitManagerService;->increaseVer()V

    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mContext:Landroid/content/Context;

    const-string v2, "ToolkitManagerService"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mPrefs:Landroid/content/SharedPreferences;

    goto :goto_a

    :cond_1e
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentHostPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto :goto_a
.end method


# virtual methods
.method public addPluginPackageName(Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    :cond_c
    iget-object v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    :goto_14
    return v1

    :cond_15
    iget-object v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/toolkit/ToolkitManagerService;->save()V

    goto :goto_14
.end method

.method public getPackageList()[Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v5, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    if-nez v5, :cond_6

    const/4 v0, 0x0

    :cond_5
    return-object v0

    :cond_6
    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v5, v0, v1

    move v1, v2

    goto :goto_15
.end method

.method public getPackageListVer()I
    .registers 2

    iget v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mVer:I

    return v0
.end method

.method public hideToolkitBar()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mShowingTab:Z

    iget-object v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mPluginDataHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    return v0
.end method

.method public isShowing()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mShowingTab:Z

    return v0
.end method

.method public registerCallback(Ljava/lang/String;Landroid/toolkit/IToolkitServiceCallback;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_12

    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v1, "ToolkitManagerService"

    const-string v2, "registerCallback failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return v0
.end method

.method public removeAllPackageList()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/toolkit/ToolkitManagerService;->save()V

    return-void
.end method

.method public removePluginPackageName(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v2

    :cond_4
    iget-object v3, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/toolkit/ToolkitManagerService;->save()V

    const/4 v2, 0x1

    goto :goto_3
.end method

.method public sendBundle(Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-nez p3, :cond_7

    const/4 v4, 0x0

    :goto_6
    return v4

    :cond_7
    if-eqz p1, :cond_53

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.extra.REQUEST_WINDOW_MODE"

    const v6, 0x2002010

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v4, 0x3000

    invoke-virtual {p1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1f
    if-eqz v3, :cond_47

    iget-object v4, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v2, 0x0

    :goto_28
    if-ge v2, v0, :cond_39

    iget-object v4, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    const/4 v1, 0x1

    :cond_39
    iget-object v4, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    if-nez v1, :cond_47

    const-string v4, "ToolkitManagerService"

    const-string v6, "The app is not running."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    new-instance v4, Lcom/android/server/toolkit/ToolkitManagerService$ReceiveData;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/android/server/toolkit/ToolkitManagerService$ReceiveData;-><init>(Lcom/android/server/toolkit/ToolkitManagerService;Landroid/content/Intent;ILandroid/os/Bundle;)V

    const/16 v6, 0x3e8

    invoke-direct {p0, v5, v4, v6}, Lcom/android/server/toolkit/ToolkitManagerService;->SendMessage(ILjava/lang/Object;I)V

    move v4, v5

    goto :goto_6

    :cond_53
    new-instance p1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentHostPackageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentHostPackageName:Ljava/lang/String;

    goto :goto_1f

    :cond_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_28
.end method

.method public sendBundleImmediate(Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p1, :cond_32

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    :goto_7
    if-eqz v3, :cond_59

    iget-object v5, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_54

    :try_start_12
    iget-object v5, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    iget-object v5, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/toolkit/IToolkitServiceCallback;

    invoke-interface {v5, p2, p3}, Landroid/toolkit/IToolkitServiceCallback;->onReceiveBundleImmediate(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_31} :catch_35

    :goto_31
    return-object v4

    :cond_32
    iget-object v3, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentHostPackageName:Ljava/lang/String;

    goto :goto_7

    :catch_35
    move-exception v1

    const-string v5, "ToolkitManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_54
    iget-object v5, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_59
    const-string v5, "ToolkitManagerService"

    const-string v6, "The app is not running."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_31
.end method

.method public setHostPackageName(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentHostPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mShowingTab:Z

    invoke-direct {p0}, Lcom/android/server/toolkit/ToolkitManagerService;->load()V

    return-void
.end method

.method public showToolkitBar()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mShowingTab:Z

    iget-object v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mPluginDataHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v2
.end method

.method public unregisterCallback(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_33

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_22

    iget-object v3, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/toolkit/IToolkitServiceCallback;

    :cond_22
    iget-object v3, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    if-eqz v1, :cond_2e

    iget-object v3, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_2e
    const/4 v3, 0x1

    :goto_2f
    return v3

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_33
    const/4 v3, 0x0

    goto :goto_2f
.end method
