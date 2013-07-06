.class public Lcom/android/server/toolkit/TabWidget$TabSpec;
.super Ljava/lang/Object;
.source "TabWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/toolkit/TabWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabSpec"
.end annotation


# instance fields
.field private final BLUE:I

.field private final COLORNUM:I

.field private final GREEN:I

.field private final ORANGE:I

.field private final RED:I

.field private final YELLOW:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIndex:I

.field private mIntent:Landroid/content/Intent;

.field private mTabHidden:Landroid/graphics/drawable/Drawable;

.field private mView:Landroid/view/View;

.field private mbUpdate:Z

.field final synthetic this$0:Lcom/android/server/toolkit/TabWidget;


# direct methods
.method private constructor <init>(Lcom/android/server/toolkit/TabWidget;ILandroid/graphics/drawable/Drawable;Landroid/content/Intent;)V
    .registers 6

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->this$0:Lcom/android/server/toolkit/TabWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mbUpdate:Z

    iput v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->YELLOW:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->BLUE:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->RED:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->ORANGE:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->GREEN:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->COLORNUM:I

    iput p2, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mIndex:I

    iput-object p3, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mIntent:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/toolkit/TabWidget$TabSpec;->setup()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/toolkit/TabWidget;ILandroid/graphics/drawable/Drawable;Landroid/content/Intent;Lcom/android/server/toolkit/TabWidget$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/toolkit/TabWidget$TabSpec;-><init>(Lcom/android/server/toolkit/TabWidget;ILandroid/graphics/drawable/Drawable;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/toolkit/TabWidget$TabSpec;)I
    .registers 2

    iget v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/toolkit/TabWidget$TabSpec;)Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private setup()V
    .registers 3

    iget v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mIndex:I

    rem-int/lit8 v0, v0, 0x5

    packed-switch v0, :pswitch_data_d0

    :goto_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mbUpdate:Z

    return-void

    :pswitch_b
    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->this$0:Lcom/android/server/toolkit/TabWidget;

    invoke-virtual {v0}, Lcom/android/server/toolkit/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080805

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->this$0:Lcom/android/server/toolkit/TabWidget;

    invoke-virtual {v0}, Lcom/android/server/toolkit/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080806

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mTabHidden:Landroid/graphics/drawable/Drawable;

    goto :goto_7

    :pswitch_32
    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->this$0:Lcom/android/server/toolkit/TabWidget;

    invoke-virtual {v0}, Lcom/android/server/toolkit/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080808

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->this$0:Lcom/android/server/toolkit/TabWidget;

    invoke-virtual {v0}, Lcom/android/server/toolkit/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080809

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mTabHidden:Landroid/graphics/drawable/Drawable;

    goto :goto_7

    :pswitch_59
    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->this$0:Lcom/android/server/toolkit/TabWidget;

    invoke-virtual {v0}, Lcom/android/server/toolkit/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108080b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->this$0:Lcom/android/server/toolkit/TabWidget;

    invoke-virtual {v0}, Lcom/android/server/toolkit/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108080c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mTabHidden:Landroid/graphics/drawable/Drawable;

    goto :goto_7

    :pswitch_80
    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->this$0:Lcom/android/server/toolkit/TabWidget;

    invoke-virtual {v0}, Lcom/android/server/toolkit/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108080e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->this$0:Lcom/android/server/toolkit/TabWidget;

    invoke-virtual {v0}, Lcom/android/server/toolkit/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108080f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mTabHidden:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_7

    :pswitch_a8
    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->this$0:Lcom/android/server/toolkit/TabWidget;

    invoke-virtual {v0}, Lcom/android/server/toolkit/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080811

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->this$0:Lcom/android/server/toolkit/TabWidget;

    invoke-virtual {v0}, Lcom/android/server/toolkit/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080812

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mTabHidden:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_7

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_32
        :pswitch_59
        :pswitch_80
        :pswitch_a8
    .end packed-switch
.end method


# virtual methods
.method public getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIndex()I
    .registers 2

    iget v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mIndex:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getTabHidden()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mTabHidden:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 5

    const/4 v3, 0x1

    iget-boolean v2, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mbUpdate:Z

    if-nez v2, :cond_8

    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mView:Landroid/view/View;

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->this$0:Lcom/android/server/toolkit/TabWidget;

    invoke-virtual {v2}, Lcom/android/server/toolkit/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->this$0:Lcom/android/server/toolkit/TabWidget;

    invoke-virtual {v2}, Lcom/android/server/toolkit/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/server/toolkit/TabWidget$TabSpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0}, Lcom/android/server/toolkit/TabWidget$TabSpec;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mView:Landroid/view/View;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/toolkit/TabWidget$TabSpec;->mbUpdate:Z

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    new-instance v2, Lcom/android/server/toolkit/TabWidget$TabSpec$1;

    invoke-direct {v2, p0}, Lcom/android/server/toolkit/TabWidget$TabSpec$1;-><init>(Lcom/android/server/toolkit/TabWidget$TabSpec;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_7
.end method

.method public setFocus(Z)V
    .registers 3

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/android/server/toolkit/TabWidget$TabSpec;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_9
    return-void
.end method
