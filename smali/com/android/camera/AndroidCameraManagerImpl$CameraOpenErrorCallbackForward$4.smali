.class Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward$4;
.super Ljava/lang/Object;
.source "AndroidCameraManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;->onStartPreviewFailure(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;

.field final synthetic val$cameraId:I


# direct methods
.method constructor <init>(Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward$4;->this$0:Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;

    iput p2, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward$4;->val$cameraId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward$4;->this$0:Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;->access$2100(Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;)Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward$4;->val$cameraId:I

    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraOpenErrorCallback;->onStartPreviewFailure(I)V

    .line 1034
    return-void
.end method
