.class public abstract Lcom/android/camera/data/LocalMediaData;
.super Ljava/lang/Object;
.source "LocalMediaData.java"

# interfaces
.implements Lcom/android/camera/data/LocalData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/LocalMediaData$BitmapLoadTask;,
        Lcom/android/camera/data/LocalMediaData$VideoData;,
        Lcom/android/camera/data/LocalMediaData$PhotoData;
    }
.end annotation


# instance fields
.field protected final mContentId:J

.field protected final mDateModifiedInSeconds:J

.field protected final mDateTakenInSeconds:J

.field protected final mHeight:I

.field protected final mLatitude:D

.field protected final mLongitude:D

.field protected final mMimeType:Ljava/lang/String;

.field protected mPanoramaMetadata:Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;

.field protected mPanoramaMetadataLoader:Lcom/android/camera/data/PanoramaMetadataLoader;

.field protected final mPath:Ljava/lang/String;

.field protected final mSizeInBytes:J

.field protected final mTitle:Ljava/lang/String;

.field protected mUsing:Ljava/lang/Boolean;

.field protected final mWidth:I


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIJDD)V
    .locals 3
    .param p1, "contentId"    # J
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "dateTakenInSeconds"    # J
    .param p7, "dateModifiedInSeconds"    # J
    .param p9, "path"    # Ljava/lang/String;
    .param p10, "width"    # I
    .param p11, "height"    # I
    .param p12, "sizeInBytes"    # J
    .param p14, "latitude"    # D
    .param p16, "longitude"    # D

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/data/LocalMediaData;->mPanoramaMetadataLoader:Lcom/android/camera/data/PanoramaMetadataLoader;

    .line 81
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/data/LocalMediaData;->mUsing:Ljava/lang/Boolean;

    .line 87
    iput-wide p1, p0, Lcom/android/camera/data/LocalMediaData;->mContentId:J

    .line 88
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/camera/data/LocalMediaData;->mTitle:Ljava/lang/String;

    .line 89
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/camera/data/LocalMediaData;->mMimeType:Ljava/lang/String;

    .line 90
    iput-wide p5, p0, Lcom/android/camera/data/LocalMediaData;->mDateTakenInSeconds:J

    .line 91
    iput-wide p7, p0, Lcom/android/camera/data/LocalMediaData;->mDateModifiedInSeconds:J

    .line 92
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/camera/data/LocalMediaData;->mPath:Ljava/lang/String;

    .line 93
    iput p10, p0, Lcom/android/camera/data/LocalMediaData;->mWidth:I

    .line 94
    iput p11, p0, Lcom/android/camera/data/LocalMediaData;->mHeight:I

    .line 95
    iput-wide p12, p0, Lcom/android/camera/data/LocalMediaData;->mSizeInBytes:J

    .line 96
    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/android/camera/data/LocalMediaData;->mLatitude:D

    .line 97
    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/android/camera/data/LocalMediaData;->mLongitude:D

    .line 98
    return-void
.end method


# virtual methods
.method public canSwipeInFullScreen()Z
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x1

    return v0
.end method

