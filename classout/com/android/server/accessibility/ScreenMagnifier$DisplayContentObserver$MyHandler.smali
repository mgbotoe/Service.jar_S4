.class final Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$MyHandler;
.super Landroid/os/Handler;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$MyHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;Lcom/android/server/accessibility/ScreenMagnifier$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$MyHandler;-><init>(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_80

    :pswitch_6
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_1f
    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$MyHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mViewport:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;
    invoke-static {v6}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->access$2700(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;)Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    move-result-object v6

    invoke-virtual {v6, v2, v2}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->setFrameShown(ZZ)V

    :goto_28
    return-void

    :pswitch_29
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_2d
    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$MyHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->access$2800(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;)Landroid/graphics/Rect;

    move-result-object v6

    iget v7, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v8, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v9, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v10, v1, Lcom/android/internal/os/SomeArgs;->argi4:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v2, :cond_51

    :goto_42
    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$MyHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;

    iget-object v7, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$MyHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->access$2800(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;)Landroid/graphics/Rect;

    move-result-object v7

    #calls: Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->handleOnRectangleOnScreenRequested(Landroid/graphics/Rect;Z)V
    invoke-static {v6, v7, v2}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->access$2900(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;Landroid/graphics/Rect;Z)V
    :try_end_4d
    .catchall {:try_start_2d .. :try_end_4d} :catchall_53

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_28

    :cond_51
    const/4 v2, 0x0

    goto :goto_42

    :catchall_53
    move-exception v6

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v6

    :pswitch_58
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/WindowInfo;

    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$MyHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;

    #calls: Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->handleOnWindowTransition(ILandroid/view/WindowInfo;)V
    invoke-static {v6, v5, v3}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->access$3000(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;ILandroid/view/WindowInfo;)V

    goto :goto_28

    :pswitch_64
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$MyHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;

    #calls: Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->handleOnRotationChanged(I)V
    invoke-static {v6, v4}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->access$3100(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;I)V

    goto :goto_28

    :pswitch_6c
    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$MyHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mViewport:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;
    invoke-static {v6}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->access$2700(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;)Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver$MyHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v7}, Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;->access$3200(Lcom/android/server/accessibility/ScreenMagnifier$DisplayContentObserver;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport;->recomputeBounds(Z)V

    goto :goto_28

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_6
        :pswitch_29
        :pswitch_58
        :pswitch_64
        :pswitch_6c
    .end packed-switch
.end method
