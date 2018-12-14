.class public Lcom/android/camera/RefocusActivity$Indicator;
.super Landroid/widget/FrameLayout;
.source "RefocusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/RefocusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Indicator"
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mColor1:I

.field private mColor2:I

.field private mCrossLength:F

.field private mPaint:Landroid/graphics/Paint;

.field private mStrokeWidth:F

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    .line 388
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 389
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 391
    .local v9, "res":Landroid/content/res/Resources;
    const v10, 0x7f0c008e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v6, v10

    .line 392
    .local v6, "r1":F
    const v10, 0x7f0c008f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v7, v10

    .line 393
    .local v7, "r2":F
    const v10, 0x7f0c0090

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v8, v10

    .line 394
    .local v8, "r3":F
    const v10, 0x7f0c0091

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    iput v10, p0, Lcom/android/camera/RefocusActivity$Indicator;->mCrossLength:F

    .line 395
    const v10, 0x7f0c0092

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    iput v10, p0, Lcom/android/camera/RefocusActivity$Indicator;->mStrokeWidth:F

    .line 396
    const v10, 0x7f0a002d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    iput v10, p0, Lcom/android/camera/RefocusActivity$Indicator;->mColor1:I

    .line 397
    const v10, 0x7f0a002e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    iput v10, p0, Lcom/android/camera/RefocusActivity$Indicator;->mColor2:I

    .line 399
    const/4 v10, 0x0

    invoke-static {v10, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    .line 400
    .local v1, "k0":Landroid/animation/Keyframe;
    const v10, 0x3ed55555

    invoke-static {v10, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    .line 401
    .local v2, "k1":Landroid/animation/Keyframe;
    const/high16 v10, 0x3f000000    # 0.5f

    invoke-static {v10, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    .line 402
    .local v3, "k2":Landroid/animation/Keyframe;
    const/high16 v10, 0x3f400000    # 0.75f

    invoke-static {v10, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    .line 403
    .local v4, "k3":Landroid/animation/Keyframe;
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    .line 404
    .local v5, "k4":Landroid/animation/Keyframe;
    const-string v10, "radius"

    const/4 v11, 0x5

    new-array v11, v11, [Landroid/animation/Keyframe;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    const/4 v12, 0x1

    aput-object v2, v11, v12

    const/4 v12, 0x2

    aput-object v3, v11, v12

    const/4 v12, 0x3

    aput-object v4, v11, v12

    const/4 v12, 0x4

    aput-object v5, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 406
    .local v0, "holder":Landroid/animation/PropertyValuesHolder;
    const/4 v10, 0x1

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/RefocusActivity$Indicator;->mAnimator:Landroid/animation/ValueAnimator;

    .line 408
    new-instance v10, Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, p0, Lcom/android/camera/RefocusActivity$Indicator;->mPaint:Landroid/graphics/Paint;

    .line 409
    iget-object v10, p0, Lcom/android/camera/RefocusActivity$Indicator;->mPaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 410
    iget-object v10, p0, Lcom/android/camera/RefocusActivity$Indicator;->mPaint:Landroid/graphics/Paint;

    const v11, 0x7f0c0092

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 411
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v1, p0, Lcom/android/camera/RefocusActivity$Indicator;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    iget v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mColor1:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 418
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 419
    iget v1, p0, Lcom/android/camera/RefocusActivity$Indicator;->mX:F

    iget v2, p0, Lcom/android/camera/RefocusActivity$Indicator;->mY:F

    iget-object v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v3, p0, Lcom/android/camera/RefocusActivity$Indicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 420
    iget v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mX:F

    iget v1, p0, Lcom/android/camera/RefocusActivity$Indicator;->mCrossLength:F

    sub-float v1, v0, v1

    iget v2, p0, Lcom/android/camera/RefocusActivity$Indicator;->mY:F

    iget v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mX:F

    iget v3, p0, Lcom/android/camera/RefocusActivity$Indicator;->mCrossLength:F

    add-float/2addr v3, v0

    iget v4, p0, Lcom/android/camera/RefocusActivity$Indicator;->mY:F

    iget-object v5, p0, Lcom/android/camera/RefocusActivity$Indicator;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 421
    iget v1, p0, Lcom/android/camera/RefocusActivity$Indicator;->mX:F

    iget v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mY:F

    iget v2, p0, Lcom/android/camera/RefocusActivity$Indicator;->mCrossLength:F

    sub-float v2, v0, v2

    iget v3, p0, Lcom/android/camera/RefocusActivity$Indicator;->mX:F

    iget v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mY:F

    iget v4, p0, Lcom/android/camera/RefocusActivity$Indicator;->mCrossLength:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/camera/RefocusActivity$Indicator;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 423
    :cond_0
    return-void

    .line 416
    :cond_1
    iget v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mColor2:I

    goto :goto_0
.end method

.method public startAnimation(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 426
    iput p1, p0, Lcom/android/camera/RefocusActivity$Indicator;->mX:F

    .line 427
    iput p2, p0, Lcom/android/camera/RefocusActivity$Indicator;->mY:F

    .line 429
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x2d0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 434
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 435
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/RefocusActivity$Indicator$1;

    invoke-direct {v1, p0}, Lcom/android/camera/RefocusActivity$Indicator$1;-><init>(Lcom/android/camera/RefocusActivity$Indicator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 441
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 442
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/RefocusActivity$Indicator$2;

    invoke-direct {v1, p0}, Lcom/android/camera/RefocusActivity$Indicator$2;-><init>(Lcom/android/camera/RefocusActivity$Indicator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 462
    iget-object v0, p0, Lcom/android/camera/RefocusActivity$Indicator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 463
    return-void
.end method
