.class final Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;
.super Ljava/lang/Object;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UsbAudioData"
.end annotation


# instance fields
.field private cardNumber:Ljava/lang/String;

.field private channels:Ljava/lang/String;

.field private deviceNumber:Ljava/lang/String;

.field private isSmartDock:Z

.field private isplayback:Z

.field private samplingRate2:Ljava/lang/String;

.field private samplingRate6:Ljava/lang/String;

.field private state:I

.field final synthetic this$1:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;


# direct methods
.method private constructor <init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->this$1:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Lcom/android/server/WiredAccessoryManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;)V

    return-void
.end method


# virtual methods
.method public getCardNumber()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->cardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getChannels()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->channels:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceNumber()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->deviceNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getIsPlayback()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->isplayback:Z

    return v0
.end method

.method public getIsSmartdock()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->isSmartDock:Z

    return v0
.end method

.method public getSamplingRate(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->samplingRate2:Ljava/lang/String;

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->samplingRate6:Ljava/lang/String;

    goto :goto_5
.end method

.method public getState()I
    .registers 2

    iget v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->state:I

    return v0
.end method

.method public setUsbAudioData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 9

    iput p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->state:I

    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->channels:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->samplingRate2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->samplingRate6:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->cardNumber:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->deviceNumber:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->isSmartDock:Z

    iput-boolean p8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->isplayback:Z

    return-void
.end method
