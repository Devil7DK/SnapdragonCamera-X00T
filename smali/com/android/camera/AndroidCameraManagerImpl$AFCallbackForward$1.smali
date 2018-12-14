.class Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward$1;
.super Ljava/lang/Object;
.source "AndroidCameraManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward;->onAutoFocus(ZLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward;

.field final synthetic val$b:Z

.field final synthetic val$currentCamera:Landroid/hardware/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward;Landroid/hardware/Camera;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward;

    .prologue
    .line 728
    iput-object p1, p0, Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward$1;->this$0:Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward;

    iput-object p2, p0, Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward$1;->val$currentCamera:Landroid/hardware/Camera;

    iput-boolean p3, p0, Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward$1;->val$b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward$1;->val$currentCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward$1;->val$currentCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward$1;->this$0:Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward;

    invoke-static {v1}, Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward;->access$900(Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward$1;->this$0:Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward;->access$1000(Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward;)Lcom/android/camera/CameraManager$CameraAFCallback;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward$1;->val$b:Z

    iget-object v2, p0, Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward$1;->this$0:Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward;

    invoke-static {v2}, Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward;->access$900(Lcom/android/camera/AndroidCameraManagerImpl$AFCallbackForward;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/CameraManager$CameraAFCallback;->onAutoFocus(ZLcom/android/camera/CameraManager$CameraProxy;)V

    .line 734
    :cond_0
    return-void
.end method