.method public delete(Landroid/content/Context;)Z
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 157
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method protected fillImageView(Landroid/content/Context;Landroid/widget/ImageView;IILandroid/graphics/drawable/Drawable;Lcom/android/camera/data/LocalDataAdapter;)Landroid/widget/ImageView;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/widget/ImageView;
    .param p3, "decodeWidth"    # I
    .param p4, "decodeHeight"    # I
    .param p5, "placeHolder"    # Landroid/graphics/drawable/Drawable;
    .param p6, "adapter"    # Lcom/android/camera/data/LocalDataAdapter;

    .prologue
    .line 207
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 208
    invoke-virtual {p2, p5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    return-object p2
.end method

.method public getContentId()J
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/android/camera/data/LocalMediaData;->mContentId:J

    return-wide v0
.end method

.method public getDateModified()J
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/android/camera/data/LocalMediaData;->mDateModifiedInSeconds:J

    return-wide v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/android/camera/data/LocalMediaData;->mDateTakenInSeconds:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/android/camera/data/LocalMediaData;->mHeight:I

    return v0
.end method

.method public getLatLong()[D
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 242
    iget-wide v0, p0, Lcom/android/camera/data/LocalMediaData;->mLatitude:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/camera/data/LocalMediaData;->mLongitude:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 243
    const/4 v0, 0x0

    .line 245
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/camera/data/LocalMediaData;->mLatitude:D

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/camera/data/LocalMediaData;->mLongitude:D

    aput-wide v2, v0, v1

    goto :goto_0
.end method

.method public getMediaDetails(Landroid/content/Context;)Lcom/android/camera/data/MediaDetails;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x1

    const-wide/16 v10, 0x0

    .line 263
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 264
    .local v0, "dateFormatter":Ljava/text/DateFormat;
    new-instance v2, Lcom/android/camera/data/MediaDetails;

    invoke-direct {v2}, Lcom/android/camera/data/MediaDetails;-><init>()V

    .line 265
    .local v2, "mediaDetails":Lcom/android/camera/data/MediaDetails;
    iget-object v3, p0, Lcom/android/camera/data/LocalMediaData;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v12, v3}, Lcom/android/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 266
    const/4 v3, 0x5

    iget v4, p0, Lcom/android/camera/data/LocalMediaData;->mWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 267
    const/4 v3, 0x6

    iget v4, p0, Lcom/android/camera/data/LocalMediaData;->mHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 268
    const/16 v3, 0xc8

    iget-object v4, p0, Lcom/android/camera/data/LocalMediaData;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 269
    const/4 v3, 0x3

    new-instance v4, Ljava/util/Date;

    iget-wide v6, p0, Lcom/android/camera/data/LocalMediaData;->mDateModifiedInSeconds:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 270
    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 269
    invoke-virtual {v2, v3, v4}, Lcom/android/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 271
    iget-wide v4, p0, Lcom/android/camera/data/LocalMediaData;->mSizeInBytes:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 272
    const/16 v3, 0xa

    iget-wide v4, p0, Lcom/android/camera/data/LocalMediaData;->mSizeInBytes:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 274
    :cond_0
    iget-wide v4, p0, Lcom/android/camera/data/LocalMediaData;->mLatitude:D

    cmpl-double v3, v4, v10

    if-eqz v3, :cond_1

    iget-wide v4, p0, Lcom/android/camera/data/LocalMediaData;->mLongitude:D

    cmpl-double v3, v4, v10

    if-eqz v3, :cond_1

    .line 275
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "%f, %f"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-wide v8, p0, Lcom/android/camera/data/LocalMediaData;->mLatitude:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    iget-wide v6, p0, Lcom/android/camera/data/LocalMediaData;->mLongitude:D

    .line 276
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v12

    .line 275
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "locationString":Ljava/lang/String;
    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 279
    .end local v1    # "locationString":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/camera/data/LocalMediaData;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/data/LocalMediaData;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSizeInBytes()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/android/camera/data/LocalMediaData;->mSizeInBytes:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData;->mTitle:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getView(Landroid/app/Activity;IILandroid/graphics/drawable/Drawable;Lcom/android/camera/data/LocalDataAdapter;)Landroid/view/View;
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "decodeWidth"    # I
    .param p3, "decodeHeight"    # I
    .param p4, "placeHolder"    # Landroid/graphics/drawable/Drawable;
    .param p5, "adapter"    # Lcom/android/camera/data/LocalDataAdapter;

    .prologue
    .line 222
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/data/LocalMediaData;->fillImageView(Landroid/content/Context;Landroid/widget/ImageView;IILandroid/graphics/drawable/Drawable;Lcom/android/camera/data/LocalDataAdapter;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public abstract getViewType()I
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/android/camera/data/LocalMediaData;->mWidth:I

    return v0
.end method

.method public isDataActionSupported(I)Z
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public isPhotoSphere(Landroid/content/Context;Lcom/android/camera/ui/FilmStripView$ImageData$PanoramaSupportCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/camera/ui/FilmStripView$ImageData$PanoramaSupportCallback;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/camera/data/LocalMediaData;->mPanoramaMetadata:Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/camera/data/LocalMediaData;->mPanoramaMetadata:Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;

    iget-boolean v0, v0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;->mUsePanoramaViewer:Z

    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData;->mPanoramaMetadata:Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;

    iget-boolean v1, v1, Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;->mIsPanorama360:Z

    invoke-interface {p2, v0, v1}, Lcom/android/camera/ui/FilmStripView$ImageData$PanoramaSupportCallback;->panoramaInfoAvailable(ZZ)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/LocalMediaData;->mPanoramaMetadataLoader:Lcom/android/camera/data/PanoramaMetadataLoader;

    if-nez v0, :cond_1

    .line 176
    new-instance v0, Lcom/android/camera/data/PanoramaMetadataLoader;

    invoke-virtual {p0}, Lcom/android/camera/data/LocalMediaData;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/data/PanoramaMetadataLoader;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/camera/data/LocalMediaData;->mPanoramaMetadataLoader:Lcom/android/camera/data/PanoramaMetadataLoader;

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/camera/data/LocalMediaData;->mPanoramaMetadataLoader:Lcom/android/camera/data/PanoramaMetadataLoader;

    new-instance v1, Lcom/android/camera/data/LocalMediaData$1;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/data/LocalMediaData$1;-><init>(Lcom/android/camera/data/LocalMediaData;Lcom/android/camera/ui/FilmStripView$ImageData$PanoramaSupportCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/data/PanoramaMetadataLoader;->getPanoramaMetadata(Landroid/content/Context;Lcom/android/camera/data/PanoramaMetadataLoader$PanoramaMetadataCallback;)V

    .line 192
    return-void
.end method

.method public isUIActionSupported(I)Z
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method protected isUsing()Z
    .locals 2

    .prologue
    .line 251
    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData;->mUsing:Ljava/lang/Boolean;

    monitor-enter v1

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/data/LocalMediaData;->mUsing:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onFullScreen(Z)V
    .locals 0
    .param p1, "fullScreen"    # Z

    .prologue
    .line 197
    return-void
.end method

.method public prepare()V
    .locals 2

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData;->mUsing:Ljava/lang/Boolean;

    monitor-enter v1

    .line 229
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/LocalMediaData;->mUsing:Ljava/lang/Boolean;

    .line 230
    monitor-exit v1

    .line 231
    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 235
    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData;->mUsing:Ljava/lang/Boolean;

    monitor-enter v1

    .line 236
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/LocalMediaData;->mUsing:Ljava/lang/Boolean;

    .line 237
    monitor-exit v1

    .line 238
    return-void

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public viewPhotoSphere(Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;)V
    .locals 1
    .param p1, "helper"    # Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/camera/data/LocalMediaData;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->showPanorama(Landroid/net/Uri;)V

    .line 164
    return-void
.end method
