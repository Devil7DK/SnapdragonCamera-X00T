.class Lcom/android/camera/CaptureModule$3;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method

.method private processCaptureResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 3
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 563
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 565
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$800(Lcom/android/camera/CaptureModule;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 566
    iget-object v1, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    new-instance v2, Lcom/android/camera/CaptureModule$3$1;

    invoke-direct {v2, p0}, Lcom/android/camera/CaptureModule$3$1;-><init>(Lcom/android/camera/CaptureModule$3;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 572
    iget-object v1, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/camera/CaptureModule;->access$802(Lcom/android/camera/CaptureModule;Z)Z

    .line 574
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 575
    iget-object v1, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1, p1}, Lcom/android/camera/CaptureModule;->access$1002(Lcom/android/camera/CaptureModule;Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;

    .line 577
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1, v0, p1}, Lcom/android/camera/CaptureModule;->access$1100(Lcom/android/camera/CaptureModule;ILandroid/hardware/camera2/CaptureResult;)V

    .line 578
    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 8
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 600
    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 601
    .local v2, "id":I
    iget-object v3, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-virtual {v3}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 602
    iget-object v3, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3, p3}, Lcom/android/camera/CaptureModule;->access$1200(Lcom/android/camera/CaptureModule;Landroid/hardware/camera2/CaptureResult;)V

    .line 603
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/Face;

    .line 604
    .local v0, "faces":[Landroid/hardware/camera2/params/Face;
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$1300(Lcom/android/camera/CaptureModule;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 605
    iget-object v3, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    iget-object v4, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    array-length v5, v0

    invoke-static {v4, p3, v5}, Lcom/android/camera/CaptureModule;->access$1400(Lcom/android/camera/CaptureModule;Landroid/hardware/camera2/CaptureResult;I)[Lcom/android/camera/ExtendedFace;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/android/camera/CaptureModule;->access$1500(Lcom/android/camera/CaptureModule;[Landroid/hardware/camera2/params/Face;[Lcom/android/camera/ExtendedFace;)V

    .line 610
    .end local v0    # "faces":[Landroid/hardware/camera2/params/Face;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/SettingsManager;->isHistogramSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 611
    sget-object v3, Lcom/android/camera/CaptureModule;->histogramStats:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 612
    .local v1, "histogramStats":[I
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    iget-boolean v3, v3, Lcom/android/camera/CaptureModule;->mHiston:Z

    if-eqz v3, :cond_1

    .line 615
    sget-object v4, Lcom/android/camera/CaptureModule;->statsdata:[I

    monitor-enter v4

    .line 616
    const/4 v3, 0x0

    :try_start_0
    sget-object v5, Lcom/android/camera/CaptureModule;->statsdata:[I

    const/4 v6, 0x0

    const/16 v7, 0x400

    invoke-static {v1, v3, v5, v6, v7}, Ljava/lang/System;->arraycopy([II[III)V

    .line 617
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    iget-object v3, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$1600(Lcom/android/camera/CaptureModule;)V

    .line 621
    .end local v1    # "histogramStats":[I
    :cond_1
    iget-object v3, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3, v2, p3}, Lcom/android/camera/CaptureModule;->access$1700(Lcom/android/camera/CaptureModule;ILandroid/hardware/camera2/CaptureResult;)V

    .line 622
    invoke-direct {p0, p3}, Lcom/android/camera/CaptureModule$3;->processCaptureResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 623
    iget-object v3, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$1800(Lcom/android/camera/CaptureModule;)Lcom/android/camera/imageprocessor/PostProcessor;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/camera/imageprocessor/PostProcessor;->onMetaAvailable(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 624
    return-void

    .line 607
    .restart local v0    # "faces":[Landroid/hardware/camera2/params/Face;
    :cond_2
    iget-object v3, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lcom/android/camera/CaptureModule;->access$1500(Lcom/android/camera/CaptureModule;[Landroid/hardware/camera2/params/Face;[Lcom/android/camera/ExtendedFace;)V

    goto :goto_0

    .line 617
    .end local v0    # "faces":[Landroid/hardware/camera2/params/Face;
    .restart local v1    # "histogramStats":[I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 5
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 584
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 585
    .local v1, "id":I
    iget-object v2, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-virtual {v2}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 586
    iget-object v2, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2, p3}, Lcom/android/camera/CaptureModule;->access$1200(Lcom/android/camera/CaptureModule;Landroid/hardware/camera2/CaptureResult;)V

    .line 587
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/Face;

    .line 588
    .local v0, "faces":[Landroid/hardware/camera2/params/Face;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$1300(Lcom/android/camera/CaptureModule;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 589
    iget-object v2, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    iget-object v3, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    array-length v4, v0

    invoke-static {v3, p3, v4}, Lcom/android/camera/CaptureModule;->access$1400(Lcom/android/camera/CaptureModule;Landroid/hardware/camera2/CaptureResult;I)[Lcom/android/camera/ExtendedFace;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/android/camera/CaptureModule;->access$1500(Lcom/android/camera/CaptureModule;[Landroid/hardware/camera2/params/Face;[Lcom/android/camera/ExtendedFace;)V

    .line 594
    .end local v0    # "faces":[Landroid/hardware/camera2/params/Face;
    :cond_0
    :goto_0
    return-void

    .line 591
    .restart local v0    # "faces":[Landroid/hardware/camera2/params/Face;
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CaptureModule$3;->this$0:Lcom/android/camera/CaptureModule;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/android/camera/CaptureModule;->access$1500(Lcom/android/camera/CaptureModule;[Landroid/hardware/camera2/params/Face;[Lcom/android/camera/ExtendedFace;)V

    goto :goto_0
.end method
