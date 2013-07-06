.class public Lcom/android/server/toolkit/ToolkitTabDialog;
.super Landroid/app/Dialog;
.source "ToolkitTabDialog.java"


# static fields
.field private static final INTENT_CATEGORY_MULTIWINDOW_TOOLKIT:Ljava/lang/String; = "android.intent.category.MULTIWINDOW_TOOLKIT"


# instance fields
.field private isInnerDismiss:Z

.field private mContext:Landroid/content/Context;

.field private mTabGravity:I

.field private mTabWidget:Lcom/android/server/toolkit/TabWidget;

.field private mToolkitManagerService:Landroid/toolkit/IToolkitService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const v0, 0x1030337

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/toolkit/ToolkitTabDialog;->mTabGravity:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/toolkit/ToolkitTabDialog;->isInnerDismiss:Z

    iput-object p1, p0, Lcom/android/server/toolkit/ToolkitTabDialog;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/toolkit/ToolkitTabDialog;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    const v0, 0x1030337

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/toolkit/ToolkitTabDialog;->mTabGravity:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/toolkit/ToolkitTabDialog;->isInnerDismiss:Z

    iput-object p1, p0, Lcom/android/server/toolkit/ToolkitTabDialog;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/toolkit/ToolkitTabDialog;->init()V

    return-void
.end method

.method private init()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/toolkit/ToolkitTabDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    new-instance v1, Lcom/android/server/toolkit/TabWidget;

    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitTabDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/toolkit/TabWidget;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/toolkit/ToolkitTabDialog;->mTabWidget:Lcom/android/server/toolkit/TabWidget;

    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitTabDialog;->mTabWidget:Lcom/android/server/toolkit/TabWidget;

    invoke-virtual {p0, v1}, Lcom/android/server/toolkit/ToolkitTabDialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/server/toolkit/ToolkitTabDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x7d8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    return-void
.end method


# virtual methods
.method public addTab(Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/toolkit/ToolkitTabDialog;->mTabWidget:Lcom/android/server/toolkit/TabWidget;

    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitTabDialog;->mTabWidget:Lcom/android/server/toolkit/TabWidget;

    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitTabDialog;->mTabWidget:Lcom/android/server/toolkit/TabWidget;

    invoke-virtual {v2}, Lcom/android/server/toolkit/TabWidget;->getTabCount()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/toolkit/TabWidget;->newTabSpec(ILandroid/graphics/drawable/Drawable;Landroid/content/Intent;)Lcom/android/server/toolkit/TabWidget$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/toolkit/TabWidget;->addTab(Lcom/android/server/toolkit/TabWidget$TabSpec;)V

    const/4 v0, 0x1

    return v0
.end method

.method public destroy()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/toolkit/ToolkitTabDialog;->dismiss()V

    return-void
.end method

.method public setConfig(IZ)V
    .registers 4

    packed-switch p1, :pswitch_data_16

    :goto_3
    return-void

    :pswitch_4
    if-eqz p2, :cond_b

    const/16 v0, 0x30

    :goto_8
    iput v0, p0, Lcom/android/server/toolkit/ToolkitTabDialog;->mTabGravity:I

    goto :goto_3

    :cond_b
    const/16 v0, 0x50

    goto :goto_8

    :pswitch_e
    if-eqz p2, :cond_14

    const/4 v0, 0x5

    :goto_11
    iput v0, p0, Lcom/android/server/toolkit/ToolkitTabDialog;->mTabGravity:I

    goto :goto_3

    :cond_14
    const/4 v0, 0x3

    goto :goto_11

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_4
        :pswitch_e
    .end packed-switch
.end method

.method public setPackageList(Ljava/util/ArrayList;)V
    .registers 13

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/android/server/toolkit/ToolkitTabDialog;->mTabWidget:Lcom/android/server/toolkit/TabWidget;

    invoke-virtual {v7}, Lcom/android/server/toolkit/TabWidget;->clearAllTabs()V

    if-nez p1, :cond_9

    :cond_8
    return-void

    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v7, p0, Lcom/android/server/toolkit/ToolkitTabDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v0, :cond_8

    const/4 v1, 0x0

    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "android.intent.category.MULTIWINDOW_TOOLKIT"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v3, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5f

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_5f

    new-instance v9, Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v7, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p0, v7, v3}, Lcom/android/server/toolkit/ToolkitTabDialog;->addTab(Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)Z

    const/4 v1, 0x1

    :cond_5f
    if-nez v1, :cond_9c

    const-string v7, "android.intent.category.MULTIWINDOW_TOOLKIT"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v3, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_9c

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_9c

    new-instance v9, Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v7, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p0, v7, v3}, Lcom/android/server/toolkit/ToolkitTabDialog;->addTab(Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)Z

    :cond_9c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_15
.end method
