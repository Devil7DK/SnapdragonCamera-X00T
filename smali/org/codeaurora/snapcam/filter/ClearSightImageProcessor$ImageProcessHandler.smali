.class Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;
.super Landroid/os/Handler;
.source "ClearSightImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageProcessHandler"
.end annotation


# instance fields
.field private mBayerCaptureResults:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field private mBayerFrames:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;",
            ">;"
        }
    .end annotation
.end field

.field private mBayerImages:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptureDone:Z

.field private mHasFailures:Z

.field private mMonoCaptureResults:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field private mMonoFrames:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;",
            ">;"
        }
    .end annotation
.end field

.field private mMonoImages:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mNamedEntity:Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

.field private mNumImagesToProcess:[I

.field private mReprocessedBayerCount:I

.field private mReprocessedMonoCount:I

.field private mReprocessingFrames:[Landroid/util/SparseLongArray;

.field private mReprocessingPairCount:I

.field private mReprocessingRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;


# direct methods
.method constructor <init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/os/Looper;)V
    .locals 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x2

    .line 527
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 528
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 504
    new-instance v0, Ljava/util/ArrayDeque;

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 505
    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    .line 506
    new-instance v0, Ljava/util/ArrayDeque;

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 507
    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    .line 508
    new-instance v0, Ljava/util/ArrayDeque;

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 509
    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerCaptureResults:Ljava/util/ArrayDeque;

    .line 510
    new-instance v0, Ljava/util/ArrayDeque;

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 511
    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoCaptureResults:Ljava/util/ArrayDeque;

    .line 512
    new-instance v0, Ljava/util/ArrayDeque;

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 513
    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerImages:Ljava/util/ArrayDeque;

    .line 514
    new-instance v0, Ljava/util/ArrayDeque;

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 515
    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoImages:Ljava/util/ArrayDeque;

    .line 517
    new-array v0, v2, [Landroid/util/SparseLongArray;

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:[Landroid/util/SparseLongArray;

    .line 518
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingRequests:Ljava/util/ArrayList;

    .line 523
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    .line 529
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:[Landroid/util/SparseLongArray;

    const/4 v1, 0x0

    new-instance v2, Landroid/util/SparseLongArray;

    invoke-direct {v2}, Landroid/util/SparseLongArray;-><init>()V

    aput-object v2, v0, v1

    .line 530
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:[Landroid/util/SparseLongArray;

    const/4 v1, 0x1

    new-instance v2, Landroid/util/SparseLongArray;

    invoke-direct {v2}, Landroid/util/SparseLongArray;-><init>()V

    aput-object v2, v0, v1

    .line 531
    return-void
.end method

.method private checkForValidFramePairAndReprocess()V
    .locals 14

    .prologue
    .line 696
    const-string v10, "ClearSightImageProcessor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkForValidFramePair - num bayer frames: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    .line 698
    invoke-virtual {v12}, Ljava/util/ArrayDeque;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " num mono frames: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    .line 699
    invoke-virtual {v12}, Ljava/util/ArrayDeque;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 696
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v10, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 703
    iget-object v10, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    .line 704
    .local v0, "bayer":Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;
    iget-object v10, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    .line 706
    .local v1, "mono":Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;
    iget-object v10, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v10, v11}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 707
    .local v4, "bayerTsSOF":J
    iget-object v10, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v10, v11}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    add-long v2, v4, v10

    .line 709
    .local v2, "bayerTsEOF":J
    iget-object v10, v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v10, v11}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 710
    .local v8, "monoTsSOF":J
    iget-object v10, v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v10, v11}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    add-long v6, v8, v10

    .line 714
    .local v6, "monoTsEOF":J
    const-string v10, "ClearSightImageProcessor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkForValidFramePair - bayer ts SOF: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", EOF: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mono ts SOF: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", EOF: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const-string v10, "ClearSightImageProcessor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkForValidFramePair - difference SOF: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v12, v4, v8

    .line 720
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", EOF: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v12, v2, v6

    .line 721
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 718
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    sub-long v10, v4, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    iget-object v12, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v12}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1000(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-lez v10, :cond_2

    sub-long v10, v2, v6

    .line 724
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    iget-object v12, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v12}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1000(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-lez v10, :cond_2

    .line 725
    cmp-long v10, v4, v8

    if-lez v10, :cond_1

    .line 726
    const-string v10, "ClearSightImageProcessor"

    const-string v11, "checkForValidFramePair - toss mono"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v10, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "mono":Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;
    check-cast v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    .line 729
    .restart local v1    # "mono":Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;
    iget-object v10, v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v10}, Landroid/media/Image;->close()V

    .line 743
    .end local v0    # "bayer":Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;
    .end local v1    # "mono":Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;
    .end local v2    # "bayerTsEOF":J
    .end local v4    # "bayerTsSOF":J
    .end local v6    # "monoTsEOF":J
    .end local v8    # "monoTsSOF":J
    :cond_0
    :goto_0
    return-void

    .line 731
    .restart local v0    # "bayer":Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;
    .restart local v1    # "mono":Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;
    .restart local v2    # "bayerTsEOF":J
    .restart local v4    # "bayerTsSOF":J
    .restart local v6    # "monoTsEOF":J
    .restart local v8    # "monoTsSOF":J
    :cond_1
    const-string v10, "ClearSightImageProcessor"

    const-string v11, "checkForValidFramePair - toss bayer"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v10, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bayer":Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;
    check-cast v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    .line 734
    .restart local v0    # "bayer":Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;
    iget-object v10, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v10}, Landroid/media/Image;->close()V

    goto :goto_0

    .line 738
    :cond_2
    const/4 v11, 0x0

    iget-object v10, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    invoke-direct {p0, v11, v10}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->sendReprocessRequest(ILorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;)V

    .line 739
    const/4 v11, 0x1

    iget-object v10, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    invoke-direct {p0, v11, v10}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->sendReprocessRequest(ILorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;)V

    .line 740
    iget v10, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingPairCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingPairCount:I

    goto :goto_0
