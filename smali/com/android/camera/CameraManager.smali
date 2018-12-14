.class public interface abstract Lcom/android/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraManager$CameraProxy;,
        Lcom/android/camera/CameraManager$CameraOpenErrorCallback;,
        Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;,
        Lcom/android/camera/CameraManager$CameraPreviewDataCallback;,
        Lcom/android/camera/CameraManager$CameraPictureCallback;,
        Lcom/android/camera/CameraManager$CameraShutterCallback;,
        Lcom/android/camera/CameraManager$CameraAFMoveCallback;,
        Lcom/android/camera/CameraManager$CameraAFCallback;
    }
.end annotation


# virtual methods
.method public abstract cameraOpen(Landroid/os/Handler;ILcom/android/camera/CameraManager$CameraOpenErrorCallback;)Lcom/android/camera/CameraManager$CameraProxy;
.end method
