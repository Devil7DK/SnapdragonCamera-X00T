.class Lcom/android/camera/WideAnglePanoramaModule$6;
.super Ljava/lang/Thread;
.source "WideAnglePanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/WideAnglePanoramaModule;->stopCapture(Z)V
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
    .line 639
    iput-object p1, p0, Lcom/android/camera/WideAnglePanoramaModule$6;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 642
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule$6;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-virtual {v2, v4}, Lcom/android/camera/WideAnglePanoramaModule;->generateFinalMosaic(Z)Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;

    move-result-object v1

    .line 644
    .local v1, "jpeg":Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;->isValid:Z

    if-eqz v2, :cond_0

    .line 645
    const/4 v0, 0x0

    .line 646
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, v1, Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;->data:[B

    iget-object v3, v1, Lcom/android/camera/WideAnglePanoramaModule$MosaicJpeg;->data:[B

    array-length v3, v3

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 647
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule$6;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v2}, Lcom/android/camera/WideAnglePanoramaModule;->access$2300(Lcom/android/camera/WideAnglePanoramaModule;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaModule$6;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v3}, Lcom/android/camera/WideAnglePanoramaModule;->access$2300(Lcom/android/camera/WideAnglePanoramaModule;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 653
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 650
    :cond_0
    iget-object v2, p0, Lcom/android/camera/WideAnglePanoramaModule$6;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v2}, Lcom/android/camera/WideAnglePanoramaModule;->access$2300(Lcom/android/camera/WideAnglePanoramaModule;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/WideAnglePanoramaModule$6;->this$0:Lcom/android/camera/WideAnglePanoramaModule;

    invoke-static {v3}, Lcom/android/camera/WideAnglePanoramaModule;->access$2300(Lcom/android/camera/WideAnglePanoramaModule;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
