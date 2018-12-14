.class public Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;
.super Ljava/lang/Object;
.source "TrackingFocusFrameListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public final confidence:I

.field public final id:I

.field public pos:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>(IIIIII)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "confidence"    # I
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput p1, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;->id:I

    .line 161
    iput p2, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;->confidence:I

    .line 162
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3, p4, p5, p6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;->pos:Landroid/graphics/Rect;

    .line 163
    return-void
.end method

.method synthetic constructor <init>(IIIIIILcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$1;

    .prologue
    .line 154
    invoke-direct/range {p0 .. p6}, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;-><init>(IIIIII)V

    return-void
.end method

.method public static Copy(Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;)Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;
    .locals 7
    .param p0, "old"    # Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;

    .prologue
    .line 166
    new-instance v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;->id:I

    iget v2, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;->confidence:I

    iget-object v3, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;->pos:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;->pos:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;->pos:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;->pos:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;-><init>(IIIIII)V

    .line 167
    .local v0, "result":Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;
    return-object v0
.end method
