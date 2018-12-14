.class public Lcom/android/camera/crop/CropMath;
.super Ljava/lang/Object;
.source "CropMath.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closestSide([F[F)[F
    .locals 8
    .param p0, "point"    # [F
    .param p1, "corners"    # [F

    .prologue
    .line 112
    array-length v2, p1

    .line 113
    .local v2, "len":I
    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 114
    .local v5, "oldMag":F
    const/4 v0, 0x0

    .line 115
    .local v0, "bestLine":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 116
    const/4 v6, 0x4

    new-array v3, v6, [F

    const/4 v6, 0x0

    aget v7, p1, v1

    aput v7, v3, v6

    const/4 v6, 0x1

    add-int/lit8 v7, v1, 0x1

    rem-int/2addr v7, v2

    aget v7, p1, v7

    aput v7, v3, v6

    const/4 v6, 0x2

    add-int/lit8 v7, v1, 0x2

    rem-int/2addr v7, v2

    aget v7, p1, v7

    aput v7, v3, v6

    const/4 v6, 0x3

    add-int/lit8 v7, v1, 0x3

    rem-int/2addr v7, v2

    aget v7, p1, v7

    aput v7, v3, v6

    .line 121
    .local v3, "line":[F
    invoke-static {p0, v3}, Lcom/android/camera/crop/GeometryMathUtils;->shortestVectorFromPointToLine([F[F)[F

    move-result-object v6

    .line 120
    invoke-static {v6}, Lcom/android/camera/crop/GeometryMathUtils;->vectorLength([F)F

    move-result v4

    .line 122
    .local v4, "mag":F
    cmpg-float v6, v4, v5

    if-gez v6, :cond_0

    .line 123
    move v5, v4

    .line 124
    move-object v0, v3

    .line 115
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 127
    .end local v3    # "line":[F
    .end local v4    # "mag":F
    :cond_1
    return-object v0
.end method

.method public static constrainedRotation(F)I
    .locals 3
    .param p0, "rotation"    # F

    .prologue
    .line 241
    const/high16 v1, 0x43b40000    # 360.0f

    rem-float v1, p0, v1

    const/high16 v2, 0x42b40000    # 90.0f

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 242
    .local v0, "r":I
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 243
    :cond_0
    mul-int/lit8 v1, v0, 0x5a

    return v1
.end method

.method public static fixAspectRatio(Landroid/graphics/RectF;FF)V
    .locals 9
    .param p0, "r"    # Landroid/graphics/RectF;
    .param p1, "w"    # F
    .param p2, "h"    # F

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 172
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, p1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, p2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 173
    .local v4, "scale":F
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 174
    .local v0, "centX":F
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 175
    .local v1, "centY":F
    mul-float v5, v4, p1

    div-float v3, v5, v7

    .line 176
    .local v3, "hw":F
    mul-float v5, v4, p2

    div-float v2, v5, v7

    .line 177
    .local v2, "hh":F
    sub-float v5, v0, v3

    sub-float v6, v1, v2

    add-float v7, v0, v3

    add-float v8, v1, v2

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 178
    return-void
.end method

.method public static fixAspectRatioContained(Landroid/graphics/RectF;FF)V
    .locals 8
    .param p0, "r"    # Landroid/graphics/RectF;
    .param p1, "w"    # F
    .param p2, "h"    # F

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 189
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v5

    .line 190
    .local v5, "origW":F
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v4

    .line 191
    .local v4, "origH":F
    div-float v3, v5, v4

    .line 192
    .local v3, "origA":F
    div-float v0, p1, p2

    .line 193
    .local v0, "a":F
    move v2, v5

    .line 194
    .local v2, "finalW":F
    move v1, v4

    .line 195
    .local v1, "finalH":F
    cmpg-float v6, v3, v0

    if-gez v6, :cond_0

    .line 196
    div-float v1, v5, v0

    .line 197
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    div-float v7, v1, v7

    sub-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->top:F

    .line 198
    iget v6, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v1

    iput v6, p0, Landroid/graphics/RectF;->bottom:F

    .line 204
    :goto_0
    return-void

    .line 200
    :cond_0
    mul-float v2, v4, v0

    .line 201
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    div-float v7, v2, v7

    sub-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->left:F

    .line 202
    iget v6, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v2

    iput v6, p0, Landroid/graphics/RectF;->right:F

    goto :goto_0
.end method

.method public static getBitmapSize(Landroid/graphics/Bitmap;)I
    .locals 2
    .param p0, "bmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 232
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public static getCornersFromRect(Landroid/graphics/RectF;)[F
    .locals 3
    .param p0, "r"    # Landroid/graphics/RectF;

    .prologue
    .line 41
    const/16 v1, 0x8

    new-array v0, v1, [F

    const/4 v1, 0x0

    iget v2, p0, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Landroid/graphics/RectF;->right:F

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Landroid/graphics/RectF;->right:F

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    .line 47
    .local v0, "corners":[F
    return-object v0
.end method

.method public static getEdgePoints(Landroid/graphics/RectF;[F)V
    .locals 5
    .param p0, "imageBound"    # Landroid/graphics/RectF;
    .param p1, "array"    # [F

    .prologue
    .line 95
    array-length v1, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 101
    :cond_0
    return-void

    .line 97
    :cond_1
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 98
    aget v1, p1, v0

    iget v2, p0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v1, v2, v3}, Lcom/android/camera/crop/GeometryMathUtils;->clamp(FFF)F

    move-result v1

    aput v1, p1, v0

    .line 99
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    iget v3, p0, Landroid/graphics/RectF;->top:F

    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2, v3, v4}, Lcom/android/camera/crop/GeometryMathUtils;->clamp(FFF)F

    move-result v2

    aput v2, p1, v1

    .line 97
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public static getScaledCropBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3
    .param p0, "cropBounds"    # Landroid/graphics/RectF;
    .param p1, "photoBounds"    # Landroid/graphics/RectF;
    .param p2, "displayBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 217
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 218
    .local v0, "m":Landroid/graphics/Matrix;
    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, p1, p2, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 219
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 220
    .local v1, "trueCrop":Landroid/graphics/RectF;
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 221
    const/4 v1, 0x0

    .line 223
    .end local v1    # "trueCrop":Landroid/graphics/RectF;
    :cond_0
    return-object v1
.end method

.method private static getUnrotated([F[FLandroid/graphics/RectF;)F
    .locals 12
    .param p0, "rotatedRect"    # [F
    .param p1, "center"    # [F
    .param p2, "unrotated"    # Landroid/graphics/RectF;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 247
    aget v5, p0, v11

    const/4 v6, 0x3

    aget v6, p0, v6

    sub-float v2, v5, v6

    .line 248
    .local v2, "dy":F
    aget v5, p0, v10

    const/4 v6, 0x2

    aget v6, p0, v6

    sub-float v1, v5, v6

    .line 249
    .local v1, "dx":F
    div-float v5, v2, v1

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v8

    double-to-float v0, v6

    .line 250
    .local v0, "angle":F
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 251
    .local v3, "m":Landroid/graphics/Matrix;
    neg-float v5, v0

    aget v6, p1, v10

    aget v7, p1, v11

    invoke-virtual {v3, v5, v6, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 252
    array-length v5, p0

    new-array v4, v5, [F

    .line 253
    .local v4, "unrotatedRect":[F
    invoke-virtual {v3, v4, p0}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 254
    invoke-static {v4}, Lcom/android/camera/crop/CropMath;->trapToRect([F)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 255
    return v0
.end method

.method public static inclusiveContains(Landroid/graphics/RectF;FF)Z
    .locals 1
    .param p0, "r"    # Landroid/graphics/RectF;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 61
    iget v0, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static pointInRotatedRect([FLandroid/graphics/RectF;F)Z
    .locals 6
    .param p0, "point"    # [F
    .param p1, "bound"    # Landroid/graphics/RectF;
    .param p2, "rot"    # F

    .prologue
    const/4 v3, 0x0

    .line 139
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 140
    .local v0, "m":Landroid/graphics/Matrix;
    const/4 v4, 0x2

    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 141
    .local v2, "p":[F
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v0, p2, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 142
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 143
    .local v1, "m0":Landroid/graphics/Matrix;
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 146
    :goto_0
    return v3

    .line 145
    :cond_0
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 146
    aget v3, v2, v3

    const/4 v4, 0x1

    aget v4, v2, v4

    invoke-static {p1, v3, v4}, Lcom/android/camera/crop/CropMath;->inclusiveContains(Landroid/graphics/RectF;FF)Z

    move-result v3

    goto :goto_0
.end method

.method public static pointInRotatedRect([F[F[F)Z
    .locals 3
    .param p0, "point"    # [F
    .param p1, "rotatedRect"    # [F
    .param p2, "center"    # [F

    .prologue
    .line 158
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 159
    .local v1, "unrotated":Landroid/graphics/RectF;
    invoke-static {p1, p2, v1}, Lcom/android/camera/crop/CropMath;->getUnrotated([F[FLandroid/graphics/RectF;)F

    move-result v0

    .line 160
    .local v0, "angle":F
    invoke-static {p0, v1, v0}, Lcom/android/camera/crop/CropMath;->pointInRotatedRect([FLandroid/graphics/RectF;F)Z

    move-result v2

    return v2
.end method

.method public static trapToRect([F)Landroid/graphics/RectF;
    .locals 6
    .param p0, "array"    # [F

    .prologue
    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v4, -0x800000    # Float.NEGATIVE_INFINITY

    .line 72
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v5, v5, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 74
    .local v1, "r":Landroid/graphics/RectF;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_4

    .line 75
    add-int/lit8 v4, v0, -0x1

    aget v2, p0, v4

    .line 76
    .local v2, "x":F
    aget v3, p0, v0

    .line 77
    .local v3, "y":F
    iget v4, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    move v4, v2

    :goto_1
    iput v4, v1, Landroid/graphics/RectF;->left:F

    .line 78
    iget v4, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_1

    move v4, v3

    :goto_2
    iput v4, v1, Landroid/graphics/RectF;->top:F

    .line 79
    iget v4, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    .end local v2    # "x":F
    :goto_3
    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 80
    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_3

    .end local v3    # "y":F
    :goto_4
    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    .line 74
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 77
    .restart local v2    # "x":F
    .restart local v3    # "y":F
    :cond_0
    iget v4, v1, Landroid/graphics/RectF;->left:F

    goto :goto_1

    .line 78
    :cond_1
    iget v4, v1, Landroid/graphics/RectF;->top:F

    goto :goto_2

    .line 79
    :cond_2
    iget v2, v1, Landroid/graphics/RectF;->right:F

    goto :goto_3

    .line 80
    .end local v2    # "x":F
    :cond_3
    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_4

    .line 82
    .end local v3    # "y":F
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/RectF;->sort()V

    .line 83
    return-object v1
.end method
