.class Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward$1;
.super Ljava/lang/Object;
.source "AndroidCameraManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward;->onAutoFocusMoving(ZLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward;

.field final synthetic val$currentCamera:Landroid/hardware/Camera;

.field final synthetic val$moving:Z


# direct methods
.method constructor <init>(Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward;Landroid/hardware/Camera;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward;

    .prologue
    .line 774
    iput-object p1, p0, Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward$1;->this$0:Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward;

    iput-object p2, p0, Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward$1;->val$currentCamera:Landroid/hardware/Camera;

    iput-boolean p3, p0, Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward$1;->val$moving:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward$1;->val$currentCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward$1;->val$currentCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward$1;->this$0:Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward;

    invoke-static {v1}, Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward;->access$1100(Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward$1;->this$0:Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward;->access$1200(Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward;)Lcom/android/camera/CameraManager$CameraAFMoveCallback;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward$1;->val$moving:Z

    iget-object v2, p0, Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward$1;->this$0:Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward;

    invoke-static {v2}, Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward;->access$1100(Lcom/android/camera/AndroidCameraManagerImpl$AFMoveCallbackForward;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/CameraManager$CameraAFMoveCallback;->onAutoFocusMoving(ZLcom/android/camera/CameraManager$CameraProxy;)V

    .line 780
    :cond_0
    return-void
.end method
