.class Lcom/android/camera/DrawAutoHDR;
.super Landroid/view/View;
.source "PhotoModule.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AutoHdrView"


# instance fields
.field private mPhotoModule:Lcom/android/camera/PhotoModule;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 6528
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6529
    return-void
.end method


# virtual methods
.method public AutoHDR()V
    .locals 0

    .prologue
    .line 6554
    invoke-virtual {p0}, Lcom/android/camera/DrawAutoHDR;->invalidate()V

    .line 6555
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 6533
    iget-object v1, p0, Lcom/android/camera/DrawAutoHDR;->mPhotoModule:Lcom/android/camera/PhotoModule;

    if-nez v1, :cond_0

    .line 6551
    :goto_0
    return-void

    .line 6535
    :cond_0
    iget-object v1, p0, Lcom/android/camera/DrawAutoHDR;->mPhotoModule:Lcom/android/camera/PhotoModule;

    iget-boolean v1, v1, Lcom/android/camera/PhotoModule;->mAutoHdrEnable:Z

    if-eqz v1, :cond_1

    .line 6536
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 6537
    .local v0, "AutoHDRPaint":Landroid/graphics/Paint;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6538
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6539
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 6540
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6541
    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6542
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6543
    const/high16 v1, 0x42000000    # 32.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 6544
    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6545
    const-string v1, "HDR On"

    const/high16 v2, 0x43480000    # 200.0f

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 6548
    .end local v0    # "AutoHDRPaint":Landroid/graphics/Paint;
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setPhotoModuleObject(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p1, "photoModule"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 6558
    iput-object p1, p0, Lcom/android/camera/DrawAutoHDR;->mPhotoModule:Lcom/android/camera/PhotoModule;

    .line 6559
    return-void
.end method
