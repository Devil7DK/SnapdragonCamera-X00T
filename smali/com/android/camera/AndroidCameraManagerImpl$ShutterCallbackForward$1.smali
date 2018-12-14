.class Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward$1;
.super Ljava/lang/Object;
.source "AndroidCameraManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward;->onShutter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward;

.field final synthetic val$currentCamera:Landroid/hardware/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward;Landroid/hardware/Camera;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward;

    .prologue
    .line 819
    iput-object p1, p0, Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward$1;->this$0:Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward;

    iput-object p2, p0, Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward$1;->val$currentCamera:Landroid/hardware/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 822
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward$1;->val$currentCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward$1;->val$currentCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward$1;->this$0:Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward;

    invoke-static {v1}, Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward;->access$1300(Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward$1;->this$0:Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward;->access$1400(Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward;)Lcom/android/camera/CameraManager$CameraShutterCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward$1;->this$0:Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward;

    invoke-static {v1}, Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward;->access$1300(Lcom/android/camera/AndroidCameraManagerImpl$ShutterCallbackForward;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraShutterCallback;->onShutter(Lcom/android/camera/CameraManager$CameraProxy;)V

    .line 825
    :cond_0
    return-void
.end method
