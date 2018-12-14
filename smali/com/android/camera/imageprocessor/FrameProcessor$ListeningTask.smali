.class Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;
.super Ljava/lang/Object;
.source "FrameProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/imageprocessor/FrameProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListeningTask"
.end annotation


# instance fields
.field bVUSize:I

.field bYSize:I

.field mBVU:Ljava/nio/ByteBuffer;

.field mBY:Ljava/nio/ByteBuffer;

.field mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

.field mHeight:I

.field mMutureLock:Ljava/util/concurrent/Semaphore;

.field mStride:I

.field mWidth:I

.field final synthetic this$0:Lcom/android/camera/imageprocessor/FrameProcessor;


# direct methods
.method constructor <init>(Lcom/android/camera/imageprocessor/FrameProcessor;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/camera/imageprocessor/FrameProcessor;

    .prologue
    const/4 v0, 0x0

    .line 447
    iput-object p1, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->mBY:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->mBVU:Ljava/nio/ByteBuffer;

    .line 453
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->mMutureLock:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v0}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$200(Lcom/android/camera/imageprocessor/FrameProcessor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->mMutureLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 489
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->mBY:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 490
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->mBVU:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 491
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    iget v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->mWidth:I

    iget v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->mHeight:I

    iget v3, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->mStride:I

    iget v4, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->mStride:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->init(IIII)V

    .line 492
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    instance-of v0, v0, Lcom/android/camera/imageprocessor/filter/BeautificationFilter;

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->mBY:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->mBVU:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Boolean;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->addImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILjava/lang/Object;)V

    .line 497
    :goto_1
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->mMutureLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 498
    :catch_0
    move-exception v0

    goto :goto_0

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->mBY:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->mBVU:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Boolean;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->addImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public setParam(Lcom/android/camera/imageprocessor/filter/ImageFilter;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)Z
    .locals 2
    .param p1, "filter"    # Lcom/android/camera/imageprocessor/filter/ImageFilter;
    .param p2, "bY"    # Ljava/nio/ByteBuffer;
    .param p3, "bVU"    # Ljava/nio/ByteBuffer;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "stride"    # I

    .prologue
    const/4 v0, 0x0

    .line 456
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->this$0:Lcom/android/camera/imageprocessor/FrameProcessor;

    invoke-static {v1}, Lcom/android/camera/imageprocessor/FrameProcessor;->access$200(Lcom/android/camera/imageprocessor/FrameProcessor;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 479
    :cond_0
    :goto_0
    return v0

    .line 459
    :cond_1
    iget-object v1, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->mMutureLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    iput-object p1, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    .line 463
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->mBY:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->bYSize:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 464
    :cond_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iput v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->bYSize:I

    .line 465
    iget v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->bYSize:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->mBY:Ljava/nio/ByteBuffer;

    .line 467
    :cond_3
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->mBVU:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->bVUSize:I

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 468
    :cond_4
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iput v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->bVUSize:I

    .line 469
    iget v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->bVUSize:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->mBVU:Ljava/nio/ByteBuffer;

    .line 471
    :cond_5
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->mBY:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 472
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->mBVU:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 473
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->mBY:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 474
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->mBVU:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 475
    iput p4, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->mWidth:I

    .line 476
    iput p5, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->mHeight:I

    .line 477
    iput p6, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->mStride:I

    .line 478
    iget-object v0, p0, Lcom/android/camera/imageprocessor/FrameProcessor$ListeningTask;->mMutureLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 479
    const/4 v0, 0x1

    goto :goto_0
.end method
