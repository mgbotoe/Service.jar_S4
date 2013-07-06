.class public final Lcom/android/server/ssrm/AirViewOnOff;
.super Ljava/lang/Object;
.source "AirViewOnOff.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/AirViewOnOff$AirViewObserver;,
        Lcom/android/server/ssrm/AirViewOnOff$MagnifierObserver;
    }
.end annotation


# static fields
.field private static final AIR_VIEW_PROVIDER_NAME:Ljava/lang/String; = ""

.field private static final AIR_VIEW_TAG_NAME:Ljava/lang/String; = "com.sec.android.airview.HOVER"

.field private static final BASE_MODEL:Ljava/lang/String; = "jf"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static FPS_SYSFS_TABLE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_VISIBLE_WINDOW:Ljava/lang/String; = "AxT9IME.isVisibleWindow"

.field private static final PROCESS_STATE_BACKGROUND:Ljava/lang/String; = "BACKGROUND"

.field private static final PROCESS_STATE_FOREGROUND:Ljava/lang/String; = "FOREGROUND"

.field private static final RESPONSE_AXT9INFO:Ljava/lang/String; = "ResponseAxT9Info"

.field private static final SSRM_STATUS_NAME:Ljava/lang/String; = "SSRM_STATUS_NAME"

.field private static final SSRM_STATUS_NOTIFY:Ljava/lang/String; = "com.sec.android.intent.action.SSRM_REQUEST"

.field private static final SSRM_STATUS_VALUE:Ljava/lang/String; = "SSRM_STATUS_VALUE"

.field private static TAG:Ljava/lang/String; = null

.field private static final TSP_PATH:Ljava/lang/String; = "/sys/class/sec/tsp/cmd"

.field private static final TSP_RESULT_PATH:Ljava/lang/String; = "/sys/class/sec/tsp/cmd_result"

.field private static mAirViewObserver:Lcom/android/server/ssrm/AirViewOnOff$AirViewObserver;

.field private static mAirViewOnPackagesMap:Ljava/util/HashMap;
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

.field private static mBrowserMainPageVisible:Z

.field private static mClearCoverOn:Z

.field private static mContext:Landroid/content/Context;

.field private static mForceUpdateSysfs:Z

.field private static mForegroundPackageName:Ljava/lang/String;

.field private static mFpsSysfsTableInit:Z

.field private static mInstance:Lcom/android/server/ssrm/AirViewOnOff;

.field private static mIsAirViewAppOnFg:Z

.field private static mLastAirViewStatus:Z

.field private static mLastFps:I

.field private static mLastHoverSysfsValue:Z

.field private static mLockScreenVisible:Z

.field private static mMagnifierObserver:Lcom/android/server/ssrm/AirViewOnOff$MagnifierObserver;

.field private static mMultiWindowOn:Z

.field private static mResolver:Landroid/content/ContentResolver;

.field private static mSIPVisible:Z

.field private static mSettingFingerOverViewOn:Z

.field private static mSettingMagnifierOn:Z

.field private static mStatusBarOn:Z

