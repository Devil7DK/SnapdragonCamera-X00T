.class Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;
.super Ljava/lang/Object;
.source "FrameProcessor.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/imageprocessor/FrameProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProcessingTask"
.end annotation


# instance fields
.field height:I

.field stride:I

.field final synthetic this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

.field width:I

.field ySize:I

.field yvuBytes:[B


# direct methods
.method public constructor <init>(Lcom/android/camera/imageprocessor/FrameProcessor;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/imageprocessor/FrameProcessor;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->yvuBytes:[B

    .line 368
    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 11
    .param p1, "reader"    # Landroid/media/ImageReader;

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$000(Lcom/android/camera/imageprocessor/FrameProcessor;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$100(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/renderscript/Allocation;

    move-result-object v0

    if-nez v0, :cond_0

    .line 374
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    :goto_0
    return-void

    .line 377
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 378
    .local v7, "image":Landroid/media/Image;
    if-nez v7, :cond_1

    .line 379
    :try_start_2
    monitor-exit v9

    goto :goto_0

    .line 423
    .end local v7    # "image":Landroid/media/Image;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 381
    .restart local v7    # "image":Landroid/media/Image;
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$200(Lcom/android/camera/imageprocessor/FrameProcessor;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 382
    invoke-virtual {v7}, Landroid/media/Image;->close()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 383
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 385
    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$302(Lcom/android/camera/imageprocessor/FrameProcessor;Z)Z

    .line 386
    invoke-virtual {v7}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 387
    .local v2, "bY":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v4, 0x2

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 388
    .local v3, "bVU":Ljava/nio/ByteBuffer;
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->yvuBytes:[B

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->width:I

    iget-object v4, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v4}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$400(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    if-ne v0, v4, :cond_3

    iget v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->height:I

    iget-object v4, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v4}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$400(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    if-eq v0, v4, :cond_4

    .line 389
    :cond_3
    invoke-virtual {v7}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v0

    iput v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->stride:I

    .line 390
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$400(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->width:I

    .line 391
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$400(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->height:I

    .line 392
    iget v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->stride:I

    iget-object v4, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v4}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$400(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    mul-int/2addr v0, v4

    iput v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->ySize:I

    .line 393
    iget v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->ySize:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->yvuBytes:[B

    .line 395
    :cond_4
    const/4 v8, 0x0

    .line 397
    .local v8, "needToFeedSurface":Z
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$500(Lcom/android/camera/imageprocessor/FrameProcessor;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/imageprocessor/filter/ImageFilter;

    .line 398
    .local v1, "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    invoke-interface {v1}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->isFrameListener()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 399
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$600(Lcom/android/camera/imageprocessor/FrameProcessor;)Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v4}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$400(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v5}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$400(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->stride:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->setParam(Lcom/android/camera/imageprocessor/filter/ImageFilter;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 400
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$700(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v4}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$600(Lcom/android/camera/imageprocessor/FrameProcessor;)Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 411
    :cond_5
    :goto_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 412
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 421
    .end local v1    # "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    .end local v2    # "bY":Ljava/nio/ByteBuffer;
    .end local v3    # "bVU":Ljava/nio/ByteBuffer;
    .end local v7    # "image":Landroid/media/Image;
    .end local v8    # "needToFeedSurface":Z
    :catch_0
    move-exception v0

    .line 423
    :goto_3
    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 403
    .restart local v1    # "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    .restart local v2    # "bY":Ljava/nio/ByteBuffer;
    .restart local v3    # "bVU":Ljava/nio/ByteBuffer;
    .restart local v7    # "image":Landroid/media/Image;
    .restart local v8    # "needToFeedSurface":Z
    :cond_6
    :try_start_7
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$400(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v4, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v4}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$400(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->stride:I

    iget v6, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->stride:I

    invoke-interface {v1, v0, v4, v5, v6}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->init(IIII)V

    .line 404
    instance-of v0, v1, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;

    if-eqz v0, :cond_7

    .line 405
    const/4 v0, 0x0

    new-instance v4, Ljava/lang/Boolean;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->addImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILjava/lang/Object;)V

    .line 409
    :goto_4
    const/4 v8, 0x1

    goto :goto_2

    .line 407
    :cond_7
    const/4 v0, 0x0

    new-instance v4, Ljava/lang/Boolean;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->addImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILjava/lang/Object;)V

    goto :goto_4

    .line 415
    .end local v1    # "filter":Lcom/android/camera/imageprocessor/filter/ImageFilter;
    :cond_8
    if-eqz v8, :cond_9

    .line 416
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->yvuBytes:[B

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v2, v0, v4, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 417
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->yvuBytes:[B

    iget v4, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->ySize:I

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v3, v0, v4, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 418
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$800(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 420
    :cond_9
    invoke-virtual {v7}, Landroid/media/Image;->close()V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3
.end method

.method public run()V
    .locals 6

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$000(Lcom/android/camera/imageprocessor/FrameProcessor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$200(Lcom/android/camera/imageprocessor/FrameProcessor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    monitor-exit v1

    .line 444
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$900(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/renderscript/Allocation;

    move-result-object v0

    if-nez v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    iget v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->stride:I

    iget v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->height:I

    iget v4, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->stride:I

    iget v5, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->width:I

    sub-int/2addr v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$1000(Lcom/android/camera/imageprocessor/FrameProcessor;III)V

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$900(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/renderscript/Allocation;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->yvuBytes:[B

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->copyFrom([B)V

    .line 436
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    iget-object v0, v0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRsRotator:Lcom/android/camera/imageprocessor/ScriptC_rotator;

    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$900(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/imageprocessor/ScriptC_rotator;->forEach_rotate90andMerge(Landroid/renderscript/Allocation;)V

    .line 437
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    iget-object v0, v0, Lcom/android/camera/imageprocessor/FrameProcessor;->mRsYuvToRGB:Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;

    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$100(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/imageprocessor/ScriptC_YuvToRgb;->forEach_nv21ToRgb(Landroid/renderscript/Allocation;)V

    .line 438
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$100(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->ioSend()V

    .line 439
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$1100(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/renderscript/Allocation;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 440
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$1100(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/renderscript/Allocation;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v2}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$100(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->copyFrom(Landroid/renderscript/Allocation;)V

    .line 441
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ProcessingTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$1100(Lcom/android/camera/imageprocessor/FrameProcessor;)Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->ioSend()V

    .line 443
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
