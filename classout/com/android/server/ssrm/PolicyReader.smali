.class public Lcom/android/server/ssrm/PolicyReader;
.super Ljava/lang/Object;
.source "PolicyReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;,
        Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;,
        Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "XMLPolicyReader"

.field private static policyReader:Lcom/android/server/ssrm/PolicyReader;


# instance fields
.field private final APP_STATUS_TRIGGER:Ljava/lang/String;

.field private final FOREGROUND_TRIGGER:Ljava/lang/String;

.field exceptionConditionObj:Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;

.field in:Ljava/io/InputStream;

.field isAppStatusTrigger:Z

.field isException:Z

.field isForegroundTrigger:Z

.field isTemperture:Z

.field mActionTriggerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;",
            ">;"
        }
    .end annotation
.end field

.field mBoostMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;",
            ">;>;>;"
        }
    .end annotation
.end field

.field mExceptionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;",
            ">;"
        }
    .end annotation
.end field

.field mPackageName:Ljava/lang/String;

.field mThermisterDataListAP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;",
            ">;"
        }
    .end annotation
.end field

.field mThermisterDataListCP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;",
            ">;"
        }
    .end annotation
.end field

.field mThermisterDataset:Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

.field private mthermistorObserverAPTag:Z

.field private mthermistorObserverCPTag:Z

.field parser:Lorg/xmlpull/v1/XmlPullParser;

.field stepLevel:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/PolicyReader;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/server/ssrm/PolicyReader;->isTemperture:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/PolicyReader;->isForegroundTrigger:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/PolicyReader;->isAppStatusTrigger:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/PolicyReader;->isException:Z

    const-string v0, "ForegroundTrigger"

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->FOREGROUND_TRIGGER:Ljava/lang/String;

    const-string v0, "AppStatusTrigger"

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->APP_STATUS_TRIGGER:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ssrm/PolicyReader;->stepLevel:I

    iput-boolean v1, p0, Lcom/android/server/ssrm/PolicyReader;->mthermistorObserverAPTag:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/PolicyReader;->mthermistorObserverCPTag:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataListAP:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataListCP:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->mBoostMap:Ljava/util/HashMap;

    return-void
.end method

.method private addActionList()V
    .registers 7

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_f8

    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;

    invoke-virtual {v3}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mBoostMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mBoostMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    :cond_35
    iget-boolean v3, p0, Lcom/android/server/ssrm/PolicyReader;->isForegroundTrigger:Z

    if-eqz v3, :cond_88

    if-eqz v2, :cond_62

    const-string v3, "ForegroundTrigger"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    const-string v3, "ForegroundTrigger"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mBoostMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_61
    :goto_61
    return-void

    :cond_62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "ForegroundTrigger"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mBoostMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_61

    :cond_88
    iget-boolean v3, p0, Lcom/android/server/ssrm/PolicyReader;->isAppStatusTrigger:Z

    if-eqz v3, :cond_61

    if-eqz v2, :cond_d1

    const-string v3, "AppStatusTrigger"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b5

    const-string v3, "AppStatusTrigger"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_af
    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mBoostMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_61

    :cond_b5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "AppStatusTrigger"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_af

    :cond_d1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "AppStatusTrigger"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mBoostMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_61

    :cond_f8
    const-string v3, "XMLPolicyReader"

    const-string v4, "Action Attribute is null"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_61
.end method