.field private static mTspPathExist:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-string v2, "AirViewOnOff"

    sput-object v2, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/ssrm/AirViewOnOff;->DEBUG:Z

    sput-object v4, Lcom/android/server/ssrm/AirViewOnOff;->mInstance:Lcom/android/server/ssrm/AirViewOnOff;

    sput-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mFpsSysfsTableInit:Z

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/server/ssrm/AirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    sput-object v4, Lcom/android/server/ssrm/AirViewOnOff;->mResolver:Landroid/content/ContentResolver;

    sput-object v4, Lcom/android/server/ssrm/AirViewOnOff;->mContext:Landroid/content/Context;

    sput-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mLockScreenVisible:Z

    sput-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mSIPVisible:Z

    sput-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mBrowserMainPageVisible:Z

    sput-object v4, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewObserver:Lcom/android/server/ssrm/AirViewOnOff$AirViewObserver;

    sput-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mSettingFingerOverViewOn:Z

    sput-object v4, Lcom/android/server/ssrm/AirViewOnOff;->mMagnifierObserver:Lcom/android/server/ssrm/AirViewOnOff$MagnifierObserver;

    sput-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mSettingMagnifierOn:Z

    sput-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mClearCoverOn:Z

    sput-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mMultiWindowOn:Z

    sput-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mStatusBarOn:Z

    sput-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mLastAirViewStatus:Z

    sput-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mForceUpdateSysfs:Z

    sput v1, Lcom/android/server/ssrm/AirViewOnOff;->mLastFps:I

    sput-object v4, Lcom/android/server/ssrm/AirViewOnOff;->mForegroundPackageName:Ljava/lang/String;

    sput-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mLastHoverSysfsValue:Z

    sput-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mIsAirViewAppOnFg:Z

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    sput-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mTspPathExist:Z

    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/sec/tsp/cmd"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_5c

    const/4 v1, 0x1

    :cond_5c
    sput-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mTspPathExist:Z

    sget-object v1, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "static:: mTspPathExist = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/ssrm/AirViewOnOff;->mTspPathExist:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Contacts"

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Email"

    const-string v2, "com.android.email"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Gallery"

    const-string v2, "com.sec.android.gallery3d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Messaging"

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Music"

    const-string v2, "com.samsung.music"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Music Player"

    const-string v2, "com.sec.android.app.music"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "My files"

    const-string v2, "com.sec.android.app.myfiles"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "New Internet"

    const-string v2, "com.sec.android.app.sbrowser"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "S Memo"

    const-string v2, "com.sec.android.widgetapp.diotek.smemo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "S-Planner"

    const-string v2, "com.android.calendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Story ablum"

    const-string v2, "com.samsung.android.app.episodes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Video"

    const-string v2, "com.samsung.everglades.video"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Video (hidden)"

    const-string v2, "com.sec.android.app.videoplayer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Allshare play"

    const-string v2, "com.sec.pcw"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "ChatON"

    const-string v2, "com.sec.chaton"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "ChatON V"

    const-string v2, "com.coolots.chaton"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Clock Package"

    const-string v2, "com.sec.android.app.clockpackage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Group play"

    const-string v2, "com.samsung.groupcast"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Kids mode"

    const-string v2, "com.samsung.kidsmode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Kies cast"

    const-string v2, "com.sec.android.app.podcast"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Prism store"

    const-string v2, "com.sec.everglades"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "S health"

    const-string v2, "com.sec.android.app.shealth"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Video editor"

    const-string v2, "com.sec.android.app.ve"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Voice"

    const-string v2, "com.vlingo.midas"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Voice recorder"

    const-string v2, "com.sec.android.app.voicerecorder"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "color blind"

    const-string v2, "com.samsung.android.app.colorblind"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Remote view finder"

    const-string v2, "com.sec.android.app.remoteviewfinder"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "SamsungApps"

    const-string v2, "com.sec.android.app.samsungapps"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "sbrowsertry"

    const-string v2, "com.sec.android.app.sbrowsertry"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Music Live Share"

    const-string v2, "com.sec.android.app.mediasync"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Books"

    const-string v2, "com.sec.readershub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Learning"

    const-string v2, "com.sec.msc.learninghub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Music 3.1"

    const-string v2, "com.samsung.musichub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Games"

    const-string v2, "com.sec.android.app.gamehub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_135
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    const-string v1, "updating lookup hash"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ja"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_188

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    const-string v1, "60hz, div=3"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    const-string v1, "40hz, div=5"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    const-string v1, "48hz, div=8"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/ssrm/AirViewOnOff;->mFpsSysfsTableInit:Z
    :try_end_16d
    .catchall {:try_start_135 .. :try_end_16d} :catchall_1ba

    :goto_16d
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AirViewOnOff:: mFpsSysfsTableInit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/AirViewOnOff;->mFpsSysfsTableInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_188
    :try_start_188
    const-string v0, "jf"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d6

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    const-string v1, "60"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    const-string v1, "42"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    const-string v1, "51"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/ssrm/AirViewOnOff;->mFpsSysfsTableInit:Z
    :try_end_1b9
    .catchall {:try_start_188 .. :try_end_1b9} :catchall_1ba

    goto :goto_16d

    :catchall_1ba
    move-exception v0

    sget-object v1, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AirViewOnOff:: mFpsSysfsTableInit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/ssrm/AirViewOnOff;->mFpsSysfsTableInit:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1d6
    const/4 v0, 0x0

    :try_start_1d7
    sput-boolean v0, Lcom/android/server/ssrm/AirViewOnOff;->mFpsSysfsTableInit:Z
    :try_end_1d9
    .catchall {:try_start_1d7 .. :try_end_1d9} :catchall_1ba

    goto :goto_16d
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(I)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/ssrm/AirViewOnOff;->updateAirViewStatus(I)V

    return-void
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/ssrm/AirViewOnOff;->mIsAirViewAppOnFg:Z

    return p0
