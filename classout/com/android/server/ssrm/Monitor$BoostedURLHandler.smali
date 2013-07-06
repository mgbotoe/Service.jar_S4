.class Lcom/android/server/ssrm/Monitor$BoostedURLHandler;
.super Ljava/lang/Object;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BoostedURLHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;
    }
.end annotation


# static fields
.field static final LEAVING_URL_INTENT_EXTRA:Ljava/lang/String; = "Browser_leaving_URL"

.field static final PACKAGE_NAME_INTENT_EXTRA:Ljava/lang/String; = "PackageName"

.field static final PROCESS_ID_INTENT_EXTRA:Ljava/lang/String; = "PID"

.field static final SSRM_STATUS_NAME_BROWSER_LOADING_URL:Ljava/lang/String; = "Browser_loading_URL"

.field static final URL_INTENT_EXTRA:Ljava/lang/String; = "URL"

.field private static final sBoostedSites:[Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const-wide/16 v5, 0x64

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;

    const-string v3, "^(http://)?www\\.webkit\\.org/perf/sunspider-.*/sunspider-.*/driver\\.html"

    const-string v4, "^(http://)?www\\.webkit\\.org/perf/sunspider-.*/sunspider-.*/results\\.html.*"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;

    const-string v3, "^(http://)?www\\.webkit\\.org/perf/sunspider-.*/sunspider-driver.html"

    const-string v4, "^(http://)?www\\.webkit\\.org/perf/sunspider-.*/sunspider-results.html.*"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;

    const-string v3, "http://browsermark.rightware.com/tests"

    const-string v4, "http://browsermark.rightware.com/results"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;->sBoostedSites:[Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/ssrm/Monitor$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/ssrm/Monitor$BoostedURLHandler;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private disableBoostForSite(Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;)V
    .registers 7

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1300()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableBoostForSite() site: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget v2, p1, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->connectionsNumber:I

    if-nez v2, :cond_25

    :cond_24
    :goto_24
    return-void

    :cond_25
    iget v2, p1, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->connectionsNumber:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->connectionsNumber:I

    iget v2, p1, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->connectionsNumber:I

    if-nez v2, :cond_39

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;->mHandler:Landroid/os/Handler;

    iget-object v3, p1, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->timeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->timeoutTask:Ljava/lang/Runnable;

    :cond_39
    :try_start_39
    const-class v2, Lcom/android/server/ssrm/DvfsUpThreshold;

    invoke-static {v2}, Lcom/android/server/ssrm/FgAppListener;->getInstance(Ljava/lang/Class;)Lcom/android/server/ssrm/FgAppListener;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/DvfsUpThreshold;

    if-eqz v1, :cond_24

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/DvfsUpThreshold;->setBrowserBenchmark(Z)V
    :try_end_47
    .catch Ljava/lang/IllegalAccessException; {:try_start_39 .. :try_end_47} :catch_48
    .catch Ljava/lang/InstantiationException; {:try_start_39 .. :try_end_47} :catch_68

    goto :goto_24

    :catch_48
    move-exception v0

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableBoostForSite:: e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :catch_68
    move-exception v0

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableBoostForSite:: e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24
.end method

.method private enableBoostForSite(Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;Ljava/lang/String;I)V
    .registers 12

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1300()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableBoostForSite() site: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v2, p1, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->timeoutTask:Ljava/lang/Runnable;

    if-nez v2, :cond_2b

    new-instance v2, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$1;-><init>(Lcom/android/server/ssrm/Monitor$BoostedURLHandler;Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;Ljava/lang/String;I)V

    iput-object v2, p1, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->timeoutTask:Ljava/lang/Runnable;

    :cond_2b
    iget-object v2, p0, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;->mHandler:Landroid/os/Handler;

    iget-object v3, p1, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->timeoutTask:Ljava/lang/Runnable;

    iget-wide v4, p1, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->timeout:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v2, p1, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->connectionsNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->connectionsNumber:I

    :try_start_3d
    const-class v2, Lcom/android/server/ssrm/DvfsUpThreshold;

    invoke-static {v2}, Lcom/android/server/ssrm/FgAppListener;->getInstance(Ljava/lang/Class;)Lcom/android/server/ssrm/FgAppListener;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/DvfsUpThreshold;

    if-eqz v1, :cond_4b

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/DvfsUpThreshold;->setBrowserBenchmark(Z)V
    :try_end_4b
    .catch Ljava/lang/IllegalAccessException; {:try_start_3d .. :try_end_4b} :catch_4c
    .catch Ljava/lang/InstantiationException; {:try_start_3d .. :try_end_4b} :catch_6c

    :cond_4b
    :goto_4b
    return-void

    :catch_4c
    move-exception v0

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableBoostForSite:: e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    :catch_6c
    move-exception v0

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableBoostForSite:: e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b
.end method

.method private getTotalConnectionsNumber()I
    .registers 7

    const/4 v1, 0x0

    sget-object v0, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;->sBoostedSites:[Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_f

    aget-object v4, v0, v2

    iget v5, v4, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->connectionsNumber:I

    add-int/2addr v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_f
    return v1
.end method


# virtual methods
.method public handleURL(Ljava/lang/String;ZLjava/lang/String;I)V
    .registers 12

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    sget-object v0, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;->sBoostedSites:[Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v2, :cond_3f

    aget-object v3, v0, v1

    iget-object v4, v3, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->startURL:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    iget-object v4, v3, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->startURL:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    :cond_1b
    if-eqz p2, :cond_21

    invoke-direct {p0, v3}, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;->disableBoostForSite(Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;)V

    goto :goto_2

    :cond_21
    invoke-direct {p0, v3, p3, p4}, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;->enableBoostForSite(Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;Ljava/lang/String;I)V

    goto :goto_2

    :cond_25
    iget v4, v3, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->connectionsNumber:I

    if-lez v4, :cond_3c

    iget-object v4, v3, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->endURL:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    iget-object v5, v3, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->endURL:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    or-int/2addr v4, v5

    if-eqz v4, :cond_3c

    invoke-direct {p0, v3}, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;->disableBoostForSite(Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;)V

    goto :goto_2

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_3f
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1300()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleURL() skipped "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public isURLBoostInProgress()Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;->getTotalConnectionsNumber()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
