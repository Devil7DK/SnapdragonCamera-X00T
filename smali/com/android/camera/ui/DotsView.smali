.class public Lcom/android/camera/ui/DotsView;
.super Landroid/view/View;
.source "DotsView.java"


# instance fields
.field private mItems:Lcom/android/camera/ui/DotsViewItem;

.field private mPosition:I

.field private mPositionOffset:F

.field private mTargetPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/DotsView;->mTargetPaint:Landroid/graphics/Paint;

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/DotsView;->mTargetPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/DotsView;->mTargetPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    return-void
.end method

.method private drawDot(Landroid/graphics/Canvas;FFFZ)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cx"    # F
    .param p3, "cy"    # F
    .param p4, "radius"    # F
    .param p5, "isChosen"    # Z

    .prologue
    .line 90
    if-eqz p5, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/DotsView;->mTargetPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/DotsView;->mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 97
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/DotsView;->mTargetPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    iget-object v0, p0, Lcom/android/camera/ui/DotsView;->mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x0

    .line 68
    iget-object v0, p0, Lcom/android/camera/ui/DotsView;->mItems:Lcom/android/camera/ui/DotsViewItem;

    if-nez v0, :cond_1

    .line 87
    :cond_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/DotsView;->mItems:Lcom/android/camera/ui/DotsViewItem;

    invoke-interface {v1}, Lcom/android/camera/ui/DotsViewItem;->getTotalItemNums()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    div-int v6, v0, v1

    .line 73
    .local v6, "dx":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/DotsView;->mItems:Lcom/android/camera/ui/DotsViewItem;

    invoke-interface {v1}, Lcom/android/camera/ui/DotsViewItem;->getTotalItemNums()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    div-int v7, v0, v1

    .line 74
    .local v7, "dy":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    div-int/lit8 v10, v0, 0x2

    .line 75
    .local v10, "y":I
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v9, v0, v1

    .line 76
    .local v9, "radius":F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/DotsView;->mItems:Lcom/android/camera/ui/DotsViewItem;

    invoke-interface {v0}, Lcom/android/camera/ui/DotsViewItem;->getTotalItemNums()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 77
    add-int/lit8 v0, v8, -0x1

    iget v1, p0, Lcom/android/camera/ui/DotsView;->mPosition:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/ui/DotsView;->mPositionOffset:F

    cmpl-float v0, v0, v11

    if-lez v0, :cond_2

    .line 78
    add-int/lit8 v0, v8, 0x1

    mul-int/2addr v0, v6

    int-to-float v2, v0

    int-to-float v3, v10

    iget v0, p0, Lcom/android/camera/ui/DotsView;->mPositionOffset:F

    mul-float/2addr v0, v9

    add-float v4, v9, v0

    iget-object v0, p0, Lcom/android/camera/ui/DotsView;->mItems:Lcom/android/camera/ui/DotsViewItem;

    invoke-interface {v0, v8}, Lcom/android/camera/ui/DotsViewItem;->isChosen(I)Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/DotsView;->drawDot(Landroid/graphics/Canvas;FFFZ)V

    .line 76
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 79
    :cond_2
    add-int/lit8 v0, v8, 0x1

    iget v1, p0, Lcom/android/camera/ui/DotsView;->mPosition:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/camera/ui/DotsView;->mPositionOffset:F

    cmpg-float v0, v0, v11

    if-gez v0, :cond_3

    .line 80
    add-int/lit8 v0, v8, 0x1

    mul-int/2addr v0, v6

    int-to-float v2, v0

    int-to-float v3, v10

    iget v0, p0, Lcom/android/camera/ui/DotsView;->mPositionOffset:F

    mul-float/2addr v0, v9

    sub-float v4, v9, v0

    iget-object v0, p0, Lcom/android/camera/ui/DotsView;->mItems:Lcom/android/camera/ui/DotsViewItem;

    invoke-interface {v0, v8}, Lcom/android/camera/ui/DotsViewItem;->isChosen(I)Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/DotsView;->drawDot(Landroid/graphics/Canvas;FFFZ)V

    goto :goto_1

    .line 81
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/DotsView;->mPosition:I

    if-ne v8, v0, :cond_4

    .line 82
    add-int/lit8 v0, v8, 0x1

    mul-int/2addr v0, v6

    int-to-float v2, v0

    int-to-float v3, v10

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/android/camera/ui/DotsView;->mPositionOffset:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, v9

    add-float v4, v9, v0

    iget-object v0, p0, Lcom/android/camera/ui/DotsView;->mItems:Lcom/android/camera/ui/DotsViewItem;

    invoke-interface {v0, v8}, Lcom/android/camera/ui/DotsViewItem;->isChosen(I)Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/DotsView;->drawDot(Landroid/graphics/Canvas;FFFZ)V

    goto :goto_1

    .line 84
    :cond_4
    add-int/lit8 v0, v8, 0x1

    mul-int/2addr v0, v6

    int-to-float v2, v0

    int-to-float v3, v10

    iget-object v0, p0, Lcom/android/camera/ui/DotsView;->mItems:Lcom/android/camera/ui/DotsViewItem;

    invoke-interface {v0, v8}, Lcom/android/camera/ui/DotsViewItem;->isChosen(I)Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/DotsView;->drawDot(Landroid/graphics/Canvas;FFFZ)V

    goto :goto_1
.end method

.method public setItems(Lcom/android/camera/ui/DotsViewItem;)V
    .locals 0
    .param p1, "item"    # Lcom/android/camera/ui/DotsViewItem;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/camera/ui/DotsView;->mItems:Lcom/android/camera/ui/DotsViewItem;

    .line 60
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/camera/ui/DotsView;->invalidate()V

    .line 64
    return-void
.end method

.method public update(IF)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffest"    # F

    .prologue
    .line 53
    iput p1, p0, Lcom/android/camera/ui/DotsView;->mPosition:I

    .line 54
    iput p2, p0, Lcom/android/camera/ui/DotsView;->mPositionOffset:F

    .line 55
    invoke-virtual {p0}, Lcom/android/camera/ui/DotsView;->invalidate()V

    .line 56
    return-void
.end method
