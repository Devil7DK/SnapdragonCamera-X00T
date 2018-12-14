.class public Lcom/android/camera/ui/SelfieFlashView;
.super Landroid/view/View;
.source "SelfieFlashView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CAM_SelfieFlashView"


# instance fields
.field private rectF:Landroid/graphics/RectF;

.field private targetPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SelfieFlashView;->targetPaint:Landroid/graphics/Paint;

    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/SelfieFlashView;->targetPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SelfieFlashView;->setVisibility(I)V

    .line 68
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SelfieFlashView;->rectF:Landroid/graphics/RectF;

    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/SelfieFlashView;->rectF:Landroid/graphics/RectF;

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/SelfieFlashView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 57
    iget-object v0, p0, Lcom/android/camera/ui/SelfieFlashView;->rectF:Landroid/graphics/RectF;

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 58
    iget-object v0, p0, Lcom/android/camera/ui/SelfieFlashView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 59
    iget-object v0, p0, Lcom/android/camera/ui/SelfieFlashView;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/SelfieFlashView;->targetPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 60
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public open()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SelfieFlashView;->setVisibility(I)V

    .line 64
    return-void
.end method
