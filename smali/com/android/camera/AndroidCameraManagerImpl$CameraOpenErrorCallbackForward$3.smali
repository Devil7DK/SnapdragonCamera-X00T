.class Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward$3;
.super Ljava/lang/Object;
.source "AndroidCameraManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;->onReconnectionFailure(Lcom/android/camera/CameraManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;

.field final synthetic val$mgr:Lcom/android/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;Lcom/android/camera/CameraManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward$3;->this$0:Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;

    iput-object p2, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward$3;->val$mgr:Lcom/android/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward$3;->this$0:Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;

    invoke-static {v0}, Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;->access$2100(Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward;)Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraOpenErrorCallbackForward$3;->val$mgr:Lcom/android/camera/CameraManager;

    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraOpenErrorCallback;->onReconnectionFailure(Lcom/android/camera/CameraManager;)V

    .line 1024
    return-void
.end method
