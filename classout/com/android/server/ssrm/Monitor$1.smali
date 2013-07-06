.class Lcom/android/server/ssrm/Monitor$1;
.super Landroid/os/Handler;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/Monitor;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13

    const-wide/16 v2, 0x2710

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_228

    :pswitch_7
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage:: unhandled message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    :goto_23
    return-void

    :pswitch_24
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$000()Lcom/android/server/ssrm/PolicyCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ssrm/PolicyCreator;->isPolicyFileCreated()Z

    move-result v0

    if-nez v0, :cond_53

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$108()I

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$100()I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_23

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$000()Lcom/android/server/ssrm/PolicyCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ssrm/PolicyCreator;->createPolicyFile()V

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$200()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    const/4 v0, 0x5

    iput v0, v10, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$200()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v10, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_23

    :cond_53
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    #getter for: Lcom/android/server/ssrm/Monitor;->xmlPolicyReader:Lcom/android/server/ssrm/PolicyReader;
    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->access$300(Lcom/android/server/ssrm/Monitor;)Lcom/android/server/ssrm/PolicyReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ssrm/PolicyReader;->readXML()V

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$200()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v9

    const/4 v0, 0x6

    iput v0, v9, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$200()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v9, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    #getter for: Lcom/android/server/ssrm/Monitor;->thermistorObeserver:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->access$500(Lcom/android/server/ssrm/Monitor;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    #getter for: Lcom/android/server/ssrm/Monitor;->thermistorObeserverTask:Ljava/util/TimerTask;
    invoke-static {v1}, Lcom/android/server/ssrm/Monitor;->access$400(Lcom/android/server/ssrm/Monitor;)Ljava/util/TimerTask;

    move-result-object v1

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getThermistorTimerDuration()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_23

    :pswitch_84
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$600()[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    move-result-object v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    #calls: Lcom/android/server/ssrm/Monitor;->createSIOPLevels()V
    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->access$700(Lcom/android/server/ssrm/Monitor;)V

    goto :goto_23

    :pswitch_90
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    #calls: Lcom/android/server/ssrm/Monitor;->readThermistorFile()Z
    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->access$800(Lcom/android/server/ssrm/Monitor;)Z

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    #calls: Lcom/android/server/ssrm/Monitor;->setCurrentLevelfromTemp()V
    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->access$900(Lcom/android/server/ssrm/Monitor;)V

    goto :goto_23

    :pswitch_9b
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    #getter for: Lcom/android/server/ssrm/Monitor;->xmlPolicyReader:Lcom/android/server/ssrm/PolicyReader;
    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->access$300(Lcom/android/server/ssrm/Monitor;)Lcom/android/server/ssrm/PolicyReader;

    move-result-object v0

    if-eqz v0, :cond_127

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    #getter for: Lcom/android/server/ssrm/Monitor;->xmlPolicyReader:Lcom/android/server/ssrm/PolicyReader;
    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->access$300(Lcom/android/server/ssrm/Monitor;)Lcom/android/server/ssrm/PolicyReader;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/PolicyReader;->getBoostParameters(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_ff

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_ba
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    #calls: Lcom/android/server/ssrm/Monitor;->checkException(Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;)Z
    invoke-static {v0, v6}, Lcom/android/server/ssrm/Monitor;->access$1000(Lcom/android/server/ssrm/Monitor;Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;)Z

    move-result v0

    if-nez v0, :cond_de

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1100()Lcom/android/server/ssrm/Monitor$SIOPLevel;

    move-result-object v3

    invoke-static {v0, v6, v1, v2, v3}, Lcom/android/server/ssrm/Controller;->boost(Ljava/lang/String;Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;JLcom/android/server/ssrm/Monitor$SIOPLevel;)V

    goto :goto_ba

    :cond_de
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ***** FORE GROUND TRIGGER ***** Based on Exception List we are not boosting for package name :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ba

    :cond_ff
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Policy Registered for AMS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "in XML"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_23

    :cond_127
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FORE GROUND TRIGGER : XML Policy Reader is null"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_23

    :pswitch_132
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_141

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "In Handler:: APPSTATUSTRIGGER Boost Request from App"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :cond_141
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1fd

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    #getter for: Lcom/android/server/ssrm/Monitor;->xmlPolicyReader:Lcom/android/server/ssrm/PolicyReader;
    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->access$300(Lcom/android/server/ssrm/Monitor;)Lcom/android/server/ssrm/PolicyReader;

    move-result-object v0

    if-eqz v0, :cond_1f2

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package Name :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    #getter for: Lcom/android/server/ssrm/Monitor;->xmlPolicyReader:Lcom/android/server/ssrm/PolicyReader;
    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->access$300(Lcom/android/server/ssrm/Monitor;)Lcom/android/server/ssrm/PolicyReader;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/PolicyReader;->getBoostParameters(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_1ca

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_185
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    #calls: Lcom/android/server/ssrm/Monitor;->checkException(Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;)Z
    invoke-static {v0, v6}, Lcom/android/server/ssrm/Monitor;->access$1000(Lcom/android/server/ssrm/Monitor;Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;)Z

    move-result v0

    if-nez v0, :cond_1a9

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1100()Lcom/android/server/ssrm/Monitor$SIOPLevel;

    move-result-object v3

    invoke-static {v0, v6, v1, v2, v3}, Lcom/android/server/ssrm/Controller;->boost(Ljava/lang/String;Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;JLcom/android/server/ssrm/Monitor$SIOPLevel;)V

    goto :goto_185

    :cond_1a9
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***** APP STATUS TRIGGER *****  Based on Exception List we are not boosting for package name :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_185

    :cond_1ca
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Policy Registered for APP Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "in XML"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_23

    :cond_1f2
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APP STATUS TRIGGER XML Policy Reader is null"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_23

    :cond_1fd
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_23

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_211

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "In Handler:: REMOVEBOOSTREQUEST from APP"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :cond_211
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ssrm/Controller;->removeBoost(Ljava/lang/String;)V

    goto/16 :goto_23

    :pswitch_21c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ssrm/Controller;->removeBoost(Ljava/lang/String;)V

    goto/16 :goto_23

    nop

    :pswitch_data_228
    .packed-switch 0x0
        :pswitch_21c
        :pswitch_9b
        :pswitch_132
        :pswitch_7
        :pswitch_7
        :pswitch_24
        :pswitch_84
        :pswitch_90
    .end packed-switch
.end method
