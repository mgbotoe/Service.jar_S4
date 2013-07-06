.class public Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;
.super Ljava/lang/Object;
.source "PolicyReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/PolicyReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExceptionalCondition"
.end annotation


# instance fields
.field private packageName:Ljava/lang/String;

.field private statusName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/ssrm/PolicyReader;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/ssrm/PolicyReader;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->this$0:Lcom/android/server/ssrm/PolicyReader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->statusName:Ljava/lang/String;

    return-object v0
.end method

.method public isValue()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setStatusName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->statusName:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->value:Ljava/lang/String;

    return-void
.end method
