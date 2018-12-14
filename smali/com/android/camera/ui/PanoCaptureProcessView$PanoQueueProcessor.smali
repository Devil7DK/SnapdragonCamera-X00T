.class Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;
.super Ljava/lang/Thread;
.source "PanoCaptureProcessView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PanoCaptureProcessView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PanoQueueProcessor"
.end annotation


# instance fields
.field private lock:Ljava/lang/Object;

.field private queue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/camera/ui/PanoCaptureProcessView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/PanoCaptureProcessView;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 465
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->lock:Ljava/lang/Object;

    .line 467
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    sget v1, Lcom/android/camera/ui/PanoCaptureProcessView;->MAX_PANO_FRAME:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 468
    return-void
.end method

.method private doTask(Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;)V
    .locals 10
    .param p1, "bitmapTask"    # Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;

    .prologue
    const/4 v9, 0x0

    .line 516
    const/4 v7, -0x1

    .line 517
    .local v7, "rtv":I
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$700(Lcom/android/camera/ui/PanoCaptureProcessView;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$800(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;

    move-result-object v0

    if-nez v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    new-instance v1, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;

    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    const v3, 0x12d000

    invoke-direct {v1, v2, v3}, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;-><init>(Lcom/android/camera/ui/PanoCaptureProcessView;I)V

    invoke-static {v0, v1}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$802(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;)Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v0}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$800(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;->reset()V

    .line 522
    iget-object v0, p1, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;->bitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$800(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 523
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v1}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$800(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v2}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$800(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;->size()I

    move-result v2

    iget v3, p1, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;->x:I

    iget v4, p1, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;->y:I

    const/4 v5, 0x0

    iget v6, p1, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;->dir:I

    invoke-static/range {v0 .. v6}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$900(Lcom/android/camera/ui/PanoCaptureProcessView;[BIIIII)I

    move-result v7

    .line 525
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    if-gez v7, :cond_1

    .line 527
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$602(Lcom/android/camera/ui/PanoCaptureProcessView;Z)Z

    .line 528
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v1}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1000(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0297

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v9, v1}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1100(Lcom/android/camera/ui/PanoCaptureProcessView;ZLjava/lang/String;)V

    .line 529
    invoke-static {}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Keyframe return value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;->clear()V

    .line 532
    return-void

    .line 525
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private waitTillNotFull()V
    .locals 2

    .prologue
    .line 472
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v0

    sget v1, Lcom/android/camera/ui/PanoCaptureProcessView;->MAX_PANO_FRAME:I

    if-ge v0, v1, :cond_0

    .line 473
    return-void
.end method


# virtual methods
.method public addTask(Landroid/graphics/Bitmap;III)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "dir"    # I

    .prologue
    .line 510
    invoke-direct {p0}, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->waitTillNotFull()V

    .line 511
    new-instance v0, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;-><init>(Lcom/android/camera/ui/PanoCaptureProcessView;Landroid/graphics/Bitmap;III)V

    .line 512
    .local v0, "bt":Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 513
    return-void
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 495
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 496
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    const/4 v0, 0x0

    monitor-exit v1

    .line 499
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 500
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public queueClear()V
    .locals 1

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->interrupt()V

    .line 505
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 506
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 482
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;

    .line 483
    .local v0, "bt":Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v1}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$600(Lcom/android/camera/ui/PanoCaptureProcessView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 485
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->doTask(Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;)V

    .line 487
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 488
    .end local v0    # "bt":Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
