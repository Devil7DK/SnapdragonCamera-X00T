.class Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;
.super Ljava/lang/Object;
.source "ZSLQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/imageprocessor/ZSLQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImageItem"
.end annotation


# instance fields
.field private mImage:Landroid/media/Image;

.field private mMetadata:Landroid/hardware/camera2/TotalCaptureResult;

.field private mRawImage:Landroid/media/Image;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mImage:Landroid/media/Image;

    .line 241
    iput-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mRawImage:Landroid/media/Image;

    .line 242
    iput-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mMetadata:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method


# virtual methods
.method public closeImage()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mImage:Landroid/media/Image;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mRawImage:Landroid/media/Image;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mRawImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 276
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mImage:Landroid/media/Image;

    .line 277
    return-void
.end method

.method public closeMeta()V
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mMetadata:Landroid/hardware/camera2/TotalCaptureResult;

    .line 281
    return-void
.end method

.method public getImage()Landroid/media/Image;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mImage:Landroid/media/Image;

    return-object v0
.end method

.method public getMetadata()Landroid/hardware/camera2/TotalCaptureResult;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mMetadata:Landroid/hardware/camera2/TotalCaptureResult;

    return-object v0
.end method

.method public getRawImage()Landroid/media/Image;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mRawImage:Landroid/media/Image;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mImage:Landroid/media/Image;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mMetadata:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v0, :cond_0

    .line 285
    const/4 v0, 0x1

    .line 287
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setImage(Landroid/media/Image;Landroid/media/Image;)V
    .locals 1
    .param p1, "image"    # Landroid/media/Image;
    .param p2, "rawImage"    # Landroid/media/Image;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mImage:Landroid/media/Image;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mRawImage:Landroid/media/Image;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mRawImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 257
    :cond_1
    iput-object p1, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mImage:Landroid/media/Image;

    .line 258
    iput-object p2, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mRawImage:Landroid/media/Image;

    .line 259
    return-void
.end method

.method public setMetadata(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .param p1, "metadata"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->mMetadata:Landroid/hardware/camera2/TotalCaptureResult;

    .line 267
    return-void
.end method
