.class Lcom/android/camera/GraphView;
.super Landroid/view/View;
.source "PhotoModule.java"


# static fields
.field private static final STATS_SIZE:I = 0x100

.field private static final TAG:Ljava/lang/String; = "GraphView"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mGraphCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mHeight:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintRect:Landroid/graphics/Paint;

.field private mPhotoModule:Lcom/android/camera/PhotoModule;

.field private mScale:F

.field private mWidth:F

.field private scaled:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 6437
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6423
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/GraphView;->mPaint:Landroid/graphics/Paint;

    .line 6424
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/GraphView;->mPaintRect:Landroid/graphics/Paint;

    .line 6425
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/camera/GraphView;->mCanvas:Landroid/graphics/Canvas;

    .line 6426
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/android/camera/GraphView;->mScale:F

    .line 6439
    iget-object v0, p0, Lcom/android/camera/GraphView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 6440
    iget-object v0, p0, Lcom/android/camera/GraphView;->mPaintRect:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6441
    iget-object v0, p0, Lcom/android/camera/GraphView;->mPaintRect:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6442
    return-void
.end method


# virtual methods
.method public PreviewChanged()V
    .locals 0

    .prologue
    .line 6515
    invoke-virtual {p0}, Lcom/android/camera/GraphView;->invalidate()V

    .line 6516
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 6453
    const-string v2, "GraphView"

    const-string v4, "in Camera.java ondraw"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/GraphView;->mPhotoModule:Lcom/android/camera/PhotoModule;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/GraphView;->mPhotoModule:Lcom/android/camera/PhotoModule;

    iget-boolean v2, v2, Lcom/android/camera/PhotoModule;->mHiston:Z

    if-nez v2, :cond_2

    .line 6455
    :cond_0
    const-string v2, "GraphView"

    const-string v4, "returning as histogram is off "

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6513
    :cond_1
    :goto_0
    return-void

    .line 6459
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/GraphView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_a

    .line 6460
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/GraphView;->mPaint:Landroid/graphics/Paint;

    .line 6461
    .local v6, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/GraphView;->mCanvas:Landroid/graphics/Canvas;

    .line 6462
    .local v1, "cavas":Landroid/graphics/Canvas;
    const/high16 v17, 0x40a00000    # 5.0f

    .line 6463
    .local v17, "border":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/GraphView;->mHeight:F

    const/high16 v4, 0x41200000    # 10.0f

    sub-float v18, v2, v4

    .line 6464
    .local v18, "graphheight":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/GraphView;->mWidth:F

    const/high16 v4, 0x41200000    # 10.0f

    sub-float v19, v2, v4

    .line 6466
    .local v19, "graphwidth":F
    const/4 v15, 0x0

    .line 6467
    .local v15, "bargap":F
    const/high16 v2, 0x43800000    # 256.0f

    div-float v16, v19, v2

    .line 6469
    .local v16, "barwidth":F
    const v2, -0x555556

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 6470
    const/high16 v2, -0x1000000

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 6472
    const/16 v22, 0x0

    .local v22, "k":I
    :goto_1
    move/from16 v0, v22

    int-to-float v2, v0

    const/high16 v4, 0x42000000    # 32.0f

    div-float v4, v18, v4

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_3

    .line 6473
    mul-int/lit8 v2, v22, 0x20

    int-to-float v2, v2

    const/high16 v4, 0x40a00000    # 5.0f

    add-float v3, v2, v4

    .line 6474
    .local v3, "y":F
    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v4, 0x40a00000    # 5.0f

    add-float v4, v4, v19

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 6472
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 6476
    .end local v3    # "y":F
    :cond_3
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_2
    move/from16 v0, v21

    int-to-float v2, v0

    const/high16 v4, 0x42000000    # 32.0f

    div-float v4, v19, v4

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_4

    .line 6477
    mul-int/lit8 v2, v21, 0x20

    int-to-float v2, v2

    const/high16 v4, 0x40a00000    # 5.0f

    add-float v8, v2, v4

    .line 6478
    .local v8, "x":F
    const/high16 v9, 0x40a00000    # 5.0f

    const/high16 v2, 0x40a00000    # 5.0f

    add-float v11, v18, v2

    move-object v7, v1

    move v10, v8

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 6476
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 6480
    .end local v8    # "x":F
    :cond_4
    sget-object v4, Lcom/android/camera/PhotoModule;->statsdata:[I

    monitor-enter v4

    .line 6483
    const/high16 v23, -0x80000000

    .line 6484
    .local v23, "maxValue":I
    :try_start_0
    sget-object v2, Lcom/android/camera/PhotoModule;->statsdata:[I

    const/4 v5, 0x0

    aget v2, v2, v5

    if-nez v2, :cond_6

    .line 6485
    const/16 v20, 0x1

    .local v20, "i":I
    :goto_3
    const/16 v2, 0x100

    move/from16 v0, v20

    if-gt v0, v2, :cond_7

    .line 6486
    sget-object v2, Lcom/android/camera/PhotoModule;->statsdata:[I

    aget v2, v2, v20

    move/from16 v0, v23

    if-ge v0, v2, :cond_5

    .line 6487
    sget-object v2, Lcom/android/camera/PhotoModule;->statsdata:[I

    aget v23, v2, v20

    .line 6485
    :cond_5
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 6491
    .end local v20    # "i":I
    :cond_6
    sget-object v2, Lcom/android/camera/PhotoModule;->statsdata:[I

    const/4 v5, 0x0

    aget v23, v2, v5

    .line 6493
    :cond_7
    move/from16 v0, v23

    int-to-float v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/GraphView;->mScale:F

    .line 6494
    const/16 v20, 0x1

    .restart local v20    # "i":I
    :goto_4
    const/16 v2, 0x100

    move/from16 v0, v20

    if-gt v0, v2, :cond_9

    .line 6495
    sget-object v2, Lcom/android/camera/PhotoModule;->statsdata:[I

    aget v2, v2, v20

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/GraphView;->mScale:F

    div-float/2addr v2, v5

    const/high16 v5, 0x43800000    # 256.0f

    mul-float/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/GraphView;->scaled:F

    .line 6496
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/GraphView;->scaled:F

    const/high16 v5, 0x43800000    # 256.0f

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_8

    .line 6497
    const/high16 v2, 0x43800000    # 256.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/GraphView;->scaled:F

    .line 6498
    :cond_8
    add-int/lit8 v2, v20, 0x1

    int-to-float v2, v2

    mul-float/2addr v2, v15

    move/from16 v0, v20

    int-to-float v5, v0

    mul-float v5, v5, v16

    add-float/2addr v2, v5

    const/high16 v5, 0x40a00000    # 5.0f

    add-float v10, v2, v5

    .line 6499
    .local v10, "left":F
    const/high16 v2, 0x40a00000    # 5.0f

    add-float v11, v18, v2

    .line 6500
    .local v11, "top":F
    add-float v12, v10, v16

    .line 6501
    .local v12, "right":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/GraphView;->scaled:F

    sub-float v13, v11, v2

    .line 6502
    .local v13, "bottom":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/GraphView;->mPaintRect:Landroid/graphics/Paint;

    move-object v9, v1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 6494
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 6504
    .end local v10    # "left":F
    .end local v11    # "top":F
    .end local v12    # "right":F
    .end local v13    # "bottom":F
    :cond_9
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/GraphView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 6507
    .end local v1    # "cavas":Landroid/graphics/Canvas;
    .end local v6    # "paint":Landroid/graphics/Paint;
    .end local v15    # "bargap":F
    .end local v16    # "barwidth":F
    .end local v17    # "border":F
    .end local v18    # "graphheight":F
    .end local v19    # "graphwidth":F
    .end local v20    # "i":I
    .end local v21    # "j":I
    .end local v22    # "k":I
    .end local v23    # "maxValue":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/GraphView;->mPhotoModule:Lcom/android/camera/PhotoModule;

    iget-boolean v2, v2, Lcom/android/camera/PhotoModule;->mHiston:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/GraphView;->mPhotoModule:Lcom/android/camera/PhotoModule;

    if-eqz v2, :cond_1

    .line 6508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/GraphView;->mPhotoModule:Lcom/android/camera/PhotoModule;

    invoke-virtual {v2}, Lcom/android/camera/PhotoModule;->getCamera()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/GraphView;->mGraphCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 6509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/GraphView;->mGraphCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_1

    .line 6510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/GraphView;->mGraphCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v2}, Lcom/android/camera/CameraManager$CameraProxy;->sendHistogramData()V

    goto/16 :goto_0

    .line 6504
    .restart local v1    # "cavas":Landroid/graphics/Canvas;
    .restart local v6    # "paint":Landroid/graphics/Paint;
    .restart local v15    # "bargap":F
    .restart local v16    # "barwidth":F
    .restart local v17    # "border":F
    .restart local v18    # "graphheight":F
    .restart local v19    # "graphwidth":F
    .restart local v21    # "j":I
    .restart local v22    # "k":I
    .restart local v23    # "maxValue":I
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
    .line 6445
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/GraphView;->mBitmap:Landroid/graphics/Bitmap;

    .line 6446
    iget-object v0, p0, Lcom/android/camera/GraphView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/camera/GraphView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 6447
    int-to-float v0, p1

    iput v0, p0, Lcom/android/camera/GraphView;->mWidth:F

    .line 6448
    int-to-float v0, p2

    iput v0, p0, Lcom/android/camera/GraphView;->mHeight:F

    .line 6449
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 6450
    return-void
.end method

.method public setPhotoModuleObject(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p1, "photoModule"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 6518
    iput-object p1, p0, Lcom/android/camera/GraphView;->mPhotoModule:Lcom/android/camera/PhotoModule;

    .line 6519
    return-void
.end method
