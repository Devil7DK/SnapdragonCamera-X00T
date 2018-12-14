.class Lcom/android/camera/imageprocessor/PostProcessor$8;
.super Ljava/lang/Object;
.source "PostProcessor.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/imageprocessor/PostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/imageprocessor/PostProcessor;


# direct methods
.method constructor <init>(Lcom/android/camera/imageprocessor/PostProcessor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/android/camera/imageprocessor/PostProcessor$8;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 6
    .param p1, "reader"    # Landroid/media/ImageReader;

    .prologue
    .line 1160
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    .line 1161
    .local v0, "image":Landroid/media/Image;
    invoke-static {}, Lcom/android/camera/imageprocessor/PostProcessor;->access$3100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PostProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZSL image Reprocess is done "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    :cond_0
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor$8;->this$0:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-static {v1}, Lcom/android/camera/imageprocessor/PostProcessor;->access$3300(Lcom/android/camera/imageprocessor/PostProcessor;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/camera/imageprocessor/PostProcessor$8$1;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/imageprocessor/PostProcessor$8$1;-><init>(Lcom/android/camera/imageprocessor/PostProcessor$8;Landroid/media/Image;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1191
    return-void
.end method