.method private addExceptionList(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;-><init>(Lcom/android/server/ssrm/PolicyReader;)V

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->exceptionConditionObj:Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;

    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->exceptionConditionObj:Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;

    const-string v1, "packageName"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->setPackageName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->exceptionConditionObj:Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;

    const-string v1, "statusName"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->setStatusName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->exceptionConditionObj:Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;

    const-string v1, "value"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->mExceptionList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader;->exceptionConditionObj:Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private extractScenarioAction(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e9

    const-string v1, "type"

    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CPU_MIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;

    const/4 v2, 0x0

    const-string v3, "value"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->addAction(ILjava/lang/String;)V

    :cond_39
    :goto_39
    const-string v1, "CPU_MAX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a2

    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;

    const/4 v2, 0x1

    const-string v3, "value"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->addAction(ILjava/lang/String;)V

    :cond_5b
    :goto_5b
    return-void

    :cond_5c
    const-string v1, "GPU_MIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;

    const/4 v2, 0x2

    const-string v3, "value"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->addAction(ILjava/lang/String;)V

    goto :goto_39

    :cond_7f
    const-string v1, "BUS_MIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;

    const/4 v2, 0x4

    const-string v3, "value"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->addAction(ILjava/lang/String;)V

    goto :goto_39

    :cond_a2
    const-string v1, "GPU_MAX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c5

    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;

    const/4 v2, 0x3

    const-string v3, "value"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->addAction(ILjava/lang/String;)V

    goto :goto_5b

    :cond_c5
    const-string v1, "BUS_MAX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;

    const/4 v2, 0x5

    const-string v3, "value"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->addAction(ILjava/lang/String;)V

    goto/16 :goto_5b

    :cond_e9
    const-string v1, "XMLPolicyReader"

    const-string v2, "Expected Parent not present"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5b
.end method

.method private extractStep(Lorg/xmlpull/v1/XmlPullParser;ZZ)V
    .registers 8

    const-string v1, "XMLPolicyReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractStep :: thermistorObserverAPTag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/ssrm/PolicyReader;->isTemperture:Z

    if-eqz v1, :cond_b2

    new-instance v1, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;-><init>(Lcom/android/server/ssrm/PolicyReader;)V

    iput-object v1, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataset:Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

    const/4 v0, 0x0

    :goto_2e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_62

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "level"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataset:Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->setLevel(Ljava/lang/String;)V

    :cond_49
    :goto_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_4c
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "temp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataset:Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->setSurfaceTemp(Ljava/lang/String;)V

    goto :goto_49

    :cond_62
    if-eqz p2, :cond_8a

    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataListAP:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataset:Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "XMLPolicyReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractStep :: thermistorObserverAPTag true Adding into : mThermisterDataListAP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataListAP:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :cond_89
    :goto_89
    return-void

    :cond_8a
    if-eqz p3, :cond_89

    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataListCP:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataset:Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "XMLPolicyReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractStep :: thermistorObserverCPTag true Adding into : mThermisterDataListCP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataListCP:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_89

    :cond_b2
    const/4 v1, 0x0

    const-string v2, "level"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/ssrm/PolicyReader;->stepLevel:I

    goto :goto_89
.end method

.method private extractType(Lorg/xmlpull/v1/XmlPullParser;ZZ)V
    .registers 10

    const/4 v5, 0x0

    const-string v2, "XMLPolicyReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extractType :: thermistorObserverAPTag : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataListAP:Ljava/util/ArrayList;

    if-eqz v2, :cond_4f

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataListCP:Ljava/util/ArrayList;

    if-eqz v2, :cond_4f

    if-eqz p2, :cond_50

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataListAP:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/server/ssrm/PolicyReader;->stepLevel:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

    :cond_38
    :goto_38
    const-string v2, "name"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ARMFreq"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    const-string v2, "value"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->setArmFreq(Ljava/lang/String;)V

    :cond_4f
    :goto_4f
    return-void

    :cond_50
    if-eqz p3, :cond_38

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataListCP:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/server/ssrm/PolicyReader;->stepLevel:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

    goto :goto_38

    :cond_5d
    const-string v2, "ACL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6f

    const-string v2, "value"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->setAcl(Ljava/lang/String;)V

    goto :goto_4f

    :cond_6f
    const-string v2, "Flash"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_81

    const-string v2, "value"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->setFlash(Ljava/lang/String;)V

    goto :goto_4f

    :cond_81
    const-string v2, "ARMCore"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_93

    const-string v2, "value"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->setArmCore(Ljava/lang/String;)V

    goto :goto_4f

    :cond_93
    const-string v2, "LCDBrightness"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a5

    const-string v2, "value"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->setLcdBrightness(Ljava/lang/String;)V

    goto :goto_4f

    :cond_a5
    const-string v2, "ChargeCurrent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b7

    const-string v2, "value"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->setChargeCurrent(Ljava/lang/String;)V

    goto :goto_4f

    :cond_b7
    const-string v2, "RecordingStop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const-string v2, "value"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->setRecordingStop(Ljava/lang/String;)V

    goto :goto_4f
.end method

.method public static getInstance()Lcom/android/server/ssrm/PolicyReader;
    .registers 1

    sget-object v0, Lcom/android/server/ssrm/PolicyReader;->policyReader:Lcom/android/server/ssrm/PolicyReader;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/server/ssrm/PolicyReader;

    invoke-direct {v0}, Lcom/android/server/ssrm/PolicyReader;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/PolicyReader;->policyReader:Lcom/android/server/ssrm/PolicyReader;

    :cond_b
    sget-object v0, Lcom/android/server/ssrm/PolicyReader;->policyReader:Lcom/android/server/ssrm/PolicyReader;

    return-object v0
.end method

.method static readFingerPrint()Ljava/lang/String;
    .registers 14

    invoke-static {}, Lcom/android/server/ssrm/PolicyCreator;->getDecryptedPolicyPath()Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x0

    const/4 v6, 0x0

    if-eqz v9, :cond_87

    const-string v10, "XMLPolicyReader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Reading XML from path -----> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_20
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_bb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20 .. :try_end_25} :catch_14d
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_90

    :try_start_25
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    :cond_35
    :goto_35
    :pswitch_35
    const/4 v10, 0x1

    if-eq v1, v10, :cond_89

    packed-switch v1, :pswitch_data_150

    :pswitch_3b
    goto :goto_35

    :pswitch_3c
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "PowerFramework"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_45
    .catchall {:try_start_25 .. :try_end_45} :catchall_145
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_25 .. :try_end_45} :catch_75
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_45} :catch_149

    move-result v10

    if-eqz v10, :cond_35

    const/4 v10, 0x0

    :try_start_49
    const-string v11, "fingerprint"

    invoke-interface {v8, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_145
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_49 .. :try_end_4e} :catch_57
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_49 .. :try_end_4e} :catch_75
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4e} :catch_149

    move-result-object v3

    if-eqz v7, :cond_54

    :try_start_51
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_101

    :cond_54
    :goto_54
    move-object v6, v7

    move-object v4, v3

    :goto_56
    return-object v4

    :catch_57
    move-exception v5

    :try_start_58
    const-string v10, "XMLPolicyReader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception during reading policy XML for BuildFinger "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catchall {:try_start_58 .. :try_end_74} :catchall_145
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_58 .. :try_end_74} :catch_75
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_74} :catch_149

    goto :goto_35

    :catch_75
    move-exception v0

    move-object v6, v7

    :goto_77
    :try_start_77
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_bb

    if-eqz v6, :cond_7f

    :try_start_7c
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_e3

    :cond_7f
    :goto_7f
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_87
    move-object v4, v3

    goto :goto_56

    :cond_89
    if-eqz v7, :cond_8e

    :try_start_8b
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_123

    :cond_8e
    :goto_8e
    move-object v6, v7

    goto :goto_7f

    :catch_90
    move-exception v2

    :goto_91
    :try_start_91
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_bb

    if-eqz v6, :cond_7f

    :try_start_96
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9a

    goto :goto_7f

    :catch_9a
    move-exception v0

    const-string v10, "XMLPolicyReader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception during reading policy XML for BuildFinger "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7f

    :catchall_bb
    move-exception v10

    :goto_bc
    if-eqz v6, :cond_c1

    :try_start_be
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c1} :catch_c2

    :cond_c1
    :goto_c1
    throw v10

    :catch_c2
    move-exception v0

    const-string v11, "XMLPolicyReader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception during reading policy XML for BuildFinger "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c1

    :catch_e3
    move-exception v0

    const-string v10, "XMLPolicyReader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception during reading policy XML for BuildFinger "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b7

    :catch_101
    move-exception v0

    const-string v10, "XMLPolicyReader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception during reading policy XML for BuildFinger "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_54

    :catch_123
    move-exception v0

    const-string v10, "XMLPolicyReader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception during reading policy XML for BuildFinger "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8e

    :catchall_145
    move-exception v10

    move-object v6, v7

    goto/16 :goto_bc

    :catch_149
    move-exception v2

    move-object v6, v7

    goto/16 :goto_91

    :catch_14d
    move-exception v0

    goto/16 :goto_77

    :pswitch_data_150
    .packed-switch 0x0
        :pswitch_35
        :pswitch_3b
        :pswitch_3c
    .end packed-switch
