.class Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward$1;
.super Ljava/lang/Object;
.source "AndroidCameraManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward;->onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward;

.field final synthetic val$currentCamera:Landroid/hardware/Camera;

.field final synthetic val$faces:[Landroid/hardware/Camera$Face;


# direct methods
.method constructor <init>(Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward;Landroid/hardware/Camera;[Landroid/hardware/Camera$Face;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward;

    .prologue
    .line 954
    iput-object p1, p0, Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward$1;->this$0:Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward;

    iput-object p2, p0, Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward$1;->val$currentCamera:Landroid/hardware/Camera;

    iput-object p3, p0, Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward$1;->val$faces:[Landroid/hardware/Camera$Face;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 957
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward$1;->val$currentCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward$1;->val$currentCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward$1;->this$0:Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward;

    invoke-static {v1}, Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward;->access$1900(Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward$1;->this$0:Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward;->access$2000(Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward;)Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward$1;->val$faces:[Landroid/hardware/Camera$Face;

    iget-object v2, p0, Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward$1;->this$0:Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward;

    invoke-static {v2}, Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward;->access$1900(Lcom/android/camera/AndroidCameraManagerImpl$FaceDetectionCallbackForward;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;->onFaceDetection([Landroid/hardware/Camera$Face;Lcom/android/camera/CameraManager$CameraProxy;)V

    .line 960
    :cond_0
    return-void
.end method
