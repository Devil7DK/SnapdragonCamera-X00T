.class Lcom/android/camera/ui/PanoCaptureProcessView$1;
.super Ljava/lang/Object;
.source "PanoCaptureProcessView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PanoCaptureProcessView;->onFrameAvailable(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

.field final synthetic val$isCancelling:Z


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PanoCaptureProcessView;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .prologue
    .line 616
    iput-object p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    iput-boolean p2, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->val$isCancelling:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 618
    iget-object v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v6}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$300(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 619
    iget-object v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v6}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1500(Lcom/android/camera/ui/PanoCaptureProcessView;)V

    .line 620
    iget-boolean v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->val$isCancelling:Z

    if-nez v6, :cond_4

    .line 621
    iget-object v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v6}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1600(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v3

    .line 622
    .local v3, "size":I
    if-gtz v3, :cond_1

    .line 623
    iget-object v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v6}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1700(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    .line 653
    .end local v3    # "size":I
    :goto_0
    iget-object v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v6}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2200(Lcom/android/camera/ui/PanoCaptureProcessView;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 654
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v6}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$300(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 655
    iget-object v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v6}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$300(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    move-result-object v6

    iget-object v6, v6, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 656
    iget-object v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v6}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$300(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    move-result-object v6

    iget-object v6, v6, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmapIn:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 658
    :cond_0
    iget-object v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$302(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$Picture;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    .line 659
    iget-object v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2302(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$Picture;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    .line 660
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    iget-object v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v6}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2400(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    .line 662
    iget-object v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    sget-object v7, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->INACTIVE:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    invoke-static {v6, v7}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$202(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;)Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    .line 663
    iget-object v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v6, v9}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$602(Lcom/android/camera/ui/PanoCaptureProcessView;Z)Z

    .line 664
    iget-object v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    iget-object v7, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v7}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2500(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$502(Lcom/android/camera/ui/PanoCaptureProcessView;I)I

    .line 665
    return-void

    .line 625
    .restart local v3    # "size":I
    :cond_1
    new-array v1, v3, [B

    .line 626
    .local v1, "jpegData":[B
    iget-object v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v6, v1, v3}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1800(Lcom/android/camera/ui/PanoCaptureProcessView;[BI)I

    .line 627
    const/16 v2, 0x10e

    .line 628
    .local v2, "orient":I
    iget-object v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v6}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1900(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 629
    const/4 v2, 0x0

    .line 631
    :cond_2
    array-length v6, v1

    invoke-static {v1, v9, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 632
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lcom/android/camera/util/CameraUtil;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 633
    .local v4, "thumbBitmap":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v6}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2000(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/PanoCaptureModule;

    move-result-object v6

    .line 634
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 633
    invoke-virtual {v6, v1, v7, v8, v2}, Lcom/android/camera/PanoCaptureModule;->savePanorama([BIII)Landroid/net/Uri;

    move-result-object v5

    .line 635
    .local v5, "uri":Landroid/net/Uri;
    if-eqz v5, :cond_3

    .line 636
    iget-object v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v6}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1000(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/CameraActivity;

    move-result-object v6

    new-instance v7, Lcom/android/camera/ui/PanoCaptureProcessView$1$1;

    invoke-direct {v7, p0, v4, v5}, Lcom/android/camera/ui/PanoCaptureProcessView$1$1;-><init>(Lcom/android/camera/ui/PanoCaptureProcessView$1;Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 643
    :cond_3
    invoke-static {}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1200()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Image uri is null, size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " jpegData: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 647
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "jpegData":[B
    .end local v2    # "orient":I
    .end local v3    # "size":I
    .end local v4    # "thumbBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_4
    iget-object v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v6}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1700(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    .line 648
    iget-object v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v6}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$2100(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->queueClear()V

    goto/16 :goto_0

    .line 651
    :cond_5
    iget-object v6, p0, Lcom/android/camera/ui/PanoCaptureProcessView$1;->this$0:Lcom/android/camera/ui/PanoCaptureProcessView;

    invoke-static {v6}, Lcom/android/camera/ui/PanoCaptureProcessView;->access$1700(Lcom/android/camera/ui/PanoCaptureProcessView;)I

    goto/16 :goto_0

    .line 660
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method
