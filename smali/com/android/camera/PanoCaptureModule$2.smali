.class Lcom/android/camera/PanoCaptureModule$2;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "PanoCaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PanoCaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoCaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoCaptureModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PanoCaptureModule;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/camera/PanoCaptureModule$2;->this$0:Lcom/android/camera/PanoCaptureModule;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule$2;->this$0:Lcom/android/camera/PanoCaptureModule;

    invoke-static {v0}, Lcom/android/camera/PanoCaptureModule;->access$100(Lcom/android/camera/PanoCaptureModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 178
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 179
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule$2;->this$0:Lcom/android/camera/PanoCaptureModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/PanoCaptureModule;->access$402(Lcom/android/camera/PanoCaptureModule;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 180
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 3
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I

    .prologue
    .line 184
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 185
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule$2;->this$0:Lcom/android/camera/PanoCaptureModule;

    invoke-static {v1}, Lcom/android/camera/PanoCaptureModule;->access$100(Lcom/android/camera/PanoCaptureModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 186
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 187
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule$2;->this$0:Lcom/android/camera/PanoCaptureModule;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/PanoCaptureModule;->access$402(Lcom/android/camera/PanoCaptureModule;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 188
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule$2;->this$0:Lcom/android/camera/PanoCaptureModule;

    invoke-static {v1}, Lcom/android/camera/PanoCaptureModule;->access$300(Lcom/android/camera/PanoCaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/android/camera/PanoCaptureModule$2;->this$0:Lcom/android/camera/PanoCaptureModule;

    invoke-static {v1}, Lcom/android/camera/PanoCaptureModule;->access$300(Lcom/android/camera/PanoCaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->finish()V

    .line 191
    :cond_0
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule$2;->this$0:Lcom/android/camera/PanoCaptureModule;

    invoke-static {v0}, Lcom/android/camera/PanoCaptureModule;->access$100(Lcom/android/camera/PanoCaptureModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 162
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule$2;->this$0:Lcom/android/camera/PanoCaptureModule;

    invoke-static {v0}, Lcom/android/camera/PanoCaptureModule;->access$300(Lcom/android/camera/PanoCaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    new-instance v1, Lcom/android/camera/PanoCaptureModule$2$1;

    invoke-direct {v1, p0}, Lcom/android/camera/PanoCaptureModule$2$1;-><init>(Lcom/android/camera/PanoCaptureModule$2;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 170
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule$2;->this$0:Lcom/android/camera/PanoCaptureModule;

    invoke-static {v0, p1}, Lcom/android/camera/PanoCaptureModule;->access$402(Lcom/android/camera/PanoCaptureModule;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 171
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule$2;->this$0:Lcom/android/camera/PanoCaptureModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/PanoCaptureModule;->access$502(Lcom/android/camera/PanoCaptureModule;Z)Z

    .line 172
    iget-object v0, p0, Lcom/android/camera/PanoCaptureModule$2;->this$0:Lcom/android/camera/PanoCaptureModule;

    invoke-static {v0}, Lcom/android/camera/PanoCaptureModule;->access$600(Lcom/android/camera/PanoCaptureModule;)V

    .line 173
    return-void
.end method
