.class public Lcom/android/server/pm/PreferredIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "PreferredIntentResolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver",
        "<",
        "Lcom/android/server/pm/PreferredActivity;",
        "Lcom/android/server/pm/PreferredActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .registers 4

    check-cast p3, Lcom/android/server/pm/PreferredActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PreferredIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PreferredActivity;)V

    return-void
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PreferredActivity;)V
    .registers 5

    iget-object v0, p3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/PreferredComponent;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PreferredIntentResolver;->newArray(I)[Lcom/android/server/pm/PreferredActivity;

    move-result-object v0

    return-object v0
.end method

.method protected newArray(I)[Lcom/android/server/pm/PreferredActivity;
    .registers 3

    new-array v0, p1, [Lcom/android/server/pm/PreferredActivity;

    return-object v0
.end method

.method protected bridge synthetic packageForFilter(Landroid/content/IntentFilter;)Ljava/lang/String;
    .registers 3

    check-cast p1, Lcom/android/server/pm/PreferredActivity;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PreferredIntentResolver;->packageForFilter(Lcom/android/server/pm/PreferredActivity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected packageForFilter(Lcom/android/server/pm/PreferredActivity;)Ljava/lang/String;
    .registers 3

    iget-object v0, p1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    iget-object v0, v0, Lcom/android/server/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
