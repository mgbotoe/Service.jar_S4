.class public Lcom/android/server/toolkit/TabWidget;
.super Landroid/widget/LinearLayout;
.source "TabWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/toolkit/TabWidget$1;,
        Lcom/android/server/toolkit/TabWidget$TabSpec;
    }
.end annotation


# instance fields
.field private mCurrentTabIndex:I

.field private mOrientation:I

.field private mParentWindow:Landroid/widget/PopupWindow;

.field private mTabSpecs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/toolkit/TabWidget$TabSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/toolkit/TabWidget;->mTabSpecs:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/toolkit/TabWidget;->mCurrentTabIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/toolkit/TabWidget;->mOrientation:I

    invoke-direct {p0}, Lcom/android/server/toolkit/TabWidget;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/toolkit/TabWidget;->mTabSpecs:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/toolkit/TabWidget;->mCurrentTabIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/toolkit/TabWidget;->mOrientation:I

    invoke-direct {p0}, Lcom/android/server/toolkit/TabWidget;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/toolkit/TabWidget;->mTabSpecs:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/toolkit/TabWidget;->mCurrentTabIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/toolkit/TabWidget;->mOrientation:I

    invoke-direct {p0}, Lcom/android/server/toolkit/TabWidget;->init()V

    return-void
.end method

.method private init()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget;->mTabSpecs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/toolkit/TabWidget;->setChildrenDrawingOrderEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/server/toolkit/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/server/toolkit/TabWidget;->mOrientation:I

    invoke-direct {p0}, Lcom/android/server/toolkit/TabWidget;->setOrientation()V

    return-void
.end method

.method private refreshTabMargin()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/toolkit/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v4

    monitor-enter v4

    :try_start_5
    iget-object v3, p0, Lcom/android/server/toolkit/TabWidget;->mTabSpecs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_20

    iget-object v3, p0, Lcom/android/server/toolkit/TabWidget;->mTabSpecs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/toolkit/TabWidget$TabSpec;

    invoke-virtual {v2}, Lcom/android/server/toolkit/TabWidget$TabSpec;->getView()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/toolkit/TabWidget;->setMargin(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_20
    monitor-exit v4

    return-void

    :catchall_22
    move-exception v3

    monitor-exit v4
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_22

    throw v3
.end method

.method private setMargin(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x0

    const/16 v2, -0x14

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_16

    iget v1, p0, Lcom/android/server/toolkit/TabWidget;->mOrientation:I

    packed-switch v1, :pswitch_data_22

    :goto_10
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_16
    return-void

    :pswitch_17
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_10

    :pswitch_1c
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_10

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_17
        :pswitch_1c
    .end packed-switch
.end method

.method private setOrientation()V
    .registers 2

    iget v0, p0, Lcom/android/server/toolkit/TabWidget;->mOrientation:I

    packed-switch v0, :pswitch_data_10

    :goto_5
    return-void

    :pswitch_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/toolkit/TabWidget;->setOrientation(I)V

    goto :goto_5

    :pswitch_b
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/toolkit/TabWidget;->setOrientation(I)V

    goto :goto_5

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_6
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public addTab(Lcom/android/server/toolkit/TabWidget$TabSpec;)V
    .registers 6

    iget-object v2, p0, Lcom/android/server/toolkit/TabWidget;->mTabSpecs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/toolkit/TabWidget;->mTabSpecs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/server/toolkit/TabWidget$TabSpec;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/toolkit/TabWidget;->addView(Landroid/view/View;)V

    if-eqz v0, :cond_17

    invoke-direct {p0, v1}, Lcom/android/server/toolkit/TabWidget;->setMargin(Landroid/view/View;)V

    :cond_17
    iget v2, p0, Lcom/android/server/toolkit/TabWidget;->mCurrentTabIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_20

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/toolkit/TabWidget;->setCurrentTab(I)V

    :cond_20
    return-void
.end method

.method public clearAllTabs()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget;->mTabSpecs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/server/toolkit/TabWidget;->removeAllViews()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/toolkit/TabWidget;->mCurrentTabIndex:I

    return-void
.end method

.method protected getChildDrawingOrder(II)I
    .registers 5

    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    if-ne v1, p2, :cond_8

    iget v1, p0, Lcom/android/server/toolkit/TabWidget;->mCurrentTabIndex:I

    :goto_7
    return v1

    :cond_8
    sub-int v1, p1, p2

    add-int/lit8 v0, v1, -0x1

    iget v1, p0, Lcom/android/server/toolkit/TabWidget;->mCurrentTabIndex:I

    if-gt v0, v1, :cond_12

    add-int/lit8 v0, v0, -0x1

    :cond_12
    move v1, v0

    goto :goto_7
.end method

.method public getTabCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget;->mTabSpecs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public newTabSpec(ILandroid/graphics/drawable/Drawable;Landroid/content/Intent;)Lcom/android/server/toolkit/TabWidget$TabSpec;
    .registers 10

    new-instance v0, Lcom/android/server/toolkit/TabWidget$TabSpec;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/toolkit/TabWidget$TabSpec;-><init>(Lcom/android/server/toolkit/TabWidget;ILandroid/graphics/drawable/Drawable;Landroid/content/Intent;Lcom/android/server/toolkit/TabWidget$1;)V

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/server/toolkit/TabWidget;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_13

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/server/toolkit/TabWidget;->mOrientation:I

    invoke-direct {p0}, Lcom/android/server/toolkit/TabWidget;->refreshTabMargin()V

    invoke-direct {p0}, Lcom/android/server/toolkit/TabWidget;->setOrientation()V

    :cond_13
    return-void
.end method

.method public refresh()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/toolkit/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/server/toolkit/TabWidget;->mOrientation:I

    if-eq v1, v0, :cond_1a

    iput v0, p0, Lcom/android/server/toolkit/TabWidget;->mOrientation:I

    invoke-direct {p0}, Lcom/android/server/toolkit/TabWidget;->refreshTabMargin()V

    invoke-direct {p0}, Lcom/android/server/toolkit/TabWidget;->setOrientation()V

    :cond_1a
    return-void
.end method

.method public setCurrentTab(I)V
    .registers 6

    iget v2, p0, Lcom/android/server/toolkit/TabWidget;->mCurrentTabIndex:I

    if-ltz v2, :cond_10

    iget-object v3, p0, Lcom/android/server/toolkit/TabWidget;->mTabSpecs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/toolkit/TabWidget$TabSpec;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/toolkit/TabWidget$TabSpec;->setFocus(Z)V

    :cond_10
    iget-object v3, p0, Lcom/android/server/toolkit/TabWidget;->mTabSpecs:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/toolkit/TabWidget$TabSpec;

    iput p1, p0, Lcom/android/server/toolkit/TabWidget;->mCurrentTabIndex:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/server/toolkit/TabWidget$TabSpec;->setFocus(Z)V

    return-void
.end method

.method public setWindow(Landroid/widget/PopupWindow;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/toolkit/TabWidget;->mParentWindow:Landroid/widget/PopupWindow;

    return-void
.end method
