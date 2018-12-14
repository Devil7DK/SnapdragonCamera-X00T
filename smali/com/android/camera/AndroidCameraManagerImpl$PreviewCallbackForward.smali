.class Lcom/android/camera/AndroidCameraManagerImpl$PreviewCallbackForward;
.super Ljava/lang/Object;
.source "AndroidCameraManagerImpl.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/AndroidCameraManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreviewCallbackForward"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/camera/CameraManager$CameraPreviewDataCallback;

.field private final mCamera:Lcom/android/camera/CameraManager$CameraProxy;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/CameraManager$CameraPreviewDataCallback;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;
    .param p3, "cb"    # Lcom/android/camera/CameraManager$CameraPreviewDataCallback;

    .prologue
    .line 900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 901
    iput-object p1, p0, Lcom/android/camera/AndroidCameraManagerImpl$PreviewCallbackForward;->mHandler:Landroid/os/Handler;

    .line 902
    iput-object p2, p0, Lcom/android/camera/AndroidCameraManagerImpl$PreviewCallbackForward;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    .line 903
    iput-object p3, p0, Lcom/android/camera/AndroidCameraManagerImpl$PreviewCallbackForward;->mCallback:Lcom/android/camera/CameraManager$CameraPreviewDataCallback;

    .line 904
    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/AndroidCameraManagerImpl$PreviewCallbackForward;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/AndroidCameraManagerImpl$PreviewCallbackForward;

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$PreviewCallbackForward;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/AndroidCameraManagerImpl$PreviewCallbackForward;)Lcom/android/camera/CameraManager$CameraPreviewDataCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/AndroidCameraManagerImpl$PreviewCallbackForward;

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$PreviewCallbackForward;->mCallback:Lcom/android/camera/CameraManager$CameraPreviewDataCallback;

    return-object v0
.end method

.method public static getNewInstance(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/CameraManager$CameraPreviewDataCallback;)Lcom/android/camera/AndroidCameraManagerImpl$PreviewCallbackForward;
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;
    .param p2, "cb"    # Lcom/android/camera/CameraManager$CameraPreviewDataCallback;

    .prologue
    .line 895
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 896
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/camera/AndroidCameraManagerImpl$PreviewCallbackForward;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/AndroidCameraManagerImpl$PreviewCallbackForward;-><init>(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/CameraManager$CameraPreviewDataCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 909
    iget-object v1, p0, Lcom/android/camera/AndroidCameraManagerImpl$PreviewCallbackForward;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    .line 911
    .local v0, "currentCamera":Landroid/hardware/Camera;
    iget-object v1, p0, Lcom/android/camera/AndroidCameraManagerImpl$PreviewCallbackForward;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/AndroidCameraManagerImpl$PreviewCallbackForward$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/camera/AndroidCameraManagerImpl$PreviewCallbackForward$1;-><init>(Lcom/android/camera/AndroidCameraManagerImpl$PreviewCallbackForward;Landroid/hardware/Camera;[B)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 919
    return-void
.end method
