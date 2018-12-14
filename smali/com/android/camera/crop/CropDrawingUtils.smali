.class public abstract Lcom/android/camera/crop/CropDrawingUtils;
.super Ljava/lang/Object;
.source "CropDrawingUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawCropRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 2
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .prologue
    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 51
    .local v0, "p":Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 54
    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 55
    return-void
.end method

.method public static drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V
    .locals 4
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;
    .param p2, "indicatorSize"    # I
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .prologue
    .line 77
    float-to-int v2, p3

    div-int/lit8 v3, p2, 0x2

    sub-int v0, v2, v3

    .line 78
    .local v0, "left":I
    float-to-int v2, p4

    div-int/lit8 v3, p2, 0x2

    sub-int v1, v2, v3

    .line 79
    .local v1, "top":I
    add-int v2, v0, p2

    add-int v3, v1, p2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 80
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 81
    return-void
.end method

.method public static drawIndicators(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/RectF;ZI)V
    .locals 3
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "cropIndicator"    # Landroid/graphics/drawable/Drawable;
    .param p2, "indicatorSize"    # I
    .param p3, "bounds"    # Landroid/graphics/RectF;
    .param p4, "fixedAspect"    # Z
    .param p5, "selection"    # I

    .prologue
    .line 85
    if-nez p5, :cond_8

    const/4 v0, 0x1

    .line 86
    .local v0, "notMoving":Z
    :goto_0
    if-eqz p4, :cond_9

    .line 87
    const/4 v1, 0x3

    if-eq p5, v1, :cond_0

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    invoke-static {p0, p1, p2, v1, v2}, Lcom/android/camera/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    .line 90
    :cond_1
    const/4 v1, 0x6

    if-eq p5, v1, :cond_2

    if-eqz v0, :cond_3

    .line 91
    :cond_2
    iget v1, p3, Landroid/graphics/RectF;->right:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    invoke-static {p0, p1, p2, v1, v2}, Lcom/android/camera/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    .line 93
    :cond_3
    const/16 v1, 0x9

    if-eq p5, v1, :cond_4

    if-eqz v0, :cond_5

    .line 94
    :cond_4
    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0, p1, p2, v1, v2}, Lcom/android/camera/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    .line 96
    :cond_5
    const/16 v1, 0xc

    if-eq p5, v1, :cond_6

    if-eqz v0, :cond_7

    .line 97
    :cond_6
    iget v1, p3, Landroid/graphics/RectF;->right:F

    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0, p1, p2, v1, v2}, Lcom/android/camera/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    .line 113
    :cond_7
    :goto_1
    return-void

    .line 85
    .end local v0    # "notMoving":Z
    :cond_8
    const/4 v0, 0x0

    goto :goto_0

    .line 100
    .restart local v0    # "notMoving":Z
    :cond_9
    and-int/lit8 v1, p5, 0x2

    if-nez v1, :cond_a

    if-eqz v0, :cond_b

    .line 101
    :cond_a
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v2, p3, Landroid/graphics/RectF;->top:F

    invoke-static {p0, p1, p2, v1, v2}, Lcom/android/camera/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    .line 103
    :cond_b
    and-int/lit8 v1, p5, 0x8

    if-nez v1, :cond_c

    if-eqz v0, :cond_d

    .line 104
    :cond_c
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0, p1, p2, v1, v2}, Lcom/android/camera/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    .line 106
    :cond_d
    and-int/lit8 v1, p5, 0x1

    if-nez v1, :cond_e

    if-eqz v0, :cond_f

    .line 107
    :cond_e
    iget v1, p3, Landroid/graphics/RectF;->left:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-static {p0, p1, p2, v1, v2}, Lcom/android/camera/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    .line 109
    :cond_f
    and-int/lit8 v1, p5, 0x4

    if-nez v1, :cond_10

    if-eqz v0, :cond_7

    .line 110
    :cond_10
    iget v1, p3, Landroid/graphics/RectF;->right:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-static {p0, p1, p2, v1, v2}, Lcom/android/camera/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    goto :goto_1
.end method

