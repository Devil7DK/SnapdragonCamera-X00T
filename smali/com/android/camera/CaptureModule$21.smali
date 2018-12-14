.class Lcom/android/camera/CaptureModule$21;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule;->startRecordingVideo(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;

.field final synthetic val$cameraId:I


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 3367
    iput-object p1, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    iput p2, p0, Lcom/android/camera/CaptureModule$21;->val$cameraId:I

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 3404
    iget-object v0, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    const-string v1, "Failed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3405
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 7
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    const/4 v6, 0x1

    .line 3371
    iget-object v3, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3, p1}, Lcom/android/camera/CaptureModule;->access$2802(Lcom/android/camera/CaptureModule;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 3372
    iget-object v3, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$2700(Lcom/android/camera/CaptureModule;)[Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/CaptureModule$21;->val$cameraId:I

    aput-object p1, v3, v4

    .line 3373
    iget-object v3, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    .line 3374
    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$2800(Lcom/android/camera/CaptureModule;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    .line 3376
    .local v2, "session":Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    .line 3377
    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$5400(Lcom/android/camera/CaptureModule;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/CaptureModule$21;->val$cameraId:I

    invoke-static {v3, v4}, Lcom/android/camera/util/CameraUtil;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;I)Ljava/util/List;

    move-result-object v1

    .line 3378
    .local v1, "list":Ljava/util/List;
    iget-object v3, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$3500(Lcom/android/camera/CaptureModule;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$2300(Lcom/android/camera/CaptureModule;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3392
    .end local v1    # "list":Ljava/util/List;
    :goto_0
    iget-object v3, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CaptureUI;->clearFocus()V

    .line 3393
    iget-object v3, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CaptureUI;->resetPauseButton()V

    .line 3394
    iget-object v3, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/camera/CaptureModule;->access$5502(Lcom/android/camera/CaptureModule;J)J

    .line 3395
    iget-object v3, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/camera/CaptureModule;->access$5602(Lcom/android/camera/CaptureModule;J)J

    .line 3396
    iget-object v3, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/CaptureUI;->enableShutter(Z)V

    .line 3397
    iget-object v3, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Lcom/android/camera/CaptureUI;->showRecordingUI(ZZ)V

    .line 3398
    iget-object v3, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$5700(Lcom/android/camera/CaptureModule;)V

    .line 3399
    iget-object v3, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$5800(Lcom/android/camera/CaptureModule;)V

    .line 3400
    return-void

    .line 3379
    :catch_0
    move-exception v0

    .line 3380
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v3, "SnapCam_CaptureModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to start high speed video recording "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3381
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3380
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3382
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0

    .line 3383
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :catch_1
    move-exception v0

    .line 3384
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "SnapCam_CaptureModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to start high speed video recording "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3385
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3384
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3386
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    .line 3387
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 3388
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v3, "SnapCam_CaptureModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to start high speed video recording "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3389
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3388
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3390
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0
.end method
