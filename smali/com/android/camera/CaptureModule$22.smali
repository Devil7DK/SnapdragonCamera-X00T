.class Lcom/android/camera/CaptureModule$22;
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
    .line 3410
    iput-object p1, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    iput p2, p0, Lcom/android/camera/CaptureModule$22;->val$cameraId:I

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 3437
    iget-object v0, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    const-string v1, "Video Failed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3438
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 5
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 3414
    const-string v1, "SnapCam_CaptureModule"

    const-string v2, "StartRecordingVideo session onConfigured"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3415
    iget-object v1, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1, p1}, Lcom/android/camera/CaptureModule;->access$2802(Lcom/android/camera/CaptureModule;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 3416
    iget-object v1, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$2700(Lcom/android/camera/CaptureModule;)[Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/CaptureModule$22;->val$cameraId:I

    aput-object p1, v1, v2

    .line 3418
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    iget-object v2, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$5400(Lcom/android/camera/CaptureModule;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/CaptureModule$22;->val$cameraId:I

    invoke-static {v1, v2, v3}, Lcom/android/camera/CaptureModule;->access$5900(Lcom/android/camera/CaptureModule;Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 3419
    iget-object v1, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$2800(Lcom/android/camera/CaptureModule;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$5400(Lcom/android/camera/CaptureModule;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    .line 3420
    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$3500(Lcom/android/camera/CaptureModule;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$2300(Lcom/android/camera/CaptureModule;)Landroid/os/Handler;

    move-result-object v4

    .line 3419
    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3426
    :goto_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CaptureUI;->clearFocus()V

    .line 3427
    iget-object v1, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CaptureUI;->resetPauseButton()V

    .line 3428
    iget-object v1, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/camera/CaptureModule;->access$5502(Lcom/android/camera/CaptureModule;J)J

    .line 3429
    iget-object v1, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/camera/CaptureModule;->access$5602(Lcom/android/camera/CaptureModule;J)J

    .line 3430
    iget-object v1, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureUI;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CaptureUI;->showRecordingUI(ZZ)V

    .line 3431
    iget-object v1, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$5700(Lcom/android/camera/CaptureModule;)V

    .line 3432
    iget-object v1, p0, Lcom/android/camera/CaptureModule$22;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$5800(Lcom/android/camera/CaptureModule;)V

    .line 3433
    return-void

    .line 3421
    :catch_0
    move-exception v0

    .line 3422
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0

    .line 3423
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :catch_1
    move-exception v0

    .line 3424
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method
