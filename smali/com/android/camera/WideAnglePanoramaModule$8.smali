.class Lcom/android/camera/WideAnglePanoramaModule$8;
.super Ljava/lang/Thread;
.source "WideAnglePanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/WideAnglePanoramaModule;->saveHighResMosaic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/WideAnglePanoramaModule;


# direct methods
.method constructor <init>(Lcom/android/camera/WideAnglePanoramaModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/WideAnglePanoramaModule;

    .prologue
    .line 743
    iput-object p1, p0, Lcom/android/camera/WideAnglePanoramaModule$8;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 746
    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaModule$8;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v3}, Lcom/android/camera/WideAnglePanoramaModule;->access$3000(Lcom/android/camera/WideAnglePanoramaModule;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 749
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaModule$8;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/camera/WideAnglePanoramaModule;->generateFinalMosaic(Z)Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 751
    .local v0, "jpeg":Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;
    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaModule$8;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v3}, Lcom/android/camera/WideAnglePanoramaModule;->access$3000(Lcom/android/camera/WideAnglePanoramaModule;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 754
    if-nez v0, :cond_0

    .line 755
    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaModule$8;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v3}, Lcom/android/camera/WideAnglePanoramaModule;->access$2300(Lcom/android/camera/WideAnglePanoramaModule;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 773
    :goto_0
    return-void

    .line 751
    .end local v0    # "jpeg":Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/camera/WideAnglePanoramaModule$8;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v4}, Lcom/android/camera/WideAnglePanoramaModule;->access$3000(Lcom/android/camera/WideAnglePanoramaModule;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v3

    .line 756
    .restart local v0    # "jpeg":Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;
    :cond_0
    iget-boolean v3, v0, Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;->isValid:Z

    if-nez v3, :cond_1

    .line 757
    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaModule$8;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v3}, Lcom/android/camera/WideAnglePanoramaModule;->access$2300(Lcom/android/camera/WideAnglePanoramaModule;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 759
    :cond_1
    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaModule$8;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v3}, Lcom/android/camera/WideAnglePanoramaModule;->access$3100(Lcom/android/camera/WideAnglePanoramaModule;)I

    move-result v1

    .line 760
    .local v1, "orientation":I
    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaModule$8;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    iget-object v4, v0, Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;->data:[B

    iget v5, v0, Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;->width:I

    iget v6, v0, Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;->height:I

    invoke-static {v3, v4, v5, v6, v1}, Lcom/android/camera/WideAnglePanoramaModule;->access$3200(Lcom/android/camera/WideAnglePanoramaModule;[BIII)Landroid/net/Uri;

    move-result-object v2

    .line 761
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_2

    .line 762
    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaModule$8;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v3}, Lcom/android/camera/WideAnglePanoramaModule;->access$100(Lcom/android/camera/WideAnglePanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    new-instance v4, Lcom/android/camera/WideAnglePanoramaModule$8$1;

    invoke-direct {v4, p0, v2}, Lcom/android/camera/WideAnglePanoramaModule$8$1;-><init>(Lcom/android/camera/WideAnglePanoramaModule$8;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 770
    :cond_2
    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaModule$8;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v3}, Lcom/android/camera/WideAnglePanoramaModule;->access$2300(Lcom/android/camera/WideAnglePanoramaModule;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/WideAnglePanoramaModule$8;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    .line 771
    invoke-static {v4}, Lcom/android/camera/WideAnglePanoramaModule;->access$2300(Lcom/android/camera/WideAnglePanoramaModule;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 770
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
