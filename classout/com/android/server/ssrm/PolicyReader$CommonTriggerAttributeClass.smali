.class public Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;
.super Ljava/lang/Object;
.source "PolicyReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/PolicyReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommonTriggerAttributeClass"
.end annotation


# static fields
.field static final BUS_MAX:I = 0x5

.field static final BUS_MIN:I = 0x4

.field static final CPU_MAX:I = 0x1

.field static final CPU_MIN:I = 0x0

.field static final GPU_MAX:I = 0x3

.field static final GPU_MIN:I = 0x2

.field static final LCD_MAX:I = 0x7

.field static final LCD_MIN:I = 0x6


# instance fields
.field private bus_max:Ljava/lang/String;

.field private bus_min:Ljava/lang/String;

.field private cpu_max:Ljava/lang/String;

.field private cpu_min:Ljava/lang/String;

.field private exceptionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;",
            ">;"
        }
    .end annotation
.end field

.field private gpu_max:Ljava/lang/String;

.field private gpu_min:Ljava/lang/String;

.field isBusMax:Z

.field isGpuMax:Z

.field private lcd_max:Ljava/lang/String;

.field private lcd_min:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private statusName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/ssrm/PolicyReader;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/ssrm/PolicyReader;)V
    .registers 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->this$0:Lcom/android/server/ssrm/PolicyReader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NA"

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->cpu_min:Ljava/lang/String;

    const-string v0, "NA"

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->cpu_max:Ljava/lang/String;

    const-string v0, "NA"

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->gpu_min:Ljava/lang/String;

    const-string v0, "NA"

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->gpu_max:Ljava/lang/String;

    const-string v0, "NA"

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->bus_min:Ljava/lang/String;

    const-string v0, "NA"

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->bus_max:Ljava/lang/String;

    const-string v0, "NA"

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->lcd_min:Ljava/lang/String;

    const-string v0, "NA"

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->lcd_max:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->isGpuMax:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->isBusMax:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->packageName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->statusName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addAction(ILjava/lang/String;)V
    .registers 3

    packed-switch p1, :pswitch_data_1c

    :goto_3
    return-void

    :pswitch_4
    iput-object p2, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->cpu_min:Ljava/lang/String;

    goto :goto_3

    :pswitch_7
    iput-object p2, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->cpu_max:Ljava/lang/String;

    goto :goto_3

    :pswitch_a
    iput-object p2, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->gpu_min:Ljava/lang/String;

    goto :goto_3

    :pswitch_d
    iput-object p2, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->gpu_max:Ljava/lang/String;

    goto :goto_3

    :pswitch_10
    iput-object p2, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->bus_min:Ljava/lang/String;

    goto :goto_3

    :pswitch_13
    iput-object p2, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->bus_max:Ljava/lang/String;

    goto :goto_3

    :pswitch_16
    iput-object p2, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->lcd_min:Ljava/lang/String;

    goto :goto_3

    :pswitch_19
    iput-object p2, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->lcd_max:Ljava/lang/String;

    goto :goto_3

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_4
        :pswitch_7
        :pswitch_a
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_16
        :pswitch_19
    .end packed-switch
.end method

.method public getActionValue(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_1e

    const-string v0, ""

    :goto_5
    return-object v0

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->cpu_min:Ljava/lang/String;

    goto :goto_5

    :pswitch_9
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->cpu_max:Ljava/lang/String;

    goto :goto_5

    :pswitch_c
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->gpu_min:Ljava/lang/String;

    goto :goto_5

    :pswitch_f
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->gpu_max:Ljava/lang/String;

    goto :goto_5

    :pswitch_12
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->bus_min:Ljava/lang/String;

    goto :goto_5

    :pswitch_15
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->bus_max:Ljava/lang/String;

    goto :goto_5

    :pswitch_18
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->lcd_min:Ljava/lang/String;

    goto :goto_5

    :pswitch_1b
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->lcd_max:Ljava/lang/String;

    goto :goto_5

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
    .end packed-switch
.end method

.method public getBusMaxActionValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->bus_max:Ljava/lang/String;

    return-object v0
.end method

.method public getBusMinActionValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->bus_min:Ljava/lang/String;

    return-object v0
.end method

.method public getCommonExceptionList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->exceptionList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCpuMaxActionValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->cpu_max:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuMinActionValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->cpu_min:Ljava/lang/String;

    return-object v0
.end method

.method public getGpuMaxActionValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->gpu_max:Ljava/lang/String;

    return-object v0
.end method

.method public getGpuMinActionValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->gpu_min:Ljava/lang/String;

    return-object v0
.end method

.method public getLcdMaxActionValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->lcd_max:Ljava/lang/String;

    return-object v0
.end method

.method public getLcdMinActionValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->lcd_min:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->statusName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setExceptionList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->exceptionList:Ljava/util/ArrayList;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setStatusName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->statusName:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->value:Ljava/lang/String;

    return-void
.end method
