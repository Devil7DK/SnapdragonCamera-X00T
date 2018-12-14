.class Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler$1;
.super Ljava/lang/Object;
.source "AndroidCameraManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->requestTakePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

.field final synthetic val$jpeg:Landroid/hardware/Camera$PictureCallback;

.field final synthetic val$postView:Landroid/hardware/Camera$PictureCallback;

.field final synthetic val$raw:Landroid/hardware/Camera$PictureCallback;

.field final synthetic val$shutter:Landroid/hardware/Camera$ShutterCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler$1;->this$1:Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    iput-object p2, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler$1;->val$shutter:Landroid/hardware/Camera$ShutterCallback;

    iput-object p3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler$1;->val$raw:Landroid/hardware/Camera$PictureCallback;

    iput-object p4, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler$1;->val$postView:Landroid/hardware/Camera$PictureCallback;

    iput-object p5, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler$1;->val$jpeg:Landroid/hardware/Camera$PictureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler$1;->this$1:Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    iget-object v1, v1, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->this$0:Lcom/android/camera/AndroidCameraManagerImpl;

    invoke-static {v1}, Lcom/android/camera/AndroidCameraManagerImpl;->access$000(Lcom/android/camera/AndroidCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler$1;->val$shutter:Landroid/hardware/Camera$ShutterCallback;

    iget-object v3, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler$1;->val$raw:Landroid/hardware/Camera$PictureCallback;

    iget-object v4, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler$1;->val$postView:Landroid/hardware/Camera$PictureCallback;

    iget-object v5, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler$1;->val$jpeg:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/camera/AndroidCameraManagerImpl;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "take picture failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    throw v0
.end method
