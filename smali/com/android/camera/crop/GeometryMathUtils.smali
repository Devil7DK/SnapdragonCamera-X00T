.class public final Lcom/android/camera/crop/GeometryMathUtils;
.super Ljava/lang/Object;
.source "GeometryMathUtils.java"


# static fields
.field public static final SHOW_SCALE:F = 0.9f

.field private static final TAG:Ljava/lang/String; = "GeometryMathUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clamp(FFF)F
    .locals 1
    .param p0, "i"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .prologue
    .line 50
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static dotProduct([F[F)F
    .locals 3
    .param p0, "a"    # [F
    .param p1, "b"    # [F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 101
    aget v0, p0, v1

    aget v1, p1, v1

    mul-float/2addr v0, v1

    aget v1, p0, v2

    aget v2, p1, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private static getRotationForOrientation(I)I
    .locals 1
    .param p0, "orientation"    # I

    .prologue
    .line 169
    packed-switch p0, :pswitch_data_0

    .line 177
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 171
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 173
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 175
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getUnitVectorFromPoints([F[F)[F
    .locals 7
    .param p0, "point1"    # [F
    .param p1, "point2"    # [F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 126
    const/4 v2, 0x2

    new-array v1, v2, [F

    aget v2, p1, v5

    aget v3, p0, v5

    sub-float/2addr v2, v3

    aput v2, v1, v5

    aget v2, p1, v6

    aget v3, p0, v6

    sub-float/2addr v2, v3

    aput v2, v1, v6

    .line 129
    .local v1, "p":[F
    aget v2, v1, v5

    aget v3, v1, v5

    mul-float/2addr v2, v3

    aget v3, v1, v6

    aget v4, v1, v6

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 130
    .local v0, "length":F
    aget v2, v1, v5

    div-float/2addr v2, v0

    aput v2, v1, v5

    .line 131
    aget v2, v1, v6

    div-float/2addr v2, v0

    aput v2, v1, v6

    .line 132
    return-object v1
.end method

.method public static getVectorFromPoints([F[F)[F
    .locals 5
    .param p0, "point1"    # [F
    .param p1, "point2"    # [F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 119
    const/4 v1, 0x2

    new-array v0, v1, [F

    aget v1, p1, v3

    aget v2, p0, v3

    sub-float/2addr v1, v2

    aput v1, v0, v3

    aget v1, p1, v4

    aget v2, p0, v4

    sub-float/2addr v1, v2

    aput v1, v0, v4

    .line 122
    .local v0, "p":[F
    return-object v0
.end method

.method public static lineIntersect([F[F)[F
    .locals 20
    .param p0, "line1"    # [F
    .param p1, "line2"    # [F

    .prologue
    .line 54
    const/16 v18, 0x0

    aget v1, p0, v18

    .line 55
    .local v1, "a0":F
    const/16 v18, 0x1

    aget v2, p0, v18

    .line 56
    .local v2, "a1":F
    const/16 v18, 0x2

    aget v3, p0, v18

    .line 57
    .local v3, "b0":F
    const/16 v18, 0x3

    aget v4, p0, v18

    .line 58
    .local v4, "b1":F
    const/16 v18, 0x0

    aget v5, p1, v18

    .line 59
    .local v5, "c0":F
    const/16 v18, 0x1

    aget v6, p1, v18

    .line 60
    .local v6, "c1":F
    const/16 v18, 0x2

    aget v7, p1, v18

    .line 61
    .local v7, "d0":F
    const/16 v18, 0x3

    aget v8, p1, v18

    .line 62
    .local v8, "d1":F
    sub-float v11, v1, v3

    .line 63
    .local v11, "t0":F
    sub-float v12, v2, v4

    .line 64
    .local v12, "t1":F
    sub-float v13, v3, v7

    .line 65
    .local v13, "t2":F
    sub-float v14, v8, v4

    .line 66
    .local v14, "t3":F
    sub-float v15, v5, v7

    .line 67
    .local v15, "t4":F
    sub-float v16, v6, v8

    .line 69
    .local v16, "t5":F
    mul-float v18, v12, v15

    mul-float v19, v11, v16

    sub-float v9, v18, v19

    .line 70
    .local v9, "denom":F
    const/16 v18, 0x0

    cmpl-float v18, v9, v18

    if-nez v18, :cond_0

    .line 71
    const/4 v10, 0x0

    .line 76
    :goto_0
    return-object v10

    .line 72
    :cond_0
    mul-float v18, v14, v15

    mul-float v19, v16, v13

    add-float v18, v18, v19

    div-float v17, v18, v9

    .line 73
    .local v17, "u":F
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v10, v0, [F

    const/16 v18, 0x0

    mul-float v19, v17, v11

    add-float v19, v19, v3

    aput v19, v10, v18

    const/16 v18, 0x1

    mul-float v19, v17, v12

    add-float v19, v19, v4

    aput v19, v10, v18

    .line 76
    .local v10, "intersect":[F
    goto :goto_0
.end method

.method public static normalize([F)[F
    .locals 7
    .param p0, "a"    # [F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 105
    aget v2, p0, v5

    aget v3, p0, v5

    mul-float/2addr v2, v3

    aget v3, p0, v6

    aget v4, p0, v6

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 106
    .local v1, "length":F
    const/4 v2, 0x2

    new-array v0, v2, [F

    aget v2, p0, v5

    div-float/2addr v2, v1

    aput v2, v0, v5

    aget v2, p0, v6

    div-float/2addr v2, v1

    aput v2, v0, v6

    .line 109
    .local v0, "b":[F
    return-object v0
.end method

.method public static roundNearest(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 5
    .param p0, "r"    # Landroid/graphics/RectF;

    .prologue
    .line 163
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    .line 164
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 165
    .local v0, "q":Landroid/graphics/Rect;
    return-object v0
.end method

.method public static scalarProjection([F[F)F
    .locals 4
    .param p0, "a"    # [F
    .param p1, "b"    # [F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 114
    aget v1, p1, v2

    aget v2, p1, v2

    mul-float/2addr v1, v2

    aget v2, p1, v3

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 115
    .local v0, "length":F
    invoke-static {p0, p1}, Lcom/android/camera/crop/GeometryMathUtils;->dotProduct([F[F)F

    move-result v1

    div-float/2addr v1, v0

    return v1
.end method

.method public static scale(FFFF)F
    .locals 2
    .param p0, "oldWidth"    # F
    .param p1, "oldHeight"    # F
    .param p2, "newWidth"    # F
    .param p3, "newHeight"    # F

    .prologue
    const/4 v1, 0x0

    .line 156
    cmpl-float v0, p1, v1

    if-eqz v0, :cond_0

    cmpl-float v0, p0, v1

    if-eqz v0, :cond_0

    cmpl-float v0, p0, p2

    if-nez v0, :cond_1

    cmpl-float v0, p1, p3

    if-nez v0, :cond_1

    .line 157
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 159
    :goto_0
    return v0

    :cond_1
    div-float v0, p2, p0

    div-float v1, p3, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method public static scaleRect(Landroid/graphics/RectF;F)V
    .locals 4
    .param p0, "r"    # Landroid/graphics/RectF;
    .param p1, "scale"    # F

    .prologue
    .line 136
    iget v0, p0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, p1

    iget v1, p0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v1, p1

    iget v2, p0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v2, p1

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v3, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 137
    return-void
.end method

.method public static shortestVectorFromPointToLine([F[F)[F
    .locals 12
    .param p0, "point"    # [F
    .param p1, "line"    # [F

    .prologue
    .line 80
    const/4 v9, 0x0

    aget v3, p1, v9

    .line 81
    .local v3, "x1":F
    const/4 v9, 0x2

    aget v4, p1, v9

    .line 82
    .local v4, "x2":F
    const/4 v9, 0x1

    aget v6, p1, v9

    .line 83
    .local v6, "y1":F
    const/4 v9, 0x3

    aget v7, p1, v9

    .line 84
    .local v7, "y2":F
    sub-float v5, v4, v3

    .line 85
    .local v5, "xdelt":F
    sub-float v8, v7, v6

    .line 86
    .local v8, "ydelt":F
    const/4 v9, 0x0

    cmpl-float v9, v5, v9

    if-nez v9, :cond_0

    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    if-nez v9, :cond_0

    .line 87
    const/4 v2, 0x0

    .line 96
    :goto_0
    return-object v2

    .line 88
    :cond_0
    const/4 v9, 0x0

    aget v9, p0, v9

    sub-float/2addr v9, v3

    mul-float/2addr v9, v5

    const/4 v10, 0x1

    aget v10, p0, v10

    sub-float/2addr v10, v6

    mul-float/2addr v10, v8

    add-float/2addr v9, v10

    mul-float v10, v5, v5

    mul-float v11, v8, v8

    add-float/2addr v10, v11

    div-float v1, v9, v10

    .line 90
    .local v1, "u":F
    const/4 v9, 0x2

    new-array v0, v9, [F

    const/4 v9, 0x0

    sub-float v10, v4, v3

    mul-float/2addr v10, v1

    add-float/2addr v10, v3

    aput v10, v0, v9

    const/4 v9, 0x1

    sub-float v10, v7, v6

    mul-float/2addr v10, v1

    add-float/2addr v10, v6

    aput v10, v0, v9

    .line 93
    .local v0, "ret":[F
    const/4 v9, 0x2

    new-array v2, v9, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v0, v10

    const/4 v11, 0x0

    aget v11, p0, v11

    sub-float/2addr v10, v11

    aput v10, v2, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v0, v10

    const/4 v11, 0x1

    aget v11, p0, v11

    sub-float/2addr v10, v11

    aput v10, v2, v9

    .line 96
    .local v2, "vec":[F
    goto :goto_0
.end method

.method public static vectorLength([F)F
    .locals 3
    .param p0, "a"    # [F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 152
    aget v0, p0, v1

    aget v1, p0, v1

    mul-float/2addr v0, v1

    aget v1, p0, v2

    aget v2, p0, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static vectorSubtract([F[F)[F
    .locals 5
    .param p0, "a"    # [F
    .param p1, "b"    # [F

    .prologue
    .line 141
    array-length v1, p0

    .line 142
    .local v1, "len":I
    array-length v3, p1

    if-eq v1, v3, :cond_1

    .line 143
    const/4 v2, 0x0

    .line 148
    :cond_0
    return-object v2

    .line 144
    :cond_1
    new-array v2, v1, [F

    .line 145
    .local v2, "ret":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 146
    aget v3, p0, v0

    aget v4, p1, v0

    sub-float/2addr v3, v4

    aput v3, v2, v0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