.end method

.method static synthetic access$400()Landroid/content/ContentResolver;
    .registers 1

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$402(Landroid/content/ContentResolver;)Landroid/content/ContentResolver;
    .registers 1

    sput-object p0, Lcom/android/server/ssrm/AirViewOnOff;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$500()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/ssrm/AirViewOnOff;->mSettingMagnifierOn:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/ssrm/AirViewOnOff;->mSettingMagnifierOn:Z

    return p0
.end method

.method static synthetic access$600()V
    .registers 0

    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->updateAirViewStatus()V

    return-void
.end method

.method static synthetic access$700()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/ssrm/AirViewOnOff;->mSettingFingerOverViewOn:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/ssrm/AirViewOnOff;->mSettingFingerOverViewOn:Z

    return p0
.end method

.method static synthetic access$800()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/ssrm/AirViewOnOff;->mFpsSysfsTableInit:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/ssrm/AirViewOnOff;->mForceUpdateSysfs:Z

    return p0
.end method

.method private static calculateAirViewStatus()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateAirViewStatus:: mSettingFingerOverViewOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/ssrm/AirViewOnOff;->mSettingFingerOverViewOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLockScreenVisible = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/ssrm/AirViewOnOff;->mLockScreenVisible:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mMultiWindowOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/ssrm/AirViewOnOff;->mMultiWindowOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsAirViewAppOnFg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/ssrm/AirViewOnOff;->mIsAirViewAppOnFg:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSIPVisible = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/ssrm/AirViewOnOff;->mSIPVisible:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/ssrm/AirViewOnOff;->mClearCoverOn:Z

    if-eqz v2, :cond_51

    :cond_50
    :goto_50
    return v0

    :cond_51
    sget-boolean v2, Lcom/android/server/ssrm/AirViewOnOff;->mSettingFingerOverViewOn:Z

    if-eqz v2, :cond_50

    sget-boolean v2, Lcom/android/server/ssrm/AirViewOnOff;->mLockScreenVisible:Z

    if-eqz v2, :cond_5b

    move v0, v1

    goto :goto_50

    :cond_5b
    sget-boolean v2, Lcom/android/server/ssrm/AirViewOnOff;->mMultiWindowOn:Z

    if-nez v2, :cond_50

    sget-boolean v2, Lcom/android/server/ssrm/AirViewOnOff;->mStatusBarOn:Z

    if-nez v2, :cond_50

    sget-boolean v2, Lcom/android/server/ssrm/AirViewOnOff;->mBrowserMainPageVisible:Z

    if-eqz v2, :cond_6b

    sget-boolean v2, Lcom/android/server/ssrm/AirViewOnOff;->mSettingMagnifierOn:Z

    if-eqz v2, :cond_50

    :cond_6b
    sget-boolean v2, Lcom/android/server/ssrm/AirViewOnOff;->mIsAirViewAppOnFg:Z

    if-eqz v2, :cond_50

    sget-boolean v2, Lcom/android/server/ssrm/AirViewOnOff;->mSIPVisible:Z

    if-nez v2, :cond_50

    move v0, v1

    goto :goto_50
.end method

