.class Lcom/android/camera/ui/PanoCaptureProcessView$Picture;
.super Ljava/lang/Object;
.source "PanoCaptureProcessView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PanoCaptureProcessView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Picture"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field bitmapIn:Landroid/graphics/Bitmap;

.field height:I

.field leftIn:I

.field mat:Landroid/graphics/Matrix;

.field paintFrameEdge:Landroid/graphics/Paint;

.field paintInAir:Landroid/graphics/Paint;

.field pts:[F

.field rF:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

.field topIn:I

.field width:I

.field xDeg:F

.field xPos:I

.field yDeg:F

.field yPos:I


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/PanoCaptureProcessView;Landroid/graphics/Bitmap;FFII)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p2, "bm"    # Landroid/graphics/Bitmap;
    .param p3, "xdeg"    # F
    .param p4, "ydeg"    # F
    .param p5, "x"    # I
    .param p6, "y"    # I

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->paintInAir:Landroid/graphics/Paint;

    .line 167
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->paintFrameEdge:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 170
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->init(Landroid/graphics/Bitmap;FFII)V

    .line 171
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ui/PanoCaptureProcessView;Landroid/graphics/Bitmap;FFIIII)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p2, "bm"    # Landroid/graphics/Bitmap;
    .param p3, "xdeg"    # F
    .param p4, "ydeg"    # F
    .param p5, "x"    # I
    .param p6, "y"    # I
    .param p7, "w"    # I
    .param p8, "h"    # I

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->paintInAir:Landroid/graphics/Paint;

    .line 167
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->paintFrameEdge:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 174
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->init(Landroid/graphics/Bitmap;FFII)V

    .line 175
    iput p7, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->width:I

    .line 176
    iput p8, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->height:I

    .line 177
    return-void
.end method

