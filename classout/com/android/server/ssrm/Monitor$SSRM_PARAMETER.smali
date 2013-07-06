.class public Lcom/android/server/ssrm/Monitor$SSRM_PARAMETER;
.super Ljava/lang/Object;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SSRM_PARAMETER"
.end annotation


# static fields
.field public static MAX_BRIGHTNESS_FOR_BROWSER:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Lcom/android/server/ssrm/Monitor$SSRM_PARAMETER;->MAX_BRIGHTNESS_FOR_BROWSER:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
