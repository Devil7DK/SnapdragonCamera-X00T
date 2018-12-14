.class Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;
.super Ljava/lang/Object;
.source "AndroidCameraManagerImpl.java"

# interfaces
.implements Lcom/android/camera/CameraManager$CameraOpenErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/AndroidCameraManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraOpenErrorCallbackForward"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraOpenErrorCallback;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "cb"    # Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

    .prologue
    .line 990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 994
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;->mHandler:Landroid/os/Handler;

    .line 995
    iput-object p2, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;->mCallback:Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

    .line 996
    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;)Lcom/android/camera/CameraManager$CameraOpenErrorCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;

    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;->mCallback:Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

    return-object v0
.end method

.method public static getNewInstance(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraOpenErrorCallback;)Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "cb"    # Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

    .prologue
    .line 983
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 984
    :cond_0
    const/4 v0, 0x0

    .line 986
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;-><init>(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraOpenErrorCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public onCameraDisabled(I)V
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward$1;-><init>(Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1006
    return-void
.end method

.method public onDeviceOpenFailure(I)V
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward$2;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward$2;-><init>(Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1016
    return-void
.end method

.method public onReconnectionFailure(Lcom/android/camera/CameraManager;)V
    .locals 2
    .param p1, "mgr"    # Lcom/android/camera/CameraManager;

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward$3;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward$3;-><init>(Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;Lcom/android/camera/CameraManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1026
    return-void
.end method

.method public onStartPreviewFailure(I)V
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward$4;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward$4;-><init>(Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1036
    return-void
.end method
