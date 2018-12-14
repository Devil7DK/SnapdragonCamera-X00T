.class Lcom/android/camera/ui/FilmStripView$ViewItem;
.super Ljava/lang/Object;
.source "FilmStripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FilmStripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewItem"
.end annotation


# instance fields
.field private mDataId:I

.field private mLeftPosition:I

.field private mTranslationXAnimator:Landroid/animation/ValueAnimator;

.field private mView:Landroid/view/View;

.field private mViewArea:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(ILandroid/view/View;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    const/4 v0, 0x0

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    invoke-virtual {p2, v0}, Landroid/view/View;->setPivotX(F)V

    .line 447
    invoke-virtual {p2, v0}, Landroid/view/View;->setPivotY(F)V

    .line 448
    iput p1, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mDataId:I

    .line 449
    iput-object p2, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    .line 450
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mLeftPosition:I

    .line 451
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mViewArea:Landroid/graphics/RectF;

    .line 452
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mTranslationXAnimator:Landroid/animation/ValueAnimator;

    .line 453
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mTranslationXAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 454
    return-void
.end method

.method private layoutAt(II)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I

    .prologue
    .line 557
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    .line 558
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, p2

    .line 557
    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    :goto_0
    return-void

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "CAM_FilmStripView"

    const-string v2, "One of the view children is removed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public animateTranslationX(FJLandroid/animation/TimeInterpolator;)V
    .locals 4
    .param p1, "targetX"    # F
    .param p2, "duration_ms"    # J
    .param p4, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mTranslationXAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 522
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mTranslationXAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 523
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mTranslationXAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 524
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mTranslationXAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 525
    return-void
.end method

.method public areaContains(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mViewArea:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    return v0
.end method

.method public copyGeometry(Lcom/android/camera/ui/FilmStripView$ViewItem;)V
    .locals 3
    .param p1, "item"    # Lcom/android/camera/ui/FilmStripView$ViewItem;

    .prologue
    .line 615
    invoke-virtual {p1}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getLeftPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FilmStripView$ViewItem;->setLeftPosition(I)V

    .line 616
    invoke-virtual {p1}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getView()Landroid/view/View;

    move-result-object v0

    .line 617
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 618
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 619
    return-void
.end method

.method public getCenterX()I
    .locals 2

    .prologue
    .line 533
    iget v0, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mLeftPosition:I

    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 458
    iget v0, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mDataId:I

    return v0
.end method

.method public getLeftPosition()I
    .locals 1

    .prologue
    .line 473
    iget v0, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mLeftPosition:I

    return v0
.end method

.method public getScaledTranslationX(F)F
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    div-float/2addr v0, p1

    return v0
.end method

.method public getScaledTranslationY(F)F
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    div-float/2addr v0, p1

    return v0
.end method

.method public getTranslationX()F
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    return v0
.end method

.method public getTranslationY()F
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getViewRect()Landroid/graphics/RectF;
    .locals 4

    .prologue
    .line 568
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 569
    .local v0, "r":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 570
    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 571
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 572
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 573
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    return v0
.end method

.method public layoutIn(Landroid/graphics/Rect;IF)V
    .locals 11
    .param p1, "drawArea"    # Landroid/graphics/Rect;
    .param p2, "refCenter"    # I
    .param p3, "scale"    # F

    .prologue
    .line 586
    iget-object v5, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mTranslationXAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mTranslationXAnimator:Landroid/animation/ValueAnimator;

    .line 587
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 588
    .local v4, "translationX":F
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mLeftPosition:I

    sub-int/2addr v6, p2

    int-to-float v6, v6

    add-float/2addr v6, v4

    mul-float/2addr v6, p3

    add-float/2addr v5, v6

    float-to-int v1, v5

    .line 589
    .local v1, "left":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    mul-float/2addr v6, p3

    sub-float/2addr v5, v6

    float-to-int v3, v5

    .line 590
    .local v3, "top":I
    invoke-direct {p0, v1, v3}, Lcom/android/camera/ui/FilmStripView$ViewItem;->layoutAt(II)V

    .line 591
    iget-object v5, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v5, p3}, Landroid/view/View;->setScaleX(F)V

    .line 592
    iget-object v5, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v5, p3}, Landroid/view/View;->setScaleY(F)V

    .line 595
    iget-object v5, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 596
    .local v0, "l":I
    iget-object v5, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v2

    .line 597
    .local v2, "t":I
    iget-object v5, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mViewArea:Landroid/graphics/RectF;

    int-to-float v6, v0

    int-to-float v7, v2

    int-to-float v8, v0

    iget-object v9, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    .line 598
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, p3

    add-float/2addr v8, v9

    int-to-float v9, v2

    iget-object v10, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    .line 599
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, p3

    add-float/2addr v9, v10

    .line 597
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 600
    return-void

    .line 587
    .end local v0    # "l":I
    .end local v1    # "left":I
    .end local v2    # "t":I
    .end local v3    # "top":I
    .end local v4    # "translationX":F
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method postScale(FFFII)V
    .locals 7
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F
    .param p3, "postScale"    # F
    .param p4, "viewportWidth"    # I
    .param p5, "viewportHeight"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 627
    invoke-virtual {p0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getTranslationX()F

    move-result v1

    .line 628
    .local v1, "transX":F
    invoke-virtual {p0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getTranslationY()F

    move-result v2

    .line 631
    .local v2, "transY":F
    invoke-virtual {p0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getX()F

    move-result v0

    sub-float v0, p1, v0

    sub-float v5, p3, v6

    mul-float/2addr v0, v5

    sub-float/2addr v1, v0

    .line 632
    invoke-virtual {p0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getY()F

    move-result v0

    sub-float v0, p2, v0

    sub-float v5, p3, v6

    mul-float/2addr v0, v5

    sub-float/2addr v2, v0

    .line 633
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    mul-float v3, v0, p3

    .line 634
    .local v3, "scaleX":F
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v0

    mul-float v4, v0, p3

    .local v4, "scaleY":F
    move-object v0, p0

    move v5, p4

    move v6, p5

    .line 635
    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/FilmStripView$ViewItem;->updateTransform(FFFFII)V

    .line 637
    return-void
.end method

.method resetTransform()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 656
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 657
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 658
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 659
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 660
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 463
    iput p1, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mDataId:I

    .line 464
    return-void
.end method

.method public setLeftPosition(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 468
    iput p1, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mLeftPosition:I

    .line 469
    return-void
.end method

.method public setTranslationX(FF)V
    .locals 2
    .param p1, "transX"    # F
    .param p2, "scale"    # F

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    mul-float v1, p1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 517
    return-void
.end method

.method public setTranslationY(FF)V
    .locals 2
    .param p1, "transY"    # F
    .param p2, "scale"    # F

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    mul-float v1, p1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 512
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x2c

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mDataId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\t left = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mLeftPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\t viewArea = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mViewArea:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\t centerX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 666
    invoke-virtual {p0}, Lcom/android/camera/ui/FilmStripView$ViewItem;->getCenterX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\t view MeasuredSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    .line 668
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\t view Size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    .line 669
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\t view scale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    .line 670
    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translateXBy(FF)V
    .locals 3
    .param p1, "transX"    # F
    .param p2, "scale"    # F

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    mul-float v2, p1, p2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 530
    return-void
.end method

.method updateTransform(FFFFII)V
    .locals 6
    .param p1, "transX"    # F
    .param p2, "transY"    # F
    .param p3, "scaleX"    # F
    .param p4, "scaleY"    # F
    .param p5, "viewportWidth"    # I
    .param p6, "viewportHeight"    # I

    .prologue
    .line 641
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    add-float v0, p1, v3

    .line 642
    .local v0, "left":F
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float v2, p2, v3

    .line 643
    .local v2, "top":F
    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    .line 644
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p3

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    .line 645
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p4

    add-float/2addr v5, v2

    invoke-direct {v3, v0, v2, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 643
    invoke-static {v3, p5, p6}, Lcom/android/camera/ui/ZoomView;->adjustToFitInBounds(Landroid/graphics/RectF;II)Landroid/graphics/RectF;

    move-result-object v1

    .line 647
    .local v1, "r":Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v3, p3}, Landroid/view/View;->setScaleX(F)V

    .line 648
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v3, p4}, Landroid/view/View;->setScaleY(F)V

    .line 649
    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float p1, v3, v4

    .line 650
    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float p2, v3, v4

    .line 651
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 652
    iget-object v3, p0, Lcom/android/camera/ui/FilmStripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v3, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 653
    return-void
.end method