.end method


# virtual methods
.method public getBoostParameters(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mBoostMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mBoostMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz p2, :cond_3d

    const-string v2, "ForegroundTrigger"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v1, "ForegroundTrigger"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    :cond_23
    :goto_23
    return-object v1

    :cond_24
    const-string v2, "XMLPolicyReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No Key Associated with the given package name in Foreground Trigger :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    :cond_3d
    const-string v2, "AppStatusTrigger"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    const-string v1, "AppStatusTrigger"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_23

    :cond_4e
    const-string v2, "XMLPolicyReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No Key Associated with the given package name in Appstatus Trigger:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23
.end method

.method public getThermistorDataListAP()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataListAP:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getThermistorDataListCP()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataListCP:Ljava/util/ArrayList;

    return-object v0
.end method

.method public logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/android/server/ssrm/PolicyReader;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public readXML()V
    .registers 11

    const/4 v9, 0x1

    invoke-static {}, Lcom/android/server/ssrm/PolicyCreator;->getDecryptedPolicyPath()Ljava/lang/String;

    move-result-object v4

    const-string v6, "XMLPolicyReader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readXML:: read XML policy from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1d
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->in:Ljava/io/InputStream;

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    new-instance v7, Ljava/io/InputStreamReader;

    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->in:Ljava/io/InputStream;

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    :goto_3c
    if-eq v1, v9, :cond_32d

    packed-switch v1, :pswitch_data_370

    :cond_41
    :goto_41
    :pswitch_41
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_3c

    :pswitch_48
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TemperatureTable"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_53
    .catchall {:try_start_1d .. :try_end_53} :catchall_fb
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_53} :catch_8a

    move-result v6

    if-eqz v6, :cond_123

    :try_start_56
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v7, 0x0

    const-string v8, "pollingTimeOut"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "XMLPolicyReader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Thermistor Duration is :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_e7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_e7

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/server/ssrm/Monitor;->setThermistorTimerDuration(J)V
    :try_end_86
    .catchall {:try_start_56 .. :try_end_86} :catchall_fb
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_56 .. :try_end_86} :catch_ed
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_86} :catch_8a

    :goto_86
    const/4 v6, 0x1

    :try_start_87
    iput-boolean v6, p0, Lcom/android/server/ssrm/PolicyReader;->isTemperture:Z
    :try_end_89
    .catchall {:try_start_87 .. :try_end_89} :catchall_fb
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_89} :catch_8a

    goto :goto_41

    :catch_8a
    move-exception v0

    :try_start_8b
    const-string v6, "XMLPolicyReader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readXML:: Exception e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a7
    .catchall {:try_start_8b .. :try_end_a7} :catchall_fb

    :try_start_a7
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->in:Ljava/io/InputStream;

    if-eqz v6, :cond_b0

    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->in:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_b0} :catch_30e

    :cond_b0
    :goto_b0
    if-eqz v4, :cond_cd

    const-string v6, "/data/system/temp.xml"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cd

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_cd

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_ca
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_cd
    const-string v6, "XMLPolicyReader"

    const-string v7, "Reading XML -- Done---"

    invoke-virtual {p0, v6, v7}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_e6

    const-string v6, "/data/system/temp.xml"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e6

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_e6
    return-void

    :cond_e7
    const-wide/16 v6, 0x0

    :try_start_e9
    invoke-static {v6, v7}, Lcom/android/server/ssrm/Monitor;->setThermistorTimerDuration(J)V
    :try_end_ec
    .catchall {:try_start_e9 .. :try_end_ec} :catchall_fb
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e9 .. :try_end_ec} :catch_ed
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_ec} :catch_8a

    goto :goto_86

    :catch_ed
    move-exception v2

    :try_start_ee
    const-string v6, "XMLPolicyReader"

    const-string v7, "Index Out of Bounds Exception Handling for Thermistor Duration"

    invoke-virtual {p0, v6, v7}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Lcom/android/server/ssrm/Monitor;->setThermistorTimerDuration(J)V
    :try_end_fa
    .catchall {:try_start_ee .. :try_end_fa} :catchall_fb
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_fa} :catch_8a

    goto :goto_86

    :catchall_fb
    move-exception v6

    :try_start_fc
    iget-object v7, p0, Lcom/android/server/ssrm/PolicyReader;->in:Ljava/io/InputStream;

    if-eqz v7, :cond_105

    iget-object v7, p0, Lcom/android/server/ssrm/PolicyReader;->in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_105
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_105} :catch_2ef

    :cond_105
    :goto_105
    if-eqz v4, :cond_122

    const-string v7, "/data/system/temp.xml"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_122

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_122

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_122
    throw v6

    :cond_123
    :try_start_123
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "step"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13c

    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    iget-boolean v7, p0, Lcom/android/server/ssrm/PolicyReader;->mthermistorObserverAPTag:Z

    iget-boolean v8, p0, Lcom/android/server/ssrm/PolicyReader;->mthermistorObserverCPTag:Z

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/ssrm/PolicyReader;->extractStep(Lorg/xmlpull/v1/XmlPullParser;ZZ)V

    goto/16 :goto_41

    :cond_13c
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "type"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_155

    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    iget-boolean v7, p0, Lcom/android/server/ssrm/PolicyReader;->mthermistorObserverAPTag:Z

    iget-boolean v8, p0, Lcom/android/server/ssrm/PolicyReader;->mthermistorObserverCPTag:Z

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/ssrm/PolicyReader;->extractType(Lorg/xmlpull/v1/XmlPullParser;ZZ)V

    goto/16 :goto_41

    :cond_155
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Exception"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16f

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/ssrm/PolicyReader;->isException:Z

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->mExceptionList:Ljava/util/ArrayList;

    goto/16 :goto_41

    :cond_16f
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ForegroundTrigger"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19c

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/ssrm/PolicyReader;->isForegroundTrigger:Z

    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v7, 0x0

    const-string v8, "packageName"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->mPackageName:Ljava/lang/String;

    new-instance v3, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;

    invoke-direct {v3, p0}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;-><init>(Lcom/android/server/ssrm/PolicyReader;)V

    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->setPackageName(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_41

    :cond_19c
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AppStatusTrigger"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f0

    iget-boolean v6, p0, Lcom/android/server/ssrm/PolicyReader;->isForegroundTrigger:Z

    if-nez v6, :cond_1e9

    iget-boolean v6, p0, Lcom/android/server/ssrm/PolicyReader;->isAppStatusTrigger:Z

    if-nez v6, :cond_1e9

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/ssrm/PolicyReader;->isAppStatusTrigger:Z

    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v7, 0x0

    const-string v8, "packageName"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->mPackageName:Ljava/lang/String;

    new-instance v3, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;

    invoke-direct {v3, p0}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;-><init>(Lcom/android/server/ssrm/PolicyReader;)V

    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->setPackageName(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v7, 0x0

    const-string v8, "statusName"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->setStatusName(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v7, 0x0

    const-string v8, "value"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->setValue(Ljava/lang/String;)V

    goto/16 :goto_41

    :cond_1e9
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {p0, v6}, Lcom/android/server/ssrm/PolicyReader;->addExceptionList(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_41

    :cond_1f0
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "action"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_205

    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {p0, v6}, Lcom/android/server/ssrm/PolicyReader;->extractScenarioAction(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_41

    :cond_205
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ThermistorObserverAP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21f

    const-string v6, "XMLPolicyReader"

    const-string v7, "ThermistorObserver AP Statring"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/ssrm/PolicyReader;->mthermistorObserverAPTag:Z

    goto/16 :goto_41

    :cond_21f
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ThermistorObserverCP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    const-string v6, "XMLPolicyReader"

    const-string v7, "ThermistorObserver CP Statring"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/ssrm/PolicyReader;->mthermistorObserverCPTag:Z

    goto/16 :goto_41

    :pswitch_239
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TemperatureTable"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_24c

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/ssrm/PolicyReader;->isTemperture:Z

    goto/16 :goto_41

    :cond_24c
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ForegroundTrigger"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_262

    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyReader;->addActionList()V

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/ssrm/PolicyReader;->isForegroundTrigger:Z

    goto/16 :goto_41

    :cond_262
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AppStatusTrigger"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_27c

    iget-boolean v6, p0, Lcom/android/server/ssrm/PolicyReader;->isException:Z

    if-nez v6, :cond_41

    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyReader;->addActionList()V

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/ssrm/PolicyReader;->isAppStatusTrigger:Z

    goto/16 :goto_41

    :cond_27c
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "step"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_293

    iget-boolean v6, p0, Lcom/android/server/ssrm/PolicyReader;->isTemperture:Z

    if-nez v6, :cond_41

    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/ssrm/PolicyReader;->stepLevel:I

    goto/16 :goto_41

    :cond_293
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Exception"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2bb

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/ssrm/PolicyReader;->isException:Z

    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;

    iget-object v7, p0, Lcom/android/server/ssrm/PolicyReader;->mExceptionList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->setExceptionList(Ljava/util/ArrayList;)V

    goto/16 :goto_41

    :cond_2bb
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ThermistorObserverAP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d5

    const-string v6, "XMLPolicyReader"

    const-string v7, "ThermistorObserver Ends"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/ssrm/PolicyReader;->mthermistorObserverAPTag:Z

    goto/16 :goto_41

    :cond_2d5
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ThermistorObserverCP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    const-string v6, "XMLPolicyReader"

    const-string v7, "ThermistorObserver CP Ends"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/ssrm/PolicyReader;->mthermistorObserverCPTag:Z
    :try_end_2ed
    .catchall {:try_start_123 .. :try_end_2ed} :catchall_fb
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_2ed} :catch_8a

    goto/16 :goto_41

    :catch_2ef
    move-exception v0

    const-string v7, "XMLPolicyReader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readXML:: Exception e = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_105

    :catch_30e
    move-exception v0

    const-string v6, "XMLPolicyReader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readXML:: Exception e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b0

    :cond_32d
    :try_start_32d
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->in:Ljava/io/InputStream;

    if-eqz v6, :cond_336

    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->in:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_336
    .catch Ljava/io/IOException; {:try_start_32d .. :try_end_336} :catch_352

    :cond_336
    :goto_336
    if-eqz v4, :cond_cd

    const-string v6, "/data/system/temp.xml"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cd

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_cd

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_ca

    :catch_352
    move-exception v0

    const-string v6, "XMLPolicyReader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readXML:: Exception e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_336

    :pswitch_data_370
    .packed-switch 0x0
        :pswitch_41
        :pswitch_41
        :pswitch_48
        :pswitch_239
    .end packed-switch
.end method
