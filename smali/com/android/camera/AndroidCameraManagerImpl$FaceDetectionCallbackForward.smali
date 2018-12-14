.class Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward;
.super Ljava/lang/Object;
.source "AndroidCameraManagerImpl.java"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/AndroidCameraManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FaceDetectionCallbackForward"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;

.field private final mCamera:Lcom/android/camera/CameraManager$CameraProxy;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;
    .param p3, "cb"    # Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;

    .prologue
    .line 943
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 944
    iput-object p1, p0, Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward;->mHandler:Landroid/os/Handler;

    .line 945
    iput-object p2, p0, Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    .line 946
    iput-object p3, p0, Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward;->mCallback:Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;

    .line 947
    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward;

    .prologue
    .line 922
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward;)Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward;

    .prologue
    .line 922
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward;->mCallback:Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;

    return-object v0
.end method

.method public static getNewInstance(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;)Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward;
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;
    .param p2, "cb"    # Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;

    .prologue
    .line 938
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 939
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward;-><init>(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 3
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 952
    iget-object v1, p0, Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    .line 954
    .local v0, "currentCamera":Landroid/hardware/Camera;
    iget-object v1, p0, Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward$1;-><init>(Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward;Landroid/hardware/Camera;[Landroid/hardware/Camera$Face;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 962
    return-void
.end method
