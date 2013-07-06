.class public Lcom/sec/android/facedetection/FaceDetectionService$Size;
.super Ljava/lang/Object;
.source "FaceDetectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/facedetection/FaceDetectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Size"
.end annotation


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/facedetection/FaceDetectionService$Size;->width:I

    iput p2, p0, Lcom/sec/android/facedetection/FaceDetectionService$Size;->height:I

    return-void
.end method
