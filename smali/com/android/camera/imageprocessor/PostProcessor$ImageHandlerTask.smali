.class Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;
.super Ljava/lang/Object;
.source "PostProcessor.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/imageprocessor/PostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageHandlerTask"
.end annotation


# instance fields
.field private mImageWrapper:Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;

.field mMutureLock:Ljava/util/concurrent/Semaphore;

.field private mRawImageReader:Landroid/media/ImageReader;

.field final synthetic this$0:Lcom/android/camera/imageprocessor/PostProcessor;


# direct methods
.method constructor <init>(Lcom/android/camera/imageprocessor/PostProcessor;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .prologue
    const/4 v0, 0x0

    .line 245
    iput-object p1, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mImageWrapper:Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;

    .line 247
    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mRawImageReader:Landroid/media/ImageReader;

    .line 248
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mMutureLock:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 14
    .param p1, "reader"    # Landroid/media/ImageReader;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 253
    :try_start_0
    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v7}, Lcom/android/camera/imageprocessor/PostProcessor;->access$000(Lcom/android/camera/imageprocessor/PostProcessor;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 254
    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v7}, Lcom/android/camera/imageprocessor/PostProcessor;->access$100(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/CaptureModule;->isLongShotActive()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v7}, Lcom/android/camera/imageprocessor/PostProcessor;->access$200(Lcom/android/camera/imageprocessor/PostProcessor;)I

    move-result v7

    if-lez v7, :cond_2

    .line 255
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v2

    .line 256
    .local v2, "image":Landroid/media/Image;
    const/4 v6, 0x0

    .line 257
    .local v6, "rawImage":Landroid/media/Image;
    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v7}, Lcom/android/camera/imageprocessor/PostProcessor;->access$300(Lcom/android/camera/imageprocessor/PostProcessor;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mRawImageReader:Landroid/media/ImageReader;

    if-eqz v7, :cond_0

    .line 258
    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {v7}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v6

    .line 260
    :cond_0
    new-instance v4, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    invoke-direct {v4}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;-><init>()V

    .line 261
    .local v4, "item":Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;
    invoke-virtual {v4, v2, v6}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->setImage(Landroid/media/Image;Landroid/media/Image;)V

    .line 262
    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    const/4 v8, 0x1

    invoke-virtual {v7, v4, v8}, Lcom/android/camera/imageprocessor/PostProcessor;->onContinuousZSLImage(Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 263
    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 264
    if-eqz v6, :cond_1

    .line 265
    invoke-virtual {v6}, Landroid/media/Image;->close()V

    .line 354
    .end local v2    # "image":Landroid/media/Image;
    .end local v4    # "item":Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;
    .end local v6    # "rawImage":Landroid/media/Image;
    :cond_1
    :goto_0
    return-void

    .line 270
    :cond_2
    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v7}, Lcom/android/camera/imageprocessor/PostProcessor;->access$400(Lcom/android/camera/imageprocessor/PostProcessor;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 271
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v2

    .line 272
    .restart local v2    # "image":Landroid/media/Image;
    const/4 v6, 0x0

    .line 273
    .restart local v6    # "rawImage":Landroid/media/Image;
    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v7}, Lcom/android/camera/imageprocessor/PostProcessor;->access$300(Lcom/android/camera/imageprocessor/PostProcessor;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mRawImageReader:Landroid/media/ImageReader;

    if-eqz v7, :cond_3

    .line 274
    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {v7}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v6

    .line 276
    :cond_3
    new-instance v3, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    invoke-direct {v3}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;-><init>()V

    .line 277
    .local v3, "imageItem":Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;
    invoke-virtual {v3, v2, v6}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->setImage(Landroid/media/Image;Landroid/media/Image;)V

    .line 278
    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v7}, Lcom/android/camera/imageprocessor/PostProcessor;->access$500(Lcom/android/camera/imageprocessor/PostProcessor;)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v7

    if-nez v7, :cond_4

    .line 279
    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v7, v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$600(Lcom/android/camera/imageprocessor/PostProcessor;Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    .end local v2    # "image":Landroid/media/Image;
    .end local v3    # "imageItem":Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;
    .end local v6    # "rawImage":Landroid/media/Image;
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v7, "PostProcessor"

    const-string v8, "Max images has been already acquired. "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v7, v12}, Lcom/android/camera/imageprocessor/PostProcessor;->access$402(Lcom/android/camera/imageprocessor/PostProcessor;Z)Z

    .line 351
    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v7, v13}, Lcom/android/camera/imageprocessor/PostProcessor;->access$502(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/TotalCaptureResult;

    .line 352
    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v7}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1000(Lcom/android/camera/imageprocessor/PostProcessor;)V

    goto :goto_0

    .line 282
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v2    # "image":Landroid/media/Image;
    .restart local v3    # "imageItem":Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;
    .restart local v6    # "rawImage":Landroid/media/Image;
    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v7, v3}, Lcom/android/camera/imageprocessor/PostProcessor;->access$600(Lcom/android/camera/imageprocessor/PostProcessor;Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;)V

    .line 283
    iget-object v8, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    .line 284
    invoke-static {v7}, Lcom/android/camera/imageprocessor/PostProcessor;->access$500(Lcom/android/camera/imageprocessor/PostProcessor;)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v7

    sget-object v9, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v7, v9}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 283
    invoke-static {v8, v10, v11}, Lcom/android/camera/imageprocessor/PostProcessor;->access$700(Lcom/android/camera/imageprocessor/PostProcessor;J)Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    move-result-object v1

    .line 285
    .local v1, "foundImage":Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getImage()Landroid/media/Image;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 286
    const-string v7, "PostProcessor"

    const-string v8, "ZSL fall off image is found"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v1}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getImage()Landroid/media/Image;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v9}, Lcom/android/camera/imageprocessor/PostProcessor;->access$500(Lcom/android/camera/imageprocessor/PostProcessor;)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/camera/imageprocessor/PostProcessor;->access$800(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 288
    invoke-virtual {v1}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getRawImage()Landroid/media/Image;

    move-result-object v5

    .line 289
    .local v5, "raw":Landroid/media/Image;
    if-eqz v5, :cond_5

    .line 290
    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v7, v5}, Lcom/android/camera/imageprocessor/PostProcessor;->access$900(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/media/Image;)V

    .line 292
    :cond_5
    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/camera/imageprocessor/PostProcessor;->access$402(Lcom/android/camera/imageprocessor/PostProcessor;Z)Z

    .line 293
    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v7}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1000(Lcom/android/camera/imageprocessor/PostProcessor;)V

    .line 294
    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/camera/imageprocessor/PostProcessor;->access$502(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/TotalCaptureResult;

    goto/16 :goto_0

    .line 296
    .end local v5    # "raw":Landroid/media/Image;
    :cond_6
    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v7}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1000(Lcom/android/camera/imageprocessor/PostProcessor;)V

    goto/16 :goto_0

    .line 301
    .end local v1    # "foundImage":Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;
    .end local v2    # "image":Landroid/media/Image;
    .end local v3    # "imageItem":Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;
    .end local v6    # "rawImage":Landroid/media/Image;
    :cond_7
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v2

    .line 302
    .restart local v2    # "image":Landroid/media/Image;
    const/4 v6, 0x0

    .line 303
    .restart local v6    # "rawImage":Landroid/media/Image;
    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v7}, Lcom/android/camera/imageprocessor/PostProcessor;->access$300(Lcom/android/camera/imageprocessor/PostProcessor;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mRawImageReader:Landroid/media/ImageReader;

    if-eqz v7, :cond_8

    .line 304
    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {v7}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v6

    .line 307
    :cond_8
    if-eqz v2, :cond_1

    .line 310
    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mMutureLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v7

    if-nez v7, :cond_9

    .line 311
    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 312
    if-eqz v6, :cond_1

    .line 313
    invoke-virtual {v6}, Landroid/media/Image;->close()V

    goto/16 :goto_0

    .line 317
    :cond_9
    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mImageWrapper:Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mImageWrapper:Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;

    invoke-virtual {v7}, Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;->isTaken()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 318
    :cond_a
    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v7}, Lcom/android/camera/imageprocessor/PostProcessor;->access$300(Lcom/android/camera/imageprocessor/PostProcessor;)Z

    move-result v7

    if-eqz v7, :cond_b

    if-eqz v6, :cond_b

    .line 319
    new-instance v7, Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;

    iget-object v8, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-direct {v7, v8, v2, v6}, Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;-><init>(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/media/Image;Landroid/media/Image;)V

    iput-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mImageWrapper:Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;

    .line 323
    :goto_1
    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mMutureLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->release()V

    .line 332
    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v7}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1100(Lcom/android/camera/imageprocessor/PostProcessor;)Landroid/os/Handler;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 333
    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v7}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1100(Lcom/android/camera/imageprocessor/PostProcessor;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 321
    :cond_b
    new-instance v7, Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;

    iget-object v8, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-direct {v7, v8, v2}, Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;-><init>(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/media/Image;)V

    iput-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mImageWrapper:Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;

    goto :goto_1

    .line 325
    :cond_c
    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 326
    if-eqz v6, :cond_d

    .line 327
    invoke-virtual {v6}, Landroid/media/Image;->close()V

    .line 329
    :cond_d
    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mMutureLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_0

    .line 336
    .end local v2    # "image":Landroid/media/Image;
    .end local v6    # "rawImage":Landroid/media/Image;
    :cond_e
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v2

    .line 337
    .restart local v2    # "image":Landroid/media/Image;
    const/4 v6, 0x0

    .line 338
    .restart local v6    # "rawImage":Landroid/media/Image;
    if-eqz v2, :cond_1

    .line 339
    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v7, v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1200(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/media/Image;)V

    .line 340
    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v7}, Lcom/android/camera/imageprocessor/PostProcessor;->access$300(Lcom/android/camera/imageprocessor/PostProcessor;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mRawImageReader:Landroid/media/ImageReader;

    if-eqz v7, :cond_f

    .line 341
    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {v7}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v6

    .line 343
    :cond_f
    if-eqz v6, :cond_1

    .line 344
    iget-object v7, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v7, v6}, Lcom/android/camera/imageprocessor/PostProcessor;->access$900(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/media/Image;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 358
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mImageWrapper:Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;

    invoke-virtual {v2}, Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;->getImage()Landroid/media/Image;

    move-result-object v0

    .line 359
    .local v0, "image":Landroid/media/Image;
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mImageWrapper:Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;

    invoke-virtual {v2}, Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;->getRawImage()Landroid/media/Image;

    move-result-object v1

    .line 361
    .local v1, "rawImage":Landroid/media/Image;
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mMutureLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 362
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$000(Lcom/android/camera/imageprocessor/PostProcessor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1300(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/ZSLQueue;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 364
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->access$1300(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/ZSLQueue;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/imageprocessor/ZSLQueue;->add(Landroid/media/Image;Landroid/media/Image;)V

    .line 367
    :cond_0
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mMutureLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setRawImageReader(Landroid/media/ImageReader;)V
    .locals 0
    .param p1, "rawImageReader"    # Landroid/media/ImageReader;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->mRawImageReader:Landroid/media/ImageReader;

    .line 374
    return-void
.end method