.method private init(Landroid/graphics/Bitmap;FFII)V
    .locals 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "xdeg"    # F
    .param p3, "ydeg"    # F
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    .line 181
    iput p2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->xDeg:F

    .line 182
    iput p3, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->yDeg:F

    .line 183
    iput p4, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->xPos:I

    .line 184
    iput p5, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->yPos:I

    .line 185
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->mat:Landroid/graphics/Matrix;

    .line 186
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    .line 187
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->pts:[F

    .line 188
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->paintInAir:Landroid/graphics/Paint;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 189
    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->width:I

    .line 191
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->height:I

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->paintFrameEdge:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->paintFrameEdge:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 195
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->paintFrameEdge:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 196
    return-void
.end method

.method private skew(Landroid/graphics/RectF;[FFFFF)V
    .locals 8
    .param p1, "src"    # Landroid/graphics/RectF;
    .param p2, "pts"    # [F
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "Wh"    # F
    .param p6, "Hh"    # F

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v7, 0x40000000    # 2.0f

    .line 291
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 292
    .local v1, "lh":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 293
    .local v3, "tw":F
    move v2, v1

    .line 294
    .local v2, "rh":F
    move v0, v3

    .line 296
    .local v0, "bw":F
    cmpg-float v4, p3, v6

    if-gez v4, :cond_0

    .line 297
    neg-float v4, p3

    div-float/2addr v4, p5

    div-float/2addr v4, v7

    add-float/2addr v4, v5

    mul-float/2addr v1, v4

    .line 302
    :goto_0
    cmpg-float v4, p4, v6

    if-gez v4, :cond_1

    .line 303
    neg-float v4, p4

    div-float/2addr v4, p6

    div-float/2addr v4, v7

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    .line 309
    :goto_1
    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    div-float v6, v3, v7

    sub-float/2addr v5, v6

    aput v5, p2, v4

    .line 310
    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    div-float v6, v1, v7

    sub-float/2addr v5, v6

    aput v5, p2, v4

    .line 312
    const/4 v4, 0x2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    div-float v6, v3, v7

    add-float/2addr v5, v6

    aput v5, p2, v4

    .line 313
    const/4 v4, 0x3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    div-float v6, v2, v7

    sub-float/2addr v5, v6

    aput v5, p2, v4

    .line 315
    const/4 v4, 0x4

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    div-float v6, v0, v7

    add-float/2addr v5, v6

    aput v5, p2, v4

    .line 316
    const/4 v4, 0x5

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    div-float v6, v2, v7

    add-float/2addr v5, v6

    aput v5, p2, v4

    .line 318
    const/4 v4, 0x6

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    div-float v6, v0, v7

    sub-float/2addr v5, v6

    aput v5, p2, v4

    .line 319
    const/4 v4, 0x7

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    div-float v6, v1, v7

    add-float/2addr v5, v6

    aput v5, p2, v4

    .line 320
    return-void

    .line 299
    :cond_0
    div-float v4, p3, p5

    div-float/2addr v4, v7

    add-float/2addr v4, v5

    mul-float/2addr v2, v4

    goto :goto_0

    .line 305
    :cond_1
    div-float v4, p4, p6

    div-float/2addr v4, v7

    add-float/2addr v4, v5

    mul-float/2addr v0, v4

    goto :goto_1
.end method


# virtual methods
.method public drawGuideInAir(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v7, 0x44480000    # 800.0f

    const/high16 v6, 0x43870000    # 270.0f

    const/high16 v5, 0x42b40000    # 90.0f

    const/high16 v2, 0x43b40000    # 360.0f

    .line 232
    iget v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->xDeg:F

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v1}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$000(Lcom/android/camera/ui/PanoCaptureProcessView;)F

    move-result v1

    sub-float/2addr v0, v1

    add-float/2addr v0, v2

    rem-float v12, v0, v2

    .line 233
    .local v12, "setha":F
    cmpg-float v0, v5, v12

    if-gtz v0, :cond_1

    cmpg-float v0, v12, v6

    if-gtz v0, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    float-to-double v0, v12

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v3, v7, v0

    .line 236
    .local v3, "x":F
    iget v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->yDeg:F

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v1}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$100(Lcom/android/camera/ui/PanoCaptureProcessView;)F

    move-result v1

    sub-float/2addr v0, v1

    add-float/2addr v0, v2

    rem-float v12, v0, v2

    .line 237
    cmpg-float v0, v5, v12

    if-gtz v0, :cond_2

    cmpg-float v0, v12, v6

    if-lez v0, :cond_0

    .line 239
    :cond_2
    float-to-double v0, v12

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v4, v7, v0

    .line 241
    .local v4, "y":F
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, v3

    iget v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->width:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 242
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, v3

    iget v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->width:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 243
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, v4

    iget v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->height:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 244
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, v4

    iget v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->height:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 245
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->pts:[F

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->skew(Landroid/graphics/RectF;[FFFFF)V

    .line 246
    const/4 v11, 0x1

    .local v11, "i":I
    :goto_1
    const/4 v0, 0x4

    if-ge v11, v0, :cond_3

    .line 247
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->pts:[F

    add-int/lit8 v1, v11, -0x1

    mul-int/lit8 v1, v1, 0x2

    aget v6, v0, v1

    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->pts:[F

    add-int/lit8 v1, v11, -0x1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v7, v0, v1

    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->pts:[F

    mul-int/lit8 v1, v11, 0x2

    aget v8, v0, v1

    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->pts:[F

    mul-int/lit8 v1, v11, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v9, v0, v1

    iget-object v10, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->paintFrameEdge:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 246
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 249
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->pts:[F

    const/4 v1, 0x0

    aget v6, v0, v1

    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->pts:[F

    const/4 v1, 0x1

    aget v7, v0, v1

    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->pts:[F

    const/4 v1, 0x6

    aget v8, v0, v1

    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->pts:[F

    const/4 v1, 0x7

    aget v9, v0, v1

    iget-object v10, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->paintFrameEdge:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public drawMasterPanoPreview(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 255
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$200(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-result-object v2

    sget-object v3, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_LEFT:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$200(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-result-object v2

    sget-object v3, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_RIGHT:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-ne v2, v3, :cond_3

    .line 256
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$300(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 257
    .local v1, "bitmapWidth":I
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$300(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 258
    .local v0, "bitmapHeight":I
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 259
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 260
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x5

    sub-int/2addr v3, v0

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 261
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 262
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$300(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p1, v2, v5, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 263
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->paintFrameEdge:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 275
    .end local v0    # "bitmapHeight":I
    .end local v1    # "bitmapWidth":I
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$500(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$500(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v2

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_5

    .line 276
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->leftIn:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 277
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sget v4, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 278
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->topIn:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 279
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sget v4, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 286
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$300(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmapIn:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p1, v2, v5, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 287
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->paintFrameEdge:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 288
    return-void

    .line 265
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$200(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-result-object v2

    sget-object v3, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_UP:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$200(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-result-object v2

    sget-object v3, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_DOWN:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-ne v2, v3, :cond_1

    .line 266
    :cond_4
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$300(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 267
    .restart local v1    # "bitmapWidth":I
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$300(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 268
    .restart local v0    # "bitmapHeight":I
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 269
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 270
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 271
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 272
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$300(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p1, v2, v5, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 273
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->paintFrameEdge:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 281
    .end local v0    # "bitmapHeight":I
    .end local v1    # "bitmapWidth":I
    :cond_5
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->leftIn:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 282
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sget v4, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 283
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->topIn:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 284
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sget v4, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1
.end method

.method public drawPictureInAir(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x44480000    # 800.0f

    const/high16 v6, 0x43870000    # 270.0f

    const/high16 v5, 0x42b40000    # 90.0f

    const/4 v7, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    .line 201
    iget v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->xDeg:F

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v1}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$000(Lcom/android/camera/ui/PanoCaptureProcessView;)F

    move-result v1

    sub-float/2addr v0, v1

    add-float/2addr v0, v2

    rem-float v11, v0, v2

    .line 202
    .local v11, "setha":F
    cmpg-float v0, v5, v11

    if-gtz v0, :cond_1

    cmpg-float v0, v11, v6

    if-gtz v0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    float-to-double v0, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v3, v8, v0

    .line 205
    .local v3, "x":F
    iget v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->yDeg:F

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v1}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$100(Lcom/android/camera/ui/PanoCaptureProcessView;)F

    move-result v1

    sub-float/2addr v0, v1

    add-float/2addr v0, v2

    rem-float v11, v0, v2

    .line 206
    cmpg-float v0, v5, v11

    if-gtz v0, :cond_2

    cmpg-float v0, v11, v6

    if-lez v0, :cond_0

    .line 208
    :cond_2
    float-to-double v0, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v4, v8, v0

    .line 210
    .local v4, "y":F
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, v3

    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 211
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, v3

    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 212
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, v4

    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 213
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, v4

    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 214
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->pts:[F

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->skew(Landroid/graphics/RectF;[FFFFF)V

    .line 215
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->mat:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 216
    iget-object v5, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->mat:Landroid/graphics/Matrix;

    const/16 v0, 0x8

    new-array v6, v0, [F

    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    aput v0, v6, v7

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    aput v1, v6, v0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    aput v1, v6, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    aput v1, v6, v0

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    aput v1, v6, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    aput v1, v6, v0

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    aput v1, v6, v0

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    aput v1, v6, v0

    iget-object v8, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->pts:[F

    const/4 v10, 0x4

    move v9, v7

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 225
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->rF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 226
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->mat:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->paintInAir:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method
