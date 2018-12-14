.class final Lcom/android/camera/data/LocalMediaData$VideoData$VideoBitmapLoadTask;
.super Lcom/android/camera/data/LocalMediaData$BitmapLoadTask;
.source "LocalMediaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/LocalMediaData$VideoData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VideoBitmapLoadTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/data/LocalMediaData$VideoData;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/LocalMediaData$VideoData;Landroid/widget/ImageView;)V
    .locals 0
    .param p2, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 801
    iput-object p1, p0, Lcom/android/camera/data/LocalMediaData$VideoData$VideoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$VideoData;

    .line 802
    invoke-direct {p0, p1, p2}, Lcom/android/camera/data/LocalMediaData$BitmapLoadTask;-><init>(Lcom/android/camera/data/LocalMediaData;Landroid/widget/ImageView;)V

    .line 803
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    .line 807
    invoke-virtual {p0}, Lcom/android/camera/data/LocalMediaData$VideoData$VideoBitmapLoadTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/data/LocalMediaData$VideoData$VideoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$VideoData;

    invoke-virtual {v4}, Lcom/android/camera/data/LocalMediaData$VideoData;->isUsing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 808
    :cond_0
    const/4 v0, 0x0

    .line 828
    :goto_0
    return-object v0

    .line 810
    :cond_1
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 811
    .local v3, "retriever":Landroid/media/MediaMetadataRetriever;
    const/4 v0, 0x0

    .line 813
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/data/LocalMediaData$VideoData$VideoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$VideoData;

    iget-object v4, v4, Lcom/android/camera/data/LocalMediaData$VideoData;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 814
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    move-result-object v1

    .line 815
    .local v1, "data":[B
    invoke-virtual {p0}, Lcom/android/camera/data/LocalMediaData$VideoData$VideoBitmapLoadTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/data/LocalMediaData$VideoData$VideoBitmapLoadTask;->this$0:Lcom/android/camera/data/LocalMediaData$VideoData;

    invoke-virtual {v4}, Lcom/android/camera/data/LocalMediaData$VideoData;->isUsing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 816
    if-eqz v1, :cond_2

    .line 817
    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 819
    :cond_2
    if-nez v0, :cond_3

    .line 820
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 827
    .end local v1    # "data":[B
    :cond_3
    :goto_1
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    .line 823
    :catch_0
    move-exception v2

    .line 824
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "CAM_LocalData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MediaMetadataRetriever.setDataSource() fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 825
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 824
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 799
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/LocalMediaData$VideoData$VideoBitmapLoadTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
