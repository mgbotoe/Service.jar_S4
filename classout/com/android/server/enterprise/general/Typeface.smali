.class public Lcom/android/server/enterprise/general/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# instance fields
.field private mFontPackageName:Ljava/lang/String;

.field public final mMonospaceFonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/general/TypefaceFile;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field public final mSansFonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/general/TypefaceFile;",
            ">;"
        }
    .end annotation
.end field

.field public final mSerifFonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/general/TypefaceFile;",
            ">;"
        }
    .end annotation
.end field

.field private mTypefaceFilename:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mFontPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mTypefaceFilename:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mSansFonts:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mSerifFonts:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mMonospaceFonts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getFontPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mFontPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getMonospaceName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mMonospaceFonts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mName:Ljava/lang/String;

    goto :goto_9
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSansName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mName:Ljava/lang/String;

    goto :goto_9
.end method

.method public getSerifName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mSerifFonts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mName:Ljava/lang/String;

    goto :goto_9
.end method

.method public getTypefaceFilename()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mTypefaceFilename:Ljava/lang/String;

    return-object v0
.end method

.method public setFontPackageName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/general/Typeface;->mFontPackageName:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/general/Typeface;->mName:Ljava/lang/String;

    return-void
.end method

.method public setTypefaceFilename(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/general/Typeface;->mTypefaceFilename:Ljava/lang/String;

    return-void
.end method
