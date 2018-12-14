.class Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward;
.super Ljava/lang/Object;
.source "AndroidCameraManagerImpl.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/AndroidCameraManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShutterCallbackForward"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/camera/CameraManager$CameraShutterCallback;

.field private final mCamera:Lcom/android/camera/CameraManager$CameraProxy;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/CameraManager$CameraShutterCallback;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;
    .param p3, "cb"    # Lcom/android/camera/CameraManager$CameraShutterCallback;

    .prologue
    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 810
    iput-object p1, p0, Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward;->mHandler:Landroid/os/Handler;

    .line 811
    iput-object p2, p0, Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    .line 812
    iput-object p3, p0, Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward;->mCallback:Lcom/android/camera/CameraManager$CameraShutterCallback;

    .line 813
    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward;

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward;)Lcom/android/camera/CameraManager$CameraShutterCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward;

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward;->mCallback:Lcom/android/camera/CameraManager$CameraShutterCallback;

    return-object v0
.end method

.method public static getNewInstance(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/CameraManager$CameraShutterCallback;)Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward;
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;
    .param p2, "cb"    # Lcom/android/camera/CameraManager$CameraShutterCallback;

    .prologue
    .line 804
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 805
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward;-><init>(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/CameraManager$CameraShutterCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public onShutter()V
    .locals 3

    .prologue
    .line 817
    iget-object v1, p0, Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    .line 819
    .local v0, "currentCamera":Landroid/hardware/Camera;
    iget-object v1, p0, Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward$1;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward$1;-><init>(Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward;Landroid/hardware/Camera;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 827
    return-void
.end method
