.class Lcom/android/camera/Camera2GraphView;
.super Landroid/view/View;
.source "CaptureModule.java"


# static fields
.field private static final STATS_SIZE:I = 0x100

.field private static final TAG:Ljava/lang/String; = "GraphView"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCaptureModule:Lcom/android/camera/CaptureModule;

.field private mEnd:I

.field private mHeight:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintRect:Landroid/graphics/Paint;

.field private mScale:F

.field private mStart:I

.field private mWidth:F

.field private scaled:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 5230
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5216
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera2GraphView;->mPaint:Landroid/graphics/Paint;

    .line 5217
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera2GraphView;->mPaintRect:Landroid/graphics/Paint;

    .line 5218
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera2GraphView;->mCanvas:Landroid/graphics/Canvas;

    .line 5219
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/android/camera/Camera2GraphView;->mScale:F

    .line 5232
    iget-object v0, p0, Lcom/android/camera/Camera2GraphView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 5233
    iget-object v0, p0, Lcom/android/camera/Camera2GraphView;->mPaintRect:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5234
    iget-object v0, p0, Lcom/android/camera/Camera2GraphView;->mPaintRect:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5235
    return-void
.end method


# virtual methods
.method public PreviewChanged()V
    .locals 0

    .prologue
    .line 5301
    invoke-virtual {p0}, Lcom/android/camera/Camera2GraphView;->invalidate()V

    .line 5302
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 5252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera2GraphView;->mCaptureModule:Lcom/android/camera/CaptureModule;

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera2GraphView;->mCaptureModule:Lcom/android/camera/CaptureModule;

    iget-boolean v2, v2, Lcom/android/camera/CaptureModule;->mHiston:Z

    if-nez v2, :cond_1

    .line 5253
    const-string v2, "GraphView"

    const-string v4, "returning as histogram is off "

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5299
    :cond_0
    :goto_0
    return-void

    .line 5257
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera2GraphView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 5258
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/Camera2GraphView;->mPaint:Landroid/graphics/Paint;

    .line 5259
    .local v6, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera2GraphView;->mCanvas:Landroid/graphics/Canvas;

    .line 5260
    .local v1, "cavas":Landroid/graphics/Canvas;
    const/high16 v17, 0x40a00000    # 5.0f

    .line 5261
    .local v17, "border":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/Camera2GraphView;->mHeight:F

    const/high16 v4, 0x41200000    # 10.0f

    sub-float v18, v2, v4

    .line 5262
    .local v18, "graphheight":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/Camera2GraphView;->mWidth:F

    const/high16 v4, 0x41200000    # 10.0f

    sub-float v19, v2, v4

    .line 5264
    .local v19, "graphwidth":F
    const/4 v15, 0x0

    .line 5265
    .local v15, "bargap":F
    const/high16 v2, 0x43800000    # 256.0f

    div-float v16, v19, v2

    .line 5267
    .local v16, "barwidth":F
    const v2, -0x555556

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 5268
    const/high16 v2, -0x1000000

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5270
    const/16 v22, 0x0

    .local v22, "k":I
    :goto_1
    move/from16 v0, v22

    int-to-float v2, v0

    const/high16 v4, 0x42000000    # 32.0f

    div-float v4, v18, v4

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_2

    .line 5271
    mul-int/lit8 v2, v22, 0x20

    int-to-float v2, v2

    const/high16 v4, 0x40a00000    # 5.0f

    add-float v3, v2, v4

    .line 5272
    .local v3, "y":F
    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v4, 0x40a00000    # 5.0f

    add-float v4, v4, v19

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 5270
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 5274
    .end local v3    # "y":F
    :cond_2
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_2
    move/from16 v0, v21

    int-to-float v2, v0

    const/high16 v4, 0x42000000    # 32.0f

    div-float v4, v19, v4

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_3

    .line 5275
    mul-int/lit8 v2, v21, 0x20

    int-to-float v2, v2

    const/high16 v4, 0x40a00000    # 5.0f

    add-float v8, v2, v4

    .line 5276
    .local v8, "x":F
    const/high16 v9, 0x40a00000    # 5.0f

    const/high16 v2, 0x40a00000    # 5.0f

    add-float v11, v18, v2

    move-object v7, v1

    move v10, v8

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 5274
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 5278
    .end local v8    # "x":F
    :cond_3
    sget-object v4, Lcom/android/camera/CaptureModule;->statsdata:[I

    monitor-enter v4

    .line 5279
    const/high16 v23, -0x80000000

    .line 5280
    .local v23, "maxValue":I
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/Camera2GraphView;->mStart:I

    move/from16 v20, v0

    .local v20, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/Camera2GraphView;->mEnd:I

    move/from16 v0, v20

    if-ge v0, v2, :cond_5

    .line 5281
    sget-object v2, Lcom/android/camera/CaptureModule;->statsdata:[I

    aget v2, v2, v20

    move/from16 v0, v23

    if-ge v0, v2, :cond_4

    .line 5282
    sget-object v2, Lcom/android/camera/CaptureModule;->statsdata:[I

    aget v23, v2, v20

    .line 5280
    :cond_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 5285
    :cond_5
    move/from16 v0, v23

    int-to-float v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/Camera2GraphView;->mScale:F

    .line 5286
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/Camera2GraphView;->mStart:I

    move/from16 v20, v0

    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/Camera2GraphView;->mEnd:I

    move/from16 v0, v20

    if-ge v0, v2, :cond_7

    .line 5287
    sget-object v2, Lcom/android/camera/CaptureModule;->statsdata:[I

    aget v2, v2, v20

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/Camera2GraphView;->mScale:F

    div-float/2addr v2, v5

    const/high16 v5, 0x43800000    # 256.0f

    mul-float/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/Camera2GraphView;->scaled:F

    .line 5288
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/Camera2GraphView;->scaled:F

    const/high16 v5, 0x43800000    # 256.0f

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_6

    .line 5289
    const/high16 v2, 0x43800000    # 256.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/Camera2GraphView;->scaled:F

    .line 5290
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/Camera2GraphView;->mStart:I

    sub-int v2, v20, v2

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    mul-float/2addr v2, v15

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/Camera2GraphView;->mStart:I

    sub-int v5, v20, v5

    int-to-float v5, v5

    mul-float v5, v5, v16

    add-float/2addr v2, v5

    const/high16 v5, 0x40a00000    # 5.0f

    add-float v10, v2, v5

    .line 5291
    .local v10, "left":F
    const/high16 v2, 0x40a00000    # 5.0f

    add-float v11, v18, v2

    .line 5292
    .local v11, "top":F
    add-float v12, v10, v16

    .line 5293
    .local v12, "right":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/Camera2GraphView;->scaled:F

    sub-float v13, v11, v2

    .line 5294
    .local v13, "bottom":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/Camera2GraphView;->mPaintRect:Landroid/graphics/Paint;

    move-object v9, v1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 5286
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 5296
    .end local v10    # "left":F
    .end local v11    # "top":F
    .end local v12    # "right":F
    .end local v13    # "bottom":F
    :cond_7
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/Camera2GraphView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 5296
    .end local v20    # "i":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 5244
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera2GraphView;->mBitmap:Landroid/graphics/Bitmap;

    .line 5245
    iget-object v0, p0, Lcom/android/camera/Camera2GraphView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/camera/Camera2GraphView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 5246
    int-to-float v0, p1

    iput v0, p0, Lcom/android/camera/Camera2GraphView;->mWidth:F

    .line 5247
    int-to-float v0, p2

    iput v0, p0, Lcom/android/camera/Camera2GraphView;->mHeight:F

    .line 5248
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 5249
    return-void
.end method

.method public setCaptureModuleObject(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p1, "captureModule"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 5305
    iput-object p1, p0, Lcom/android/camera/Camera2GraphView;->mCaptureModule:Lcom/android/camera/CaptureModule;

    .line 5306
    return-void
.end method

.method setDataSection(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 5238
    iput p1, p0, Lcom/android/camera/Camera2GraphView;->mStart:I

    .line 5239
    iput p2, p0, Lcom/android/camera/Camera2GraphView;->mEnd:I

    .line 5240
    return-void
.end method
