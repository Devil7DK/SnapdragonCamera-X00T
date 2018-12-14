.class public interface abstract Lcom/android/camera/CameraManager$CameraProxy;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraProxy"
.end annotation


# virtual methods
.method public abstract addCallbackBuffer([B)V
.end method

.method public abstract autoFocus(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraAFCallback;)V
.end method

.method public abstract cancelAutoFocus()V
.end method

.method public abstract enableShutterSound(Z)V
.end method

.method public abstract getCamera()Landroid/hardware/Camera;
.end method

.method public abstract getParameters()Landroid/hardware/Camera$Parameters;
.end method

.method public abstract lock()V
.end method

.method public abstract reconnect(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraOpenErrorCallback;)Z
.end method

.method public abstract refreshParameters()V
.end method

.method public abstract release()V
.end method

.method public abstract sendHistogramData()V
.end method

.method public abstract setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraAFMoveCallback;)V
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation
.end method

.method public abstract setDisplayOrientation(I)V
.end method

.method public abstract setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
.end method

.method public abstract setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;)V
.end method

.method public abstract setHistogramMode(Landroid/hardware/Camera$CameraDataCallback;)V
.end method

.method public abstract setLongshot(Z)V
.end method

.method public abstract setMetadataCb(Landroid/hardware/Camera$CameraMetaDataCallback;)V
.end method

.method public abstract setOneShotPreviewCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraPreviewDataCallback;)V
.end method

.method public abstract setParameters(Landroid/hardware/Camera$Parameters;)V
.end method

.method public abstract setPreviewDataCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraPreviewDataCallback;)V
.end method

.method public abstract setPreviewDataCallbackWithBuffer(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraPreviewDataCallback;)V
.end method

.method public abstract setPreviewDisplay(Landroid/view/SurfaceHolder;)V
.end method

.method public abstract setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
.end method

.method public abstract setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
.end method

.method public abstract startFaceDetection()V
.end method

.method public abstract startPreview()V
.end method

.method public abstract stopFaceDetection()V
.end method

.method public abstract stopPreview()V
.end method

.method public abstract takePicture(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraShutterCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;)V
.end method

.method public abstract unlock()V
.end method
