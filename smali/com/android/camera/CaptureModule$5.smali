.class Lcom/android/camera/CaptureModule$5;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 682
    iput-object p1, p0, Lcom/android/camera/CaptureModule$5;->this$0:Lcom/android/camera/CaptureModule;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 741
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 742
    .local v0, "id":I
    const-string v1, "SnapCam_CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClosed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v1, p0, Lcom/android/camera/CaptureModule$5;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$2100(Lcom/android/camera/CaptureModule;)[Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 744
    iget-object v1, p0, Lcom/android/camera/CaptureModule$5;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$1900(Lcom/android/camera/CaptureModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 745
    iget-object v1, p0, Lcom/android/camera/CaptureModule$5;->this$0:Lcom/android/camera/CaptureModule;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CaptureModule;->access$2402(Lcom/android/camera/CaptureModule;Z)Z

    .line 746
    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 713
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 714
    .local v0, "id":I
    const-string v1, "SnapCam_CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 716
    iget-object v1, p0, Lcom/android/camera/CaptureModule$5;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$2100(Lcom/android/camera/CaptureModule;)[Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 717
    iget-object v1, p0, Lcom/android/camera/CaptureModule$5;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$1900(Lcom/android/camera/CaptureModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 718
    iget-object v1, p0, Lcom/android/camera/CaptureModule$5;->this$0:Lcom/android/camera/CaptureModule;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CaptureModule;->access$2402(Lcom/android/camera/CaptureModule;Z)Z

    .line 719
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 4
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I

    .prologue
    .line 723
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 724
    .local v0, "id":I
    const-string v1, "SnapCam_CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v1, p0, Lcom/android/camera/CaptureModule$5;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$2400(Lcom/android/camera/CaptureModule;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 726
    iget-object v1, p0, Lcom/android/camera/CaptureModule$5;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$2100(Lcom/android/camera/CaptureModule;)[Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 727
    iget-object v1, p0, Lcom/android/camera/CaptureModule$5;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$2100(Lcom/android/camera/CaptureModule;)[Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 729
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CaptureModule$5;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$1900(Lcom/android/camera/CaptureModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 730
    iget-object v1, p0, Lcom/android/camera/CaptureModule$5;->this$0:Lcom/android/camera/CaptureModule;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CaptureModule;->access$2402(Lcom/android/camera/CaptureModule;Z)Z

    .line 732
    iget-object v1, p0, Lcom/android/camera/CaptureModule$5;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 733
    iget-object v1, p0, Lcom/android/camera/CaptureModule$5;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open camera error id ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 734
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 735
    iget-object v1, p0, Lcom/android/camera/CaptureModule$5;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->finish()V

    .line 737
    :cond_1
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 7
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 686
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 687
    .local v0, "id":I
    const-string v2, "SnapCam_CaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOpened "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v2, p0, Lcom/android/camera/CaptureModule$5;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$1900(Lcom/android/camera/CaptureModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 689
    iget-object v2, p0, Lcom/android/camera/CaptureModule$5;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$2000(Lcom/android/camera/CaptureModule;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 709
    :goto_0
    return-void

    .line 693
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CaptureModule$5;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$2100(Lcom/android/camera/CaptureModule;)[Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    aput-object p1, v2, v0

    .line 694
    iget-object v2, p0, Lcom/android/camera/CaptureModule$5;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$2200(Lcom/android/camera/CaptureModule;)[Z

    move-result-object v2

    aput-boolean v6, v2, v0

    .line 696
    iget-object v2, p0, Lcom/android/camera/CaptureModule$5;->this$0:Lcom/android/camera/CaptureModule;

    invoke-virtual {v2}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/CaptureModule$5;->this$0:Lcom/android/camera/CaptureModule;

    invoke-virtual {v2}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v2

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    .line 697
    iget-object v2, p0, Lcom/android/camera/CaptureModule$5;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$2300(Lcom/android/camera/CaptureModule;)Landroid/os/Handler;

    move-result-object v2

    sget v3, Lcom/android/camera/CaptureModule;->MONO_ID:I

    invoke-virtual {v2, v5, v3, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 698
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/camera/CaptureModule$5;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$2300(Lcom/android/camera/CaptureModule;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 700
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CaptureModule$5;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2, v6}, Lcom/android/camera/CaptureModule;->access$2402(Lcom/android/camera/CaptureModule;Z)Z

    .line 701
    iget-object v2, p0, Lcom/android/camera/CaptureModule$5;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    new-instance v3, Lcom/android/camera/CaptureModule$5$1;

    invoke-direct {v3, p0}, Lcom/android/camera/CaptureModule$5$1;-><init>(Lcom/android/camera/CaptureModule$5;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 707
    iget-object v2, p0, Lcom/android/camera/CaptureModule$5;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$2600(Lcom/android/camera/CaptureModule;)V

    goto :goto_0
.end method
