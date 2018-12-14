.class Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;
.super Landroid/os/Handler;
.source "ClearSightImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DepthProcessHandler"
.end annotation


# instance fields
.field private mDDMNativeEngine:Lorg/codeaurora/snapcam/filter/DDMNativeEngine;

.field private mReprocessCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

.field final synthetic this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;


# direct methods
.method public constructor <init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1319
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 1320
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1321
    new-instance v0, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;

    invoke-direct {v0}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->mDDMNativeEngine:Lorg/codeaurora/snapcam/filter/DDMNativeEngine;

    .line 1322
    return-void
.end method

.method private dumpCameraParam()V
    .locals 4

    .prologue
    .line 1427
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->mDDMNativeEngine:Lorg/codeaurora/snapcam/filter/DDMNativeEngine;

    invoke-virtual {v1}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->getOTPCalibration()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "OTPdata"

    const-string v3, "txt"

    invoke-static {v0, v1, v2, v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$2400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;[BLjava/lang/String;Ljava/lang/String;)V

    .line 1428
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->mDDMNativeEngine:Lorg/codeaurora/snapcam/filter/DDMNativeEngine;

    invoke-virtual {v1}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->getBayerScaleCrop()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "BayerScaleCrop"

    const-string v3, "txt"

    invoke-static {v0, v1, v2, v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$2400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;[BLjava/lang/String;Ljava/lang/String;)V

    .line 1429
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->mDDMNativeEngine:Lorg/codeaurora/snapcam/filter/DDMNativeEngine;

    invoke-virtual {v1}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->getMonoScaleCrop()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "MonoScaleCrop"

    const-string v3, "txt"

    invoke-static {v0, v1, v2, v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$2400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;[BLjava/lang/String;Ljava/lang/String;)V

    .line 1430
    return-void
.end method

.method private generateDepthmap()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1393
    iget-object v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v8}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$300(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;

    move-result-object v8

    invoke-virtual {v8, v11}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 1394
    const/4 v2, 0x0

    .line 1395
    .local v2, "depthMap":Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;
    const/4 v8, 0x2

    new-array v5, v8, [I

    .line 1396
    .local v5, "size":[I
    iget-object v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->mDDMNativeEngine:Lorg/codeaurora/snapcam/filter/DDMNativeEngine;

    invoke-virtual {v8, v5}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->getDepthMapSize([I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1397
    aget v7, v5, v11

    .line 1398
    .local v7, "width":I
    const/4 v8, 0x1

    aget v3, v5, v8

    .line 1399
    .local v3, "height":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1401
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v6

    .line 1402
    .local v6, "stride":I
    mul-int v8, v6, v3

    new-array v1, v8, [B

    .line 1403
    .local v1, "depthBuffer":[B
    const-string v8, "ClearSightImageProcessor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "depthMapWidth="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " depthMapHeight="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " stride="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1407
    .local v4, "roiRect":Landroid/graphics/Rect;
    iget-object v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->mDDMNativeEngine:Lorg/codeaurora/snapcam/filter/DDMNativeEngine;

    invoke-virtual {v8, v1, v6, v4}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->dualCameraGenerateDDM([BILandroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1408
    iget-object v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v8}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$2300(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1409
    iget-object v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v8, v1, v7, v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$2600(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;[BII)V

    .line 1411
    :cond_0
    new-instance v2, Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;

    .end local v2    # "depthMap":Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;
    invoke-direct {v2, v7, v3}, Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;-><init>(II)V

    .line 1412
    .restart local v2    # "depthMap":Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;
    iput-object v4, v2, Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;->roi:Landroid/graphics/Rect;

    .line 1413
    iput-object v1, v2, Lorg/codeaurora/snapcam/filter/GDepth$DepthMap;->buffer:[B

    .line 1420
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "depthBuffer":[B
    .end local v3    # "height":I
    .end local v4    # "roiRect":Landroid/graphics/Rect;
    .end local v6    # "stride":I
    .end local v7    # "width":I
    :goto_0
    iget-object v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v8}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$2300(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1421
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->dumpCameraParam()V

    .line 1423
    :cond_1
    iget-object v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v8}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$300(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;

    move-result-object v8

    const/16 v9, 0x9

    invoke-virtual {v8, v9, v11, v11, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 1424
    return-void

    .line 1415
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v1    # "depthBuffer":[B
    .restart local v3    # "height":I
    .restart local v4    # "roiRect":Landroid/graphics/Rect;
    .restart local v6    # "stride":I
    .restart local v7    # "width":I
    :cond_2
    const-string v8, "ClearSightImageProcessor"

    const-string v9, "dualCameraGenerateDDM failure"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1418
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "depthBuffer":[B
    .end local v3    # "height":I
    .end local v4    # "roiRect":Landroid/graphics/Rect;
    .end local v6    # "stride":I
    .end local v7    # "width":I
    :cond_3
    const-string v8, "ClearSightImageProcessor"

    const-string v9, "getDepthMapSize failure"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerImage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1362
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 1363
    .local v1, "isBayer":Z
    :goto_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/Image;

    .line 1364
    .local v0, "image":Landroid/media/Image;
    if-eqz v1, :cond_2

    .line 1365
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->mDDMNativeEngine:Lorg/codeaurora/snapcam/filter/DDMNativeEngine;

    invoke-virtual {v2, v0}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->setBayerImage(Landroid/media/Image;)V

    .line 1370
    :goto_1
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->mDDMNativeEngine:Lorg/codeaurora/snapcam/filter/DDMNativeEngine;

    invoke-virtual {v2}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->isReadyForGenerateDepth()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1371
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->generateDepthmap()V

    .line 1373
    :cond_0
    return-void

    .line 1362
    .end local v0    # "image":Landroid/media/Image;
    .end local v1    # "isBayer":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1367
    .restart local v0    # "image":Landroid/media/Image;
    .restart local v1    # "isBayer":Z
    :cond_2
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->mDDMNativeEngine:Lorg/codeaurora/snapcam/filter/DDMNativeEngine;

    invoke-virtual {v2, v0}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->setMonoImage(Landroid/media/Image;)V

    goto :goto_1
.end method

.method private registerReprocessResult(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1377
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1378
    .local v0, "isBayer":Z
    :goto_0
    const-string v2, "ClearSightImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerReprocessResult bayer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/camera2/TotalCaptureResult;

    .line 1380
    .local v1, "result":Landroid/hardware/camera2/TotalCaptureResult;
    if-eqz v0, :cond_2

    .line 1381
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->mDDMNativeEngine:Lorg/codeaurora/snapcam/filter/DDMNativeEngine;

    invoke-virtual {v2, v1}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->setBayerReprocessResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 1386
    :goto_1
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->mDDMNativeEngine:Lorg/codeaurora/snapcam/filter/DDMNativeEngine;

    invoke-virtual {v2}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->isReadyForGenerateDepth()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1387
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->generateDepthmap()V

    .line 1390
    :cond_0
    return-void

    .line 1377
    .end local v0    # "isBayer":Z
    .end local v1    # "result":Landroid/hardware/camera2/TotalCaptureResult;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1383
    .restart local v0    # "isBayer":Z
    .restart local v1    # "result":Landroid/hardware/camera2/TotalCaptureResult;
    :cond_2
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->mDDMNativeEngine:Lorg/codeaurora/snapcam/filter/DDMNativeEngine;

    invoke-virtual {v2, v1}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->setMonoReprocessResult(Landroid/hardware/camera2/CaptureResult;)V

    goto :goto_1
.end method

.method private resetParams()V
    .locals 2

    .prologue
    .line 1353
    const-string v0, "ClearSightImageProcessor"

    const-string v1, "resetParams"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->mDDMNativeEngine:Lorg/codeaurora/snapcam/filter/DDMNativeEngine;

    invoke-virtual {v0}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->reset()V

    .line 1355
    return-void
.end method

.method private setBayerLensFocusDistance(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1358
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->mDDMNativeEngine:Lorg/codeaurora/snapcam/filter/DDMNativeEngine;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->setBayerLensFocusDistance(F)V

    .line 1359
    return-void
.end method

.method private setCalibrationdata(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1350
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->mDDMNativeEngine:Lorg/codeaurora/snapcam/filter/DDMNativeEngine;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;

    invoke-virtual {v1, v0}, Lorg/codeaurora/snapcam/filter/DDMNativeEngine;->setCamSystemCalibrationData(Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;)V

    .line 1351
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1326
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1347
    :goto_0
    :pswitch_0
    return-void

    .line 1328
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->setCalibrationdata(Landroid/os/Message;)V

    goto :goto_0

    .line 1332
    :pswitch_2
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->setBayerLensFocusDistance(Landroid/os/Message;)V

    goto :goto_0

    .line 1336
    :pswitch_3
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->resetParams()V

    goto :goto_0

    .line 1340
    :pswitch_4
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->registerImage(Landroid/os/Message;)V

    goto :goto_0

    .line 1344
    :pswitch_5
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->registerReprocessResult(Landroid/os/Message;)V

    goto :goto_0

    .line 1326
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
