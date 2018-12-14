.class Lcom/android/camera/PhotoModule$JpegPictureCallback$3;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;


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
    .line 2178
    iput-object p1, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback$3;->this$1:Lcom/android/camera/PhotoModule$JpegPictureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageUpdateDone(J)V
    .locals 2
    .param p1, "storageSpace"    # J

    .prologue
    .line 2181
    iget-object v0, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback$3;->this$1:Lcom/android/camera/PhotoModule$JpegPictureCallback;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$4500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback$3;->this$1:Lcom/android/camera/PhotoModule$JpegPictureCallback;

    iget-object v1, v1, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$9506(Lcom/android/camera/PhotoModule;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->updateRemainingPhotos(I)V

    .line 2182
    return-void
.end method