.method public static checkFPS(Ljava/lang/String;I)Z
    .registers 7

    const/4 v2, 0x0

    sget-object v1, Lcom/android/server/ssrm/AirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    sget-object v1, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    const-string v3, "FPS found in look up"

    invoke-static {v1, v3}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/ssrm/AirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FPS found in look up sysfps="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p1, v0, :cond_38

    const/4 v1, 0x1

    :goto_37
    return v1

    :cond_38
    move v1, v2

    goto :goto_37

    :cond_3a
    move v1, v2

    goto :goto_37
.end method

.method private static declared-synchronized enableHoverView(Z)V
    .registers 5

    const-class v1, Lcom/android/server/ssrm/AirViewOnOff;

    monitor-enter v1

    :try_start_3
    sput-boolean p0, Lcom/android/server/ssrm/AirViewOnOff;->mLastHoverSysfsValue:Z

    if-eqz p0, :cond_2f

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newAirViewOn:: now air view is enabled. fps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/ssrm/AirViewOnOff;->mLastFps:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hover_enable,1"

    const-string v2, "/sys/class/sec/tsp/cmd"

    invoke-static {v0, v2}, Lcom/android/server/ssrm/AirViewOnOff;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/class/sec/tsp/cmd_result"

    invoke-static {v0}, Lcom/android/server/ssrm/AirViewOnOff;->readLineFromSysfs(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_56

    :goto_2d
    monitor-exit v1

    return-void

    :cond_2f
    :try_start_2f
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newAirViewOn:: now air view is disabled. fps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/ssrm/AirViewOnOff;->mLastFps:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hover_enable,0"

    const-string v2, "/sys/class/sec/tsp/cmd"

    invoke-static {v0, v2}, Lcom/android/server/ssrm/AirViewOnOff;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/class/sec/tsp/cmd_result"

    invoke-static {v0}, Lcom/android/server/ssrm/AirViewOnOff;->readLineFromSysfs(Ljava/lang/String;)Ljava/lang/String;
    :try_end_55
    .catchall {:try_start_2f .. :try_end_55} :catchall_56

    goto :goto_2d

    :catchall_56
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance()Lcom/android/server/ssrm/AirViewOnOff;
    .registers 1

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mInstance:Lcom/android/server/ssrm/AirViewOnOff;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/server/ssrm/AirViewOnOff;

    invoke-direct {v0}, Lcom/android/server/ssrm/AirViewOnOff;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mInstance:Lcom/android/server/ssrm/AirViewOnOff;

    :cond_b
    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->mInstance:Lcom/android/server/ssrm/AirViewOnOff;

    return-object v0
.end method

.method public static logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/android/server/ssrm/AirViewOnOff;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public static onFrameRateUpdate(ILjava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/ssrm/AirViewOnOff$2;

    invoke-direct {v1, p1, p0}, Lcom/android/server/ssrm/AirViewOnOff$2;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static readFPSFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v6, 0x0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v4, v7

    new-array v1, v4, [B

    :try_start_d
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v5, 0x0

    array-length v7, v1

    invoke-virtual {v0, v1, v5, v7}, Ljava/io/BufferedInputStream;->read([BII)I

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_24} :catch_25
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_24} :catch_44

    :goto_24
    return-object v5

    :catch_25
    move-exception v2

    sget-object v5, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readFPSFile:: exception msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    goto :goto_24

    :catch_44
    move-exception v2

    sget-object v5, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readFPSFile:: exception msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    goto :goto_24
.end method

.method public static readLineFromSysfs(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_7a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_39

    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readLineFromSysfs:: path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_be
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_32} :catch_c1

    if-eqz v1, :cond_37

    :try_start_34
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_9f

    :cond_37
    :goto_37
    move-object v0, v1

    :cond_38
    :goto_38
    return-object v3

    :catch_39
    move-exception v2

    :goto_3a
    :try_start_3a
    sget-object v4, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readLineFromSysfs:: e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_3a .. :try_end_56} :catchall_7a

    if-eqz v0, :cond_38

    :try_start_58
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_38

    :catch_5c
    move-exception v2

    sget-object v4, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readLineFromSysfs:: e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    :catchall_7a
    move-exception v4

    :goto_7b
    if-eqz v0, :cond_80

    :try_start_7d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    :cond_80
    :goto_80
    throw v4

    :catch_81
    move-exception v2

    sget-object v5, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readLineFromSysfs:: e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_80

    :catch_9f
    move-exception v2

    sget-object v4, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readLineFromSysfs:: e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_37

    :catchall_be
    move-exception v4

    move-object v0, v1

    goto :goto_7b

    :catch_c1
    move-exception v2

    move-object v0, v1

    goto/16 :goto_3a
.end method

.method private static setBrowserMainPageVisible(Z)V
    .registers 4

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBrowserMainPageVisible:: visible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/ssrm/AirViewOnOff;->mBrowserMainPageVisible:Z

    if-eq v0, p0, :cond_21

    sput-boolean p0, Lcom/android/server/ssrm/AirViewOnOff;->mBrowserMainPageVisible:Z

    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->updateAirViewStatus()V

    :cond_21
    return-void
.end method

.method private static setLockScreenVisible(Z)V
    .registers 4

    sget-object v0, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLockScreenVisible:: visible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/ssrm/AirViewOnOff;->mLockScreenVisible:Z

    if-ne v0, p0, :cond_1d

    :goto_1c
    return-void

    :cond_1d
    sput-boolean p0, Lcom/android/server/ssrm/AirViewOnOff;->mLockScreenVisible:Z

    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->updateAirViewStatus()V

    goto :goto_1c
.end method

.method private static updateAirViewStatus()V
    .registers 2

    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->calculateAirViewStatus()Z

    move-result v0

    sget-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mLastAirViewStatus:Z

    if-ne v1, v0, :cond_c

    sget-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mForceUpdateSysfs:Z

    if-eqz v1, :cond_14

    :cond_c
    invoke-static {v0}, Lcom/android/server/ssrm/AirViewOnOff;->enableHoverView(Z)V

    sput-boolean v0, Lcom/android/server/ssrm/AirViewOnOff;->mLastAirViewStatus:Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/ssrm/AirViewOnOff;->mForceUpdateSysfs:Z

    :cond_14
    return-void
.end method

.method private static updateAirViewStatus(I)V
    .registers 1

    sput p0, Lcom/android/server/ssrm/AirViewOnOff;->mLastFps:I

    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->updateAirViewStatus()V

    return-void
.end method

.method protected static writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_28
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_19

    :try_start_6
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_39
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_12} :catch_3c

    if-eqz v2, :cond_17

    :try_start_14
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_34

    :cond_17
    :goto_17
    move-object v1, v2

    :cond_18
    :goto_18
    return-void

    :catch_19
    move-exception v0

    :goto_1a
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_28

    if-eqz v1, :cond_18

    :try_start_1f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_18

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18

    :catchall_28
    move-exception v3

    :goto_29
    if-eqz v1, :cond_2e

    :try_start_2b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    :cond_2e
    :goto_2e
    throw v3

    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2e

    :catch_34
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17

    :catchall_39
    move-exception v3

    move-object v1, v2

    goto :goto_29

    :catch_3c
    move-exception v0

    move-object v1, v2

    goto :goto_1a
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 28

    sput-object p1, Lcom/android/server/ssrm/AirViewOnOff;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    sget-boolean v21, Lcom/android/server/ssrm/AirViewOnOff;->mTspPathExist:Z

    if-nez v21, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    const-string v21, "com.android.systemui.statusbar.EXPANDED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1d

    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/server/ssrm/AirViewOnOff;->mStatusBarOn:Z

    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->updateAirViewStatus()V

    goto :goto_a

    :cond_1d
    const-string v21, "com.android.systemui.statusbar.COLLAPSED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2f

    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/server/ssrm/AirViewOnOff;->mStatusBarOn:Z

    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->updateAirViewStatus()V

    goto :goto_a

    :cond_2f
    const-string v21, "com.samsung.cover.OPEN"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_56

    const-string v21, "coverOpen"

    const/16 v22, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_51

    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/server/ssrm/AirViewOnOff;->mClearCoverOn:Z

    :goto_4d
    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->updateAirViewStatus()V

    goto :goto_a

    :cond_51
    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/server/ssrm/AirViewOnOff;->mClearCoverOn:Z

    goto :goto_4d

    :cond_56
    const-string v21, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_74

    const-string v21, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    sput-boolean v21, Lcom/android/server/ssrm/AirViewOnOff;->mMultiWindowOn:Z

    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->updateAirViewStatus()V

    goto :goto_a

    :cond_74
    const-string v21, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_169

    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->mContext:Landroid/content/Context;

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    sput-object v21, Lcom/android/server/ssrm/AirViewOnOff;->mResolver:Landroid/content/ContentResolver;

    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->mResolver:Landroid/content/ContentResolver;

    if-eqz v21, :cond_161

    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->mResolver:Landroid/content/ContentResolver;

    const-string v22, "finger_air_view"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_156

    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/server/ssrm/AirViewOnOff;->mSettingFingerOverViewOn:Z

    :goto_a0
    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onReceive:: mSettingFingerOverViewOn = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-boolean v23, Lcom/android/server/ssrm/AirViewOnOff;->mSettingFingerOverViewOn:Z

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v21, Lcom/android/server/ssrm/AirViewOnOff$AirViewObserver;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/AirViewOnOff$AirViewObserver;-><init>(Lcom/android/server/ssrm/AirViewOnOff;)V

    sput-object v21, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewObserver:Lcom/android/server/ssrm/AirViewOnOff$AirViewObserver;

    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->mResolver:Landroid/content/ContentResolver;

    const-string v22, "finger_air_view"

    invoke-static/range {v22 .. v22}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    const/16 v23, 0x0

    sget-object v24, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewObserver:Lcom/android/server/ssrm/AirViewOnOff$AirViewObserver;

    invoke-virtual/range {v21 .. v24}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->mResolver:Landroid/content/ContentResolver;

    const-string v22, "finger_air_view_magnifier"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_15c

    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/server/ssrm/AirViewOnOff;->mSettingMagnifierOn:Z

    :goto_ea
    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onReceive:: mSettingMagnifierOn = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-boolean v23, Lcom/android/server/ssrm/AirViewOnOff;->mSettingMagnifierOn:Z

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v21, Lcom/android/server/ssrm/AirViewOnOff$MagnifierObserver;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/AirViewOnOff$MagnifierObserver;-><init>(Lcom/android/server/ssrm/AirViewOnOff;)V

    sput-object v21, Lcom/android/server/ssrm/AirViewOnOff;->mMagnifierObserver:Lcom/android/server/ssrm/AirViewOnOff$MagnifierObserver;

    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->mResolver:Landroid/content/ContentResolver;

    const-string v22, "finger_air_view_magnifier"

    invoke-static/range {v22 .. v22}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    const/16 v23, 0x0

    sget-object v24, Lcom/android/server/ssrm/AirViewOnOff;->mMagnifierObserver:Lcom/android/server/ssrm/AirViewOnOff$MagnifierObserver;

    invoke-virtual/range {v21 .. v24}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v21, "keyguard"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/KeyguardManager;

    if-eqz v11, :cond_137

    invoke-virtual {v11}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v21

    if-eqz v21, :cond_137

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Lcom/android/server/ssrm/AirViewOnOff;->setLockScreenVisible(Z)V

    :cond_137
    :goto_137
    const-string v21, "activity"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    new-instance v21, Ljava/lang/Thread;

    new-instance v22, Lcom/android/server/ssrm/AirViewOnOff$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/server/ssrm/AirViewOnOff$1;-><init>(Lcom/android/server/ssrm/AirViewOnOff;Landroid/app/ActivityManager;)V

    invoke-direct/range {v21 .. v22}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->start()V

    goto/16 :goto_a

    :cond_156
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/server/ssrm/AirViewOnOff;->mSettingFingerOverViewOn:Z

    goto/16 :goto_a0

    :cond_15c
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/server/ssrm/AirViewOnOff;->mSettingMagnifierOn:Z

    goto :goto_ea

    :cond_161
    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    const-string v22, "onReceive:: failed to register content observer."

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_137

    :cond_169
    const-string v21, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_381

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    const/16 v21, 0x1

    aget-object v5, v16, v21

    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ACTION_PACKAGE_ADDED :: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_a

    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    const-string v22, "AirView Tag Scan Start (Install)"

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->mContext:Landroid/content/Context;

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    new-instance v12, Landroid/content/Intent;

    const-string v21, "com.sec.android.airview.HOVER"

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x200

    move/from16 v0, v21

    invoke-virtual {v14, v12, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v18

    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "AirView added ris count : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1e1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_297

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "AirView added package intent for :: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "AirView added HashMap size Before Adding : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_277

    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->hashCode()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_277
    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "AirView added HashMap size after Adding : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e1

    :cond_297
    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    const-string v22, "AirView Tag Scan End (Install)"

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    const-string v22, "AirView Provider Scan Start (Install)"

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v21, ""

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_378

    new-instance v12, Landroid/content/Intent;

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x200

    move/from16 v0, v21

    invoke-virtual {v14, v12, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2c2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_378

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "AirView added provider package intent for :: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "AirView added provider HashMap size Before Adding : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_358

    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->hashCode()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_358
    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "AirView added provider HashMap size after Adding : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2c2

    :cond_378
    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    const-string v22, "AirView Provider Scan End (Install)"

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_381
    const-string v21, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3bf

    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    const-string v22, "onReceive:: Intent.ACTION_SCREEN_ON"

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v21, "keyguard"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/KeyguardManager;

    if-eqz v11, :cond_a

    invoke-virtual {v11}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v21

    if-eqz v21, :cond_a

    sget-boolean v21, Lcom/android/server/ssrm/AirViewOnOff;->mLastAirViewStatus:Z

    if-eqz v21, :cond_3b8

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Lcom/android/server/ssrm/AirViewOnOff;->setLockScreenVisible(Z)V

    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/server/ssrm/AirViewOnOff;->mForceUpdateSysfs:Z

    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->updateAirViewStatus()V

    goto/16 :goto_a

    :cond_3b8
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Lcom/android/server/ssrm/AirViewOnOff;->setLockScreenVisible(Z)V

    goto/16 :goto_a

    :cond_3bf
    const-string v21, "android.intent.action.USER_PRESENT"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3d7

    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->TAG:Ljava/lang/String;

    const-string v22, "onReceive:: Intent.ACTION_USER_PRESENT"

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/android/server/ssrm/AirViewOnOff;->setLockScreenVisible(Z)V

    goto/16 :goto_a

    :cond_3d7
    const-string v21, "ResponseAxT9Info"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3f3

    const-string v21, "AxT9IME.isVisibleWindow"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    sput-boolean v21, Lcom/android/server/ssrm/AirViewOnOff;->mSIPVisible:Z

    goto/16 :goto_a

    :cond_3f3
    const-string v21, "com.sec.android.intent.action.DVFS_FG_PROCESS_CHANGED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_436

    const-string v21, "PACKAGE"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v21, "PROCESS_STATE"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v21, "FOREGROUND"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    sput-object v13, Lcom/android/server/ssrm/AirViewOnOff;->mForegroundPackageName:Ljava/lang/String;

    const/4 v8, 0x0

    sget-object v21, Lcom/android/server/ssrm/AirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_429

    const/4 v8, 0x1

    :cond_429
    sget-boolean v21, Lcom/android/server/ssrm/AirViewOnOff;->mIsAirViewAppOnFg:Z

    move/from16 v0, v21

    if-eq v8, v0, :cond_a

    sput-boolean v8, Lcom/android/server/ssrm/AirViewOnOff;->mIsAirViewAppOnFg:Z

    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->updateAirViewStatus()V

    goto/16 :goto_a

    :cond_436
    const-string v21, "com.sec.android.intent.action.SSRM_REQUEST"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    const-string v21, "SSRM_STATUS_NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v21, "SSRM_STATUS_VALUE"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    const-string v21, "Browser_showMain"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    invoke-static/range {v20 .. v20}, Lcom/android/server/ssrm/AirViewOnOff;->setBrowserMainPageVisible(Z)V

    goto/16 :goto_a
.end method
