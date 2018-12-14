.class Lcom/android/camera/PhotoModule$JpegPictureCallback$2;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule$JpegPictureCallback;->onPictureTaken([BLcom/android/camera/CameraManager$CameraProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/PhotoModule$JpegPictureCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule$JpegPictureCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/PhotoModule$JpegPictureCallback;

    .prologue
    .line 2021
    iput-object p1, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback$2;->this$1:Lcom/android/camera/PhotoModule$JpegPictureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback$2;->this$1:Lcom/android/camera/PhotoModule$JpegPictureCallback;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$7000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/GraphView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2024
    iget-object v0, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback$2;->this$1:Lcom/android/camera/PhotoModule$JpegPictureCallback;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$7000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/GraphView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/GraphView;->setVisibility(I)V

    .line 2025
    iget-object v0, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback$2;->this$1:Lcom/android/camera/PhotoModule$JpegPictureCallback;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$7000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/GraphView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/GraphView;->PreviewChanged()V

    .line 2027
    :cond_0
    return-void
.end method
