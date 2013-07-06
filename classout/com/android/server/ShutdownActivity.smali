.class public Lcom/android/server/ShutdownActivity;
.super Landroid/app/Activity;
.source "ShutdownActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShutdownActivity"


# instance fields
.field private mConfirm:Z

.field private mFake:Z

.field private mReboot:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ShutdownActivity;->mFake:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ShutdownActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/ShutdownActivity;->mReboot:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/ShutdownActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/ShutdownActivity;->mConfirm:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/server/ShutdownActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "android.intent.action.REBOOT"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/ShutdownActivity;->mReboot:Z

    const-string v3, "android.intent.extra.KEY_CONFIRM"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/ShutdownActivity;->mConfirm:Z

    const-string v3, "fake"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2f

    const-string v3, "ShutdownActivity"

    const-string v4, "Fake Shutdown"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/android/server/ShutdownActivity;->mFake:Z

    :goto_2e
    return-void

    :cond_2f
    iput-boolean v5, p0, Lcom/android/server/ShutdownActivity;->mFake:Z

    const-string v3, "android.intent.extra.SYSTEM_REQUEST"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/android/server/ShutdownActivity;->setRequestedOrientation(I)V

    invoke-virtual {p0, v6}, Lcom/android/server/ShutdownActivity;->setRequestedOrientation(I)V

    new-instance v2, Lcom/android/server/ShutdownActivity$1;

    const-string v3, "ShutdownActivity"

    invoke-direct {v2, p0, v3, v1}, Lcom/android/server/ShutdownActivity$1;-><init>(Lcom/android/server/ShutdownActivity;Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    invoke-virtual {p0}, Lcom/android/server/ShutdownActivity;->finish()V

    :try_start_4b
    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_2e

    :catch_4f
    move-exception v3

    goto :goto_2e
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    const-string v0, "ShutdownActivity"

    const-string v1, "back button pressed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-boolean v0, p0, Lcom/android/server/ShutdownActivity;->mFake:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    invoke-static {}, Lcom/android/server/power/FakeShutdown;->fakeState()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_15

    invoke-static {}, Lcom/android/server/power/FakeShutdown;->fakeState()I

    move-result v0

    if-nez v0, :cond_20

    :cond_15
    const-string v0, "ShutdownActivity"

    const-string v1, "finish pause immediately right after pausing"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/ShutdownActivity;->finish()V

    :goto_1f
    return-void

    :cond_20
    const-string v0, "ShutdownActivity"

    const-string v1, "Tracking ShutdownActivity pause"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method