.method public static drawRuleOfThird(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 17
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .prologue
    .line 31
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 32
    .local v6, "p":Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    const/16 v1, 0x80

    const/16 v3, 0xff

    const/16 v4, 0xff

    const/16 v5, 0xff

    invoke-static {v1, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 35
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v3, 0x40400000    # 3.0f

    div-float v15, v1, v3

    .line 36
    .local v15, "stepX":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/high16 v3, 0x40400000    # 3.0f

    div-float v16, v1, v3

    .line 37
    .local v16, "stepY":F
    move-object/from16 v0, p1

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float v2, v1, v15

    .line 38
    .local v2, "x":F
    move-object/from16 v0, p1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float v9, v1, v16

    .line 39
    .local v9, "y":F
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v13, v1, :cond_0

    .line 40
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v1, p0

    move v4, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 41
    add-float/2addr v2, v15

    .line 39
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 43
    :cond_0
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    const/4 v1, 0x2

    if-ge v14, v1, :cond_1

    .line 44
    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v7, p0

    move v11, v9

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 45
    add-float v9, v9, v16

    .line 43
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 47
    :cond_1
    return-void
.end method

.method public static drawShade(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 8
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .prologue
    const/4 v7, 0x0

    .line 58
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    .line 59
    .local v3, "w":I
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    .line 60
    .local v0, "h":I
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 61
    .local v1, "p":Landroid/graphics/Paint;
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    const/high16 v4, -0x78000000

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 65
    .local v2, "r":Landroid/graphics/RectF;
    int-to-float v4, v3

    iget v5, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 66
    invoke-virtual {p0, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 67
    iget v4, p1, Landroid/graphics/RectF;->top:F

    iget v5, p1, Landroid/graphics/RectF;->left:F

    int-to-float v6, v0

    invoke-virtual {v2, v7, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 68
    invoke-virtual {p0, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 69
    iget v4, p1, Landroid/graphics/RectF;->left:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v3

    int-to-float v7, v0

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 70
    invoke-virtual {p0, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 71
    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    int-to-float v6, v3

    iget v7, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 72
    invoke-virtual {p0, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 73
    return-void
.end method

.method public static drawShadows(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 6
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "p"    # Landroid/graphics/Paint;
    .param p2, "innerBounds"    # Landroid/graphics/RectF;
    .param p3, "outerBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 153
    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->right:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 154
    iget v1, p2, Landroid/graphics/RectF;->right:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    iget v3, p3, Landroid/graphics/RectF;->right:F

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 156
    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    iget v3, p3, Landroid/graphics/RectF;->right:F

    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 158
    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->left:F

    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 159
    return-void
.end method

.method public static drawWallpaperSelectionFrame(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 13
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "cropBounds"    # Landroid/graphics/RectF;
    .param p2, "spotX"    # F
    .param p3, "spotY"    # F
    .param p4, "p"    # Landroid/graphics/Paint;
    .param p5, "shadowPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v9

    mul-float v6, v9, p2

    .line 118
    .local v6, "sx":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v9

    mul-float v7, v9, p3

    .line 119
    .local v7, "sy":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    .line 120
    .local v1, "cx":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    .line 121
    .local v2, "cy":F
    new-instance v4, Landroid/graphics/RectF;

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v6, v9

    sub-float v9, v1, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v7, v10

    sub-float v10, v2, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v6, v11

    add-float/2addr v11, v1

    const/high16 v12, 0x40000000    # 2.0f

    div-float v12, v7, v12

    add-float/2addr v12, v2

    invoke-direct {v4, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 122
    .local v4, "r1":Landroid/graphics/RectF;
    move v8, v6

    .line 123
    .local v8, "temp":F
    move v6, v7

    .line 124
    move v7, v8

    .line 125
    new-instance v5, Landroid/graphics/RectF;

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v6, v9

    sub-float v9, v1, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v7, v10

    sub-float v10, v2, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v6, v11

    add-float/2addr v11, v1

    const/high16 v12, 0x40000000    # 2.0f

    div-float v12, v7, v12

    add-float/2addr v12, v2

    invoke-direct {v5, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 126
    .local v5, "r2":Landroid/graphics/RectF;
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 127
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 128
    sget-object v9, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p0, v4, v9}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 129
    sget-object v9, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p0, v5, v9}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 130
    move-object/from16 v0, p5

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 131
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 132
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 133
    .local v3, "path":Landroid/graphics/Path;
    iget v9, v4, Landroid/graphics/RectF;->left:F

    iget v10, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 134
    iget v9, v4, Landroid/graphics/RectF;->right:F

    iget v10, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 135
    iget v9, v4, Landroid/graphics/RectF;->left:F

    iget v10, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 136
    iget v9, v4, Landroid/graphics/RectF;->left:F

    iget v10, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 137
    iget v9, v4, Landroid/graphics/RectF;->left:F

    iget v10, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 138
    iget v9, v4, Landroid/graphics/RectF;->right:F

    iget v10, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 139
    iget v9, v4, Landroid/graphics/RectF;->right:F

    iget v10, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 140
    iget v9, v4, Landroid/graphics/RectF;->right:F

    iget v10, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 141
    iget v9, v5, Landroid/graphics/RectF;->left:F

    iget v10, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 142
    iget v9, v5, Landroid/graphics/RectF;->right:F

    iget v10, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 143
    iget v9, v5, Landroid/graphics/RectF;->right:F

    iget v10, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 144
    iget v9, v5, Landroid/graphics/RectF;->right:F

    iget v10, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 145
    iget v9, v5, Landroid/graphics/RectF;->left:F

    iget v10, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 146
    iget v9, v5, Landroid/graphics/RectF;->right:F

    iget v10, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 147
    iget v9, v5, Landroid/graphics/RectF;->left:F

    iget v10, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 148
    iget v9, v5, Landroid/graphics/RectF;->left:F

    iget v10, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 149
    move-object/from16 v0, p4

    invoke-virtual {p0, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 150
    return-void
.end method

.method public static getBitmapToDisplayMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "imageBounds"    # Landroid/graphics/RectF;
    .param p1, "displayBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 162
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 163
    .local v0, "m":Landroid/graphics/Matrix;
    invoke-static {v0, p0, p1}, Lcom/android/camera/crop/CropDrawingUtils;->setBitmapToDisplayMatrix(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 164
    return-object v0
.end method

.method public static setBitmapToDisplayMatrix(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 1
    .param p0, "m"    # Landroid/graphics/Matrix;
    .param p1, "imageBounds"    # Landroid/graphics/RectF;
    .param p2, "displayBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/graphics/Matrix;->reset()V

    .line 170
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    move-result v0

    return v0
.end method

.method public static setImageToScreenMatrix(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;I)Z
    .locals 7
    .param p0, "dst"    # Landroid/graphics/Matrix;
    .param p1, "image"    # Landroid/graphics/RectF;
    .param p2, "screen"    # Landroid/graphics/RectF;
    .param p3, "rotation"    # I

    .prologue
    const/4 v3, 0x0

    .line 175
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 176
    .local v2, "rotatedImage":Landroid/graphics/RectF;
    int-to-float v4, p3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual {p0, v4, v5, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 177
    invoke-virtual {p0, v2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v3

    .line 181
    :cond_1
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p0, v2, p2, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    move-result v0

    .line 182
    .local v0, "rToR":Z
    int-to-float v4, p3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual {p0, v4, v5, v6}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    move-result v1

    .line 183
    .local v1, "rot":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method
