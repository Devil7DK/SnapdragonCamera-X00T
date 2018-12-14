.class Lcom/android/camera/data/LocalMediaData$1;
.super Ljava/lang/Object;
.source "LocalMediaData.java"

# interfaces
.implements Lcom/android/camera/data/PanoramaMetadataLoader$PanoramaMetadataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/data/LocalMediaData;->isPhotoSphere(Landroid/content/Context;Lcom/android/camera/ui/FilmStripView$ImageData$PanoramaSupportCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/data/LocalMediaData;

.field final synthetic val$callback:Lcom/android/camera/ui/FilmStripView$ImageData$PanoramaSupportCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/data/LocalMediaData;Lcom/android/camera/ui/FilmStripView$ImageData$PanoramaSupportCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/data/LocalMediaData;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/camera/data/LocalMediaData$1;->this$0:Lcom/android/camera/data/LocalMediaData;

    iput-object p2, p0, Lcom/android/camera/data/LocalMediaData$1;->val$callback:Lcom/android/camera/ui/FilmStripView$ImageData$PanoramaSupportCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPanoramaMetadataLoaded(Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;)V
    .locals 3
    .param p1, "metadata"    # Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/camera/data/LocalMediaData$1;->this$0:Lcom/android/camera/data/LocalMediaData;

    iput-object p1, v0, Lcom/android/camera/data/LocalMediaData;->mPanoramaMetadata:Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;

    .line 187
    iget-object v0, p0, Lcom/android/camera/data/LocalMediaData$1;->this$0:Lcom/android/camera/data/LocalMediaData;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/camera/data/LocalMediaData;->mPanoramaMetadataLoader:Lcom/android/camera/data/PanoramaMetadataLoader;

    .line 188
    iget-object v0, p0, Lcom/android/camera/data/LocalMediaData$1;->val$callback:Lcom/android/camera/ui/FilmStripView$ImageData$PanoramaSupportCallback;

    iget-boolean v1, p1, Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;->mUsePanoramaViewer:Z

    iget-boolean v2, p1, Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;->mIsPanorama360:Z

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/FilmStripView$ImageData$PanoramaSupportCallback;->panoramaInfoAvailable(ZZ)V

    .line 190
    return-void
.end method
