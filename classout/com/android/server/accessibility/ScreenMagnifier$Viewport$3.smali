.class Lcom/android/server/accessibility/ScreenMagnifier$Viewport$3;
.super Ljava/lang/Object;
.source "ScreenMagnifier.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier$Viewport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/WindowInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier$Viewport;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$3;->this$0:Lcom/android/server/accessibility/ScreenMagnifier$Viewport;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)I
    .registers 5

    iget v0, p1, Landroid/view/WindowInfo;->layer:I

    iget v1, p2, Landroid/view/WindowInfo;->layer:I

    if-eq v0, v1, :cond_c

    iget v0, p2, Landroid/view/WindowInfo;->layer:I

    iget v1, p1, Landroid/view/WindowInfo;->layer:I

    sub-int/2addr v0, v1

    :goto_b
    return v0

    :cond_c
    iget-object v0, p1, Landroid/view/WindowInfo;->touchableRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p2, Landroid/view/WindowInfo;->touchableRegion:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-eq v0, v1, :cond_20

    iget-object v0, p2, Landroid/view/WindowInfo;->touchableRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p1, Landroid/view/WindowInfo;->touchableRegion:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    goto :goto_b

    :cond_20
    iget-object v0, p1, Landroid/view/WindowInfo;->touchableRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p2, Landroid/view/WindowInfo;->touchableRegion:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-eq v0, v1, :cond_34

    iget-object v0, p2, Landroid/view/WindowInfo;->touchableRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p1, Landroid/view/WindowInfo;->touchableRegion:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    goto :goto_b

    :cond_34
    iget-object v0, p1, Landroid/view/WindowInfo;->touchableRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p2, Landroid/view/WindowInfo;->touchableRegion:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-eq v0, v1, :cond_48

    iget-object v0, p2, Landroid/view/WindowInfo;->touchableRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p1, Landroid/view/WindowInfo;->touchableRegion:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_b

    :cond_48
    iget-object v0, p1, Landroid/view/WindowInfo;->touchableRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p2, Landroid/view/WindowInfo;->touchableRegion:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v1, :cond_5c

    iget-object v0, p2, Landroid/view/WindowInfo;->touchableRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p1, Landroid/view/WindowInfo;->touchableRegion:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    goto :goto_b

    :cond_5c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Landroid/view/WindowInfo;

    check-cast p2, Landroid/view/WindowInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/ScreenMagnifier$Viewport$3;->compare(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)I

    move-result v0

    return v0
.end method
