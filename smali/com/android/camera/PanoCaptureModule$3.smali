.class Lcom/android/camera/PanoCaptureModule$3;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "PanoCaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoCaptureModule;->createSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoCaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoCaptureModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PanoCaptureModule;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/camera/PanoCaptureModule$3;->this$0:Lcom/android/camera/PanoCaptureModule;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 255
    const-string v0, "SnapCam_PanoCaptureModule"

    const-string v1, "Capture session configuration is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 5
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 238
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule$3;->this$0:Lcom/android/camera/PanoCaptureModule;

    invoke-static {v1}, Lcom/android/camera/PanoCaptureModule;->access$400(Lcom/android/camera/PanoCaptureModule;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    if-nez v1, :cond_0

    .line 239
    const-string v1, "SnapCam_PanoCaptureModule"

    const-string v2, "The camera is already closed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule$3;->this$0:Lcom/android/camera/PanoCaptureModule;

    invoke-static {v1, p1}, Lcom/android/camera/PanoCaptureModule;->access$702(Lcom/android/camera/PanoCaptureModule;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule$3;->this$0:Lcom/android/camera/PanoCaptureModule;

    invoke-static {v1}, Lcom/android/camera/PanoCaptureModule;->access$700(Lcom/android/camera/PanoCaptureModule;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PanoCaptureModule$3;->this$0:Lcom/android/camera/PanoCaptureModule;

    invoke-static {v2}, Lcom/android/camera/PanoCaptureModule;->access$800(Lcom/android/camera/PanoCaptureModule;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PanoCaptureModule$3;->this$0:Lcom/android/camera/PanoCaptureModule;

    .line 246
    invoke-static {v3}, Lcom/android/camera/PanoCaptureModule;->access$900(Lcom/android/camera/PanoCaptureModule;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/PanoCaptureModule$3;->this$0:Lcom/android/camera/PanoCaptureModule;

    invoke-static {v4}, Lcom/android/camera/PanoCaptureModule;->access$1000(Lcom/android/camera/PanoCaptureModule;)Landroid/os/Handler;

    move-result-object v4

    .line 245
    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v1, "SnapCam_PanoCaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCaptureSession: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
