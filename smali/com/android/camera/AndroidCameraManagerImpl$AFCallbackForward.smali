.class Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward;
.super Ljava/lang/Object;
.source "AndroidCameraManagerImpl.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/AndroidCameraManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AFCallbackForward"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/camera/CameraManager$CameraAFCallback;

.field private final mCamera:Lcom/android/camera/CameraManager$CameraProxy;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/CameraManager$CameraAFCallback;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;
    .param p3, "cb"    # Lcom/android/camera/CameraManager$CameraAFCallback;

    .prologue
    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    iput-object p1, p0, Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward;->mHandler:Landroid/os/Handler;

    .line 720
    iput-object p2, p0, Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    .line 721
    iput-object p3, p0, Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward;->mCallback:Lcom/android/camera/CameraManager$CameraAFCallback;

    .line 722
    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward;)Lcom/android/camera/CameraManager$CameraAFCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward;

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward;->mCallback:Lcom/android/camera/CameraManager$CameraAFCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward;

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method public static getNewInstance(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/CameraManager$CameraAFCallback;)Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward;
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;
    .param p2, "cb"    # Lcom/android/camera/CameraManager$CameraAFCallback;

    .prologue
    .line 713
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 714
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward;-><init>(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/CameraManager$CameraAFCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 3
    .param p1, "b"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 726
    iget-object v1, p0, Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward;->mCamera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    .line 728
    .local v0, "currentCamera":Landroid/hardware/Camera;
    iget-object v1, p0, Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward$1;-><init>(Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward;Landroid/hardware/Camera;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 736
    return-void
.end method
