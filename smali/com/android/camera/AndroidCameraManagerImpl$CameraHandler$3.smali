.class Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler$3;
.super Ljava/lang/Object;
.source "AndroidCameraManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;->waitDone(J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

.field final synthetic val$waitDoneLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler$3;->this$1:Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler;

    iput-object p2, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler$3;->val$waitDoneLock:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 214
    iget-object v1, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler$3;->val$waitDoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/AndroidCameraManagerImpl$CameraHandler$3;->val$waitDoneLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 216
    monitor-exit v1

    .line 217
    return-void

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