.end method

.method private checkReprocessDone()V
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 910
    const-string v2, "ClearSightImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkReprocessDone capture done: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mCaptureDone:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reproc frames[bay]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:[Landroid/util/SparseLongArray;

    aget-object v4, v4, v1

    .line 911
    invoke-virtual {v4}, Landroid/util/SparseLongArray;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reproc frames[mono]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:[Landroid/util/SparseLongArray;

    aget-object v4, v4, v0

    .line 912
    invoke-virtual {v4}, Landroid/util/SparseLongArray;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mReprocessingRequests: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingRequests:Ljava/util/ArrayList;

    .line 913
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 910
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-boolean v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mCaptureDone:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:[Landroid/util/SparseLongArray;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:[Landroid/util/SparseLongArray;

    aget-object v2, v2, v0

    .line 916
    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingRequests:Ljava/util/ArrayList;

    .line 917
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 918
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$700(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;

    move-result-object v2

    iget-boolean v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mHasFailures:Z

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {v2, v5, v0, v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 919
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    .line 920
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    .line 921
    iput-boolean v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mCaptureDone:Z

    .line 922
    iput-boolean v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mHasFailures:Z

    .line 926
    invoke-virtual {p0, v5}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    .line 930
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 918
    goto :goto_0

    .line 928
    :cond_1
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->kickTimeout()V

    goto :goto_1
.end method

.method private handleTimeout()V
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 575
    const-string v0, "ClearSightImageProcessor"

    const-string v1, "handleTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->releaseBayerFrames()V

    .line 577
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->releaseMonoFrames()V

    .line 578
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:[Landroid/util/SparseLongArray;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->clear()V

    .line 579
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:[Landroid/util/SparseLongArray;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->clear()V

    .line 580
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 582
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    .line 583
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    .line 584
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    .line 585
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    .line 586
    invoke-virtual {p0, v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    .line 589
    iput-boolean v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mCaptureDone:Z

    .line 590
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$700(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;

    move-result-object v0

    invoke-virtual {v0, v4, v3, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 591
    return-void
.end method

.method private kickTimeout()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 594
    invoke-virtual {p0, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    .line 595
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$800(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 596
    return-void
.end method

.method private processFinalPair()V
    .locals 2

    .prologue
    .line 839
    const-string v0, "ClearSightImageProcessor"

    const-string v1, "processFinalPair"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->releaseBayerFrames()V

    .line 841
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->releaseMonoFrames()V

    .line 843
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    .line 844
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    .line 846
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mCaptureDone:Z

    .line 848
    iget v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingPairCount:I

    if-nez v0, :cond_0

    .line 850
    const-string v0, "ClearSightImageProcessor"

    const-string v1, "processFinalPair - no matching pairs found"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    .line 852
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;->onClearSightFailure([B)V

    .line 854
    :cond_0
    return-void
.end method

.method private processImg(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 599
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 600
    .local v0, "camId":I
    const-string v2, "ClearSightImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processImg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/Image;

    .line 602
    .local v1, "image":Landroid/media/Image;
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:[Landroid/util/SparseLongArray;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:[Landroid/util/SparseLongArray;

    aget-object v2, v2, v0

    .line 603
    invoke-virtual {v1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseLongArray;->indexOfValue(J)I

    move-result v2

    if-ltz v2, :cond_0

    .line 605
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->processNewReprocessImage(Landroid/os/Message;)V

    .line 610
    :goto_0
    return-void

    .line 608
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->processNewCaptureEvent(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private processNewCaptureEvent(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 613
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->kickTimeout()V

    .line 616
    iget-boolean v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mCaptureDone:Z

    if-eqz v7, :cond_1

    .line 617
    const-string v7, "ClearSightImageProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processNewCaptureEvent - captureDone - we already have required frame pairs "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget v7, p1, Landroid/os/Message;->what:I

    if-ne v7, v10, :cond_0

    .line 619
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/media/Image;

    .line 620
    .local v3, "image":Landroid/media/Image;
    const-string v7, "ClearSightImageProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processNewCaptureEvent - captureDone - tossed frame ts: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 690
    .end local v3    # "image":Landroid/media/Image;
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_3

    .line 631
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerImages:Ljava/util/ArrayDeque;

    .line 632
    .local v4, "imageQueue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/Image;>;"
    iget-object v6, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerCaptureResults:Ljava/util/ArrayDeque;

    .line 633
    .local v6, "resultQueue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/hardware/camera2/TotalCaptureResult;>;"
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    .line 640
    .local v0, "frameQueue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;>;"
    :goto_1
    iget v7, p1, Landroid/os/Message;->what:I

    if-ne v7, v10, :cond_4

    .line 641
    const-string v7, "ClearSightImageProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processNewCaptureEvent - newImg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/media/Image;

    .line 643
    .restart local v3    # "image":Landroid/media/Image;
    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 653
    .end local v3    # "image":Landroid/media/Image;
    :goto_2
    const-string v7, "ClearSightImageProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processNewCaptureEvent - cam: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " num imgs: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 654
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " num results: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 653
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 657
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/Image;

    .line 658
    .local v1, "headImage":Landroid/media/Image;
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/TotalCaptureResult;

    .line 659
    .local v2, "headResult":Landroid/hardware/camera2/TotalCaptureResult;
    new-instance v7, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    invoke-direct {v7, v1, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;-><init>(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 660
    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    iget v8, p1, Landroid/os/Message;->arg1:I

    aget v9, v7, v8

    add-int/lit8 v9, v9, -0x1

    aput v9, v7, v8

    .line 661
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->checkForValidFramePairAndReprocess()V

    .line 665
    .end local v1    # "headImage":Landroid/media/Image;
    .end local v2    # "headResult":Landroid/hardware/camera2/TotalCaptureResult;
    :cond_2
    const-string v7, "ClearSightImageProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processNewCaptureEvent - imagestoprocess[bayer] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    aget v9, v9, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " imagestoprocess[mono]: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mReprocessingPairCount: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingPairCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mNumFrameCount: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 669
    invoke-static {v9}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$900(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mFinishReprocessNum: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 670
    invoke-static {v9}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$500(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 665
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    aget v7, v7, v11

    if-nez v7, :cond_6

    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    aget v7, v7, v10

    if-nez v7, :cond_6

    iget v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingPairCount:I

    iget-object v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 674
    invoke-static {v8}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$900(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v8

    if-eq v7, v8, :cond_6

    .line 675
    :goto_3
    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    iget v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingPairCount:I

    iget-object v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 676
    invoke-static {v8}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$900(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v8

    if-eq v7, v8, :cond_6

    .line 677
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->checkForValidFramePairAndReprocess()V

    goto :goto_3

    .line 635
    .end local v0    # "frameQueue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;>;"
    .end local v4    # "imageQueue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/Image;>;"
    .end local v6    # "resultQueue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/hardware/camera2/TotalCaptureResult;>;"
    :cond_3
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoImages:Ljava/util/ArrayDeque;

    .line 636
    .restart local v4    # "imageQueue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/media/Image;>;"
    iget-object v6, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoCaptureResults:Ljava/util/ArrayDeque;

    .line 637
    .restart local v6    # "resultQueue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/hardware/camera2/TotalCaptureResult;>;"
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    .restart local v0    # "frameQueue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;>;"
    goto/16 :goto_1

    .line 644
    :cond_4
    iget v7, p1, Landroid/os/Message;->what:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_5

    .line 645
    const-string v7, "ClearSightImageProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processNewCaptureEvent - new failed result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    iget v8, p1, Landroid/os/Message;->arg1:I

    aget v9, v7, v8

    add-int/lit8 v9, v9, -0x1

    aput v9, v7, v8

    goto/16 :goto_2

    .line 648
    :cond_5
    const-string v7, "ClearSightImageProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processNewCaptureEvent - newResult: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/TotalCaptureResult;

    .line 650
    .local v5, "result":Landroid/hardware/camera2/TotalCaptureResult;
    invoke-virtual {v6, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 681
    .end local v5    # "result":Landroid/hardware/camera2/TotalCaptureResult;
    :cond_6
    iget v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingPairCount:I

    iget-object v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v8}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$900(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v8

    if-eq v7, v8, :cond_7

    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    aget v7, v7, v11

    if-nez v7, :cond_0

    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    aget v7, v7, v10

    if-nez v7, :cond_0

    .line 684
    :cond_7
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->processFinalPair()V

    .line 685
    iget v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingPairCount:I

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 686
    invoke-static {v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$500(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v7

    iget v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingPairCount:I

    mul-int/lit8 v8, v8, 0x2

    if-ne v7, v8, :cond_0

    .line 687
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->checkReprocessDone()V

    goto/16 :goto_0
.end method

.method private processNewReprocessFailure(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 899
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 900
    .local v0, "camId":I
    const-string v2, "ClearSightImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processNewReprocessFailure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/camera2/CaptureFailure;

    .line 902
    .local v1, "failure":Landroid/hardware/camera2/CaptureFailure;
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureFailure;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 903
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:[Landroid/util/SparseLongArray;

    aget-object v2, v2, v0

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Landroid/util/SparseLongArray;->delete(I)V

    .line 904
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mHasFailures:Z

    .line 905
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$508(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    .line 906
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->checkReprocessDone()V

    .line 907
    return-void
.end method

.method private processNewReprocessImage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 857
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_2

    const/4 v3, 0x1

    .line 859
    .local v3, "isBayer":Z
    :goto_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/media/Image;

    .line 860
    .local v2, "image":Landroid/media/Image;
    invoke-virtual {v2}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v10

    .line 861
    .local v10, "ts":J
    iget v8, p1, Landroid/os/Message;->arg1:I

    .line 862
    .local v8, "camId":I
    const-string v0, "ClearSightImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processNewReprocessImage - cam: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", ts: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    if-eqz v3, :cond_3

    iget v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessedBayerCount:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessedBayerCount:I

    .line 865
    .local v5, "frameCount":I
    :goto_1
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1500(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1600(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/MediaSaveService;

    move-result-object v1

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNamedEntity:Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    const-wide/32 v6, 0xf4240

    div-long v6, v10, v6

    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->saveDebugImageAsJpeg(Lcom/android/camera/MediaSaveService;Landroid/media/Image;ZLcom/android/camera/PhotoModule$NamedImages$NamedEntity;IJ)V

    .line 869
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1700(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 870
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNamedEntity:Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    const-wide/32 v6, 0xf4240

    div-long v6, v10, v6

    invoke-virtual/range {v1 .. v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->saveDebugImageAsNV21(Landroid/media/Image;ZLcom/android/camera/PhotoModule$NamedImages$NamedEntity;IJ)V

    .line 873
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$700(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;

    move-result-object v0

    const/4 v1, 0x1

    iget v4, p1, Landroid/os/Message;->arg1:I

    const/4 v6, 0x0

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v4, v6, v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 874
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 876
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:[Landroid/util/SparseLongArray;

    aget-object v0, v0, v8

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:[Landroid/util/SparseLongArray;

    aget-object v1, v1, v8

    invoke-virtual {v1, v10, v11}, Landroid/util/SparseLongArray;->indexOfValue(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 877
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->checkReprocessDone()V

    .line 878
    return-void

    .line 857
    .end local v2    # "image":Landroid/media/Image;
    .end local v3    # "isBayer":Z
    .end local v5    # "frameCount":I
    .end local v8    # "camId":I
    .end local v10    # "ts":J
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 863
    .restart local v2    # "image":Landroid/media/Image;
    .restart local v3    # "isBayer":Z
    .restart local v8    # "camId":I
    .restart local v10    # "ts":J
    :cond_3
    iget v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessedMonoCount:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessedMonoCount:I

    goto :goto_1
.end method

.method private processNewReprocessResult(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 881
    const-string v3, "ClearSightImageProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processNewReprocessResult: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 883
    .local v0, "isBayer":Z
    :goto_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/camera2/TotalCaptureResult;

    .line 884
    .local v1, "result":Landroid/hardware/camera2/TotalCaptureResult;
    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 886
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v3

    .line 887
    invoke-virtual {v3, v0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getReferenceResult(Z)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v3

    if-nez v3, :cond_0

    .line 889
    const-string v3, "ClearSightImageProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reprocess - setReferenceResult: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->setReferenceResult(ZLandroid/hardware/camera2/TotalCaptureResult;)V

    .line 891
    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$200(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;

    move-result-object v3

    const/4 v4, 0x4

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v2, v6}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 892
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 894
    :cond_0
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$508(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    .line 895
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->checkReprocessDone()V

    .line 896
    return-void

    .end local v0    # "isBayer":Z
    .end local v1    # "result":Landroid/hardware/camera2/TotalCaptureResult;
    :cond_1
    move v0, v2

    .line 882
    goto :goto_0
.end method

.method private releaseBayerFrames()V
    .locals 4

    .prologue
    .line 809
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    .line 810
    .local v1, "reprocImg":Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;
    iget-object v3, v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->close()V

    goto :goto_0

    .line 813
    .end local v1    # "reprocImg":Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;
    :cond_0
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 815
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerImages:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Image;

    .line 816
    .local v0, "img":Landroid/media/Image;
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    goto :goto_1

    .line 819
    .end local v0    # "img":Landroid/media/Image;
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerImages:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 820
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerCaptureResults:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 821
    return-void
.end method

.method private releaseMonoFrames()V
    .locals 4

    .prologue
    .line 824
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    .line 825
    .local v1, "reprocImg":Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;
    iget-object v3, v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->close()V

    goto :goto_0

    .line 828
    .end local v1    # "reprocImg":Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;
    :cond_0
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 830
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoImages:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Image;

    .line 831
    .local v0, "img":Landroid/media/Image;
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    goto :goto_1

    .line 834
    .end local v0    # "img":Landroid/media/Image;
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoImages:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 835
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoCaptureResults:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 836
    return-void
.end method

.method private sendReprocessRequest(ILorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;)V
    .locals 12
    .param p1, "camId"    # I
    .param p2, "reprocImg"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    .prologue
    .line 746
    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1100(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v7

    aget-object v5, v7, p1

    .line 747
    .local v5, "session":Landroid/hardware/camera2/CameraCaptureSession;
    invoke-virtual {v5}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    .line 750
    .local v0, "device":Landroid/hardware/camera2/CameraDevice;
    :try_start_0
    const-string v7, "ClearSightImageProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendReprocessRequest - cam: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v7, p2, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    .line 752
    invoke-virtual {v0, v7}, Landroid/hardware/camera2/CameraDevice;->createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    .line 753
    .local v3, "reprocRequest":Landroid/hardware/camera2/CaptureRequest$Builder;
    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1200(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/media/ImageReader;

    move-result-object v7

    aget-object v7, v7, p1

    .line 754
    invoke-virtual {v7}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v7

    .line 753
    invoke-virtual {v3, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 755
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v8, 0x2

    .line 756
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 755
    invoke-virtual {v3, v7, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 757
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v8, 0x2

    .line 758
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 757
    invoke-virtual {v3, v7, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 759
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v8, 0x2

    .line 760
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 759
    invoke-virtual {v3, v7, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 762
    iget-object v7, p2, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v7}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 763
    .local v6, "ts":Ljava/lang/Long;
    invoke-virtual {v6}, Ljava/lang/Long;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 764
    .local v2, "hash":Ljava/lang/Integer;
    invoke-virtual {v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 765
    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:[Landroid/util/SparseLongArray;

    aget-object v7, v7, p1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v7, v8, v10, v11}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 766
    const-string v7, "ClearSightImageProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendReprocessRequest - adding reproc frame - hash: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", ts: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$1300(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/media/ImageWriter;

    move-result-object v7

    aget-object v7, v7, p1

    iget-object v8, p2, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v7, v8}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    .line 770
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    .line 771
    .local v4, "request":Landroid/hardware/camera2/CaptureRequest;
    new-instance v7, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler$1;

    invoke-direct {v7, p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler$1;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;I)V

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v7, v8}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 802
    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingRequests:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    .end local v2    # "hash":Ljava/lang/Integer;
    .end local v3    # "reprocRequest":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v4    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v6    # "ts":Ljava/lang/Long;
    :goto_0
    return-void

    .line 803
    :catch_0
    move-exception v1

    .line 804
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 535
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$000(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    :goto_0
    return-void

    .line 537
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 539
    :pswitch_0
    iput-boolean v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mCaptureDone:Z

    .line 540
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0, v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$502(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;I)I

    .line 541
    iput-boolean v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mHasFailures:Z

    .line 542
    iput v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingPairCount:I

    .line 543
    iput v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessedBayerCount:I

    .line 544
    iput v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessedMonoCount:I

    .line 545
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    aput v2, v0, v1

    .line 546
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$600(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(J)V

    .line 547
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$600(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/PhotoModule$NamedImages;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNamedEntity:Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    .line 548
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$700(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNamedEntity:Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    invoke-virtual {v0, v4, v4, v4, v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 549
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 550
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->access$200(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 554
    :pswitch_1
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->handleTimeout()V

    goto :goto_0

    .line 557
    :pswitch_2
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->processImg(Landroid/os/Message;)V

    goto :goto_0

    .line 560
    :pswitch_3
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->processNewCaptureEvent(Landroid/os/Message;)V

    goto :goto_0

    .line 563
    :pswitch_4
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->processNewReprocessResult(Landroid/os/Message;)V

    goto :goto_0

    .line 566
    :pswitch_5
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->processNewCaptureEvent(Landroid/os/Message;)V

    goto :goto_0

    .line 569
    :pswitch_6
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->processNewReprocessFailure(Landroid/os/Message;)V

    goto :goto_0

    .line 537
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method
