.class public Lcom/android/camera/ui/Arrows;
.super Landroid/view/View;
.source "Arrows.java"


# static fields
.field private static final ARROW_COLOR:I = -0x1

.field private static final ARROW_END_DEGREE:D = 15.0

.field private static final ARROW_END_LENGTH:I = 0x32


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/Arrows;->mPaths:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/Arrows;->mPaint:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Lcom/android/camera/ui/Arrows;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v0, p0, Lcom/android/camera/ui/Arrows;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/Arrows;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    return-void
.end method


# virtual methods
.method public addPath([F[F)V
    .locals 12
    .param p1, "x"    # [F
    .param p2, "y"    # [F

    .prologue
    const/4 v5, 0x0

    const-wide v10, 0x4076800000000000L    # 360.0

    const-wide/high16 v8, 0x4049000000000000L    # 50.0

    .line 69
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 70
    .local v1, "path":Landroid/graphics/Path;
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 71
    aget v4, p1, v5

    aget v5, p2, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 72
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    .line 73
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_0

    .line 74
    aget v4, p1, v0

    aget v5, p2, v0

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 76
    aget v4, p2, v0

    add-int/lit8 v5, v0, -0x1

    aget v5, p2, v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    aget v6, p1, v0

    add-int/lit8 v7, v0, -0x1

    aget v7, p1, v7

    sub-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    .line 77
    .local v2, "setha":D
    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    add-double/2addr v4, v2

    add-double/2addr v4, v10

    rem-double v2, v4, v10

    .line 78
    aget v4, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v6, v8

    double-to-float v5, v6

    sub-float/2addr v4, v5

    aget v5, p2, v0

    .line 79
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v8

    double-to-float v6, v6

    sub-float/2addr v5, v6

    .line 78
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 80
    aget v4, p1, v0

    aget v5, p2, v0

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 81
    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    sub-double v4, v2, v4

    add-double/2addr v4, v10

    rem-double v2, v4, v10

    .line 82
    aget v4, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v6, v8

    double-to-float v5, v6

    sub-float/2addr v4, v5

    aget v5, p2, v0

    .line 83
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v8

    double-to-float v6, v6

    sub-float/2addr v5, v6

    .line 82
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 72
    .end local v2    # "setha":D
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    aget v4, p1, v0

    aget v5, p2, v0

    add-int/lit8 v6, v0, 0x1

    aget v6, p1, v6

    add-int/lit8 v7, v0, 0x1

    aget v7, p2, v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_1

    .line 88
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ui/Arrows;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {p0}, Lcom/android/camera/ui/Arrows;->invalidate()V

    .line 90
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 61
    iget-object v1, p0, Lcom/android/camera/ui/Arrows;->mPaths:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/Arrows;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/camera/ui/Arrows;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/camera/ui/Arrows;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
