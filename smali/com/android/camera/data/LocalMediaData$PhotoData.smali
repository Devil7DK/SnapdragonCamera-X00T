.class public final Lcom/android/camera/data/LocalMediaData$PhotoData;
.super Lcom/android/camera/data/LocalMediaData;
.source "LocalMediaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/LocalMediaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhotoData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/LocalMediaData$PhotoData$PhotoBitmapLoadTask;
    }
.end annotation


# static fields
.field public static final COL_DATA:I = 0x5

.field public static final COL_DATE_MODIFIED:I = 0x4

.field public static final COL_DATE_TAKEN:I = 0x3

.field public static final COL_HEIGHT:I = 0x8

.field public static final COL_ID:I = 0x0

.field public static final COL_LATITUDE:I = 0xa

.field public static final COL_LONGITUDE:I = 0xb

.field public static final COL_MIME_TYPE:I = 0x2

.field public static final COL_ORIENTATION:I = 0x6

.field public static final COL_SIZE:I = 0x9

.field public static final COL_TITLE:I = 0x1

.field public static final COL_WIDTH:I = 0x7

.field static final CONTENT_URI:Landroid/net/Uri;

.field private static final DECODE_TEMP_STORAGE:[B

.field static final QUERY_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CAM_PhotoData"

.field private static final mSupportedDataActions:I = 0x2

.field private static final mSupportedUIActions:I = 0x7


# instance fields
.field private final mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 305
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/camera/data/LocalMediaData$PhotoData;->CONTENT_URI:Landroid/net/Uri;

    .line 312
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "height"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "longitude"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/data/LocalMediaData$PhotoData;->QUERY_PROJECTION:[Ljava/lang/String;

    .line 335
    const v0, 0x8000

    new-array v0, v0, [B

    sput-object v0, Lcom/android/camera/data/LocalMediaData$PhotoData;->DECODE_TEMP_STORAGE:[B

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIIJDD)V
    .locals 21
    .param p1, "id"    # J
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "dateTakenInSeconds"    # J
    .param p7, "dateModifiedInSeconds"    # J
    .param p9, "path"    # Ljava/lang/String;
    .param p10, "orientation"    # I
    .param p11, "width"    # I
    .param p12, "height"    # I
    .param p13, "sizeInBytes"    # J
    .param p15, "latitude"    # D
    .param p17, "longitude"    # D

    .prologue
    .line 344
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-object/from16 v11, p9

    move/from16 v12, p11

    move/from16 v13, p12

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    move-wide/from16 v18, p17

    invoke-direct/range {v2 .. v19}, Lcom/android/camera/data/LocalMediaData;-><init>(JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIJDD)V

    .line 346
    move/from16 v0, p10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/data/LocalMediaData$PhotoData;->mOrientation:I

    .line 347
    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lcom/android/camera/data/LocalMediaData$PhotoData;->DECODE_TEMP_STORAGE:[B

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/data/LocalMediaData$PhotoData;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/data/LocalMediaData$PhotoData;

    .prologue
    .line 289
    iget v0, p0, Lcom/android/camera/data/LocalMediaData$PhotoData;->mOrientation:I

    return v0
.end method

.method static buildFromCursor(Landroid/database/Cursor;)Lcom/android/camera/data/LocalMediaData$PhotoData;
    .locals 26
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 350
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 351
    .local v4, "id":J
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 352
    .local v6, "title":Ljava/lang/String;
    const/16 v23, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 353
    .local v7, "mimeType":Ljava/lang/String;
    const/16 v23, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 354
    .local v8, "dateTakenInSeconds":J
    const/16 v23, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 355
    .local v10, "dateModifiedInSeconds":J
    const/16 v23, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 356
    .local v12, "path":Ljava/lang/String;
    const/16 v23, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 357
    .local v13, "orientation":I
    const/16 v23, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 358
    .local v14, "width":I
    const/16 v23, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 359
    .local v15, "height":I
    if-lez v14, :cond_0

    if-gtz v15, :cond_1

    .line 360
    :cond_0
    const-string v23, "CAM_PhotoData"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Zero dimension in ContentResolver for "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "x"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    new-instance v22, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 363
    .local v22, "opts":Landroid/graphics/BitmapFactory$Options;
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 364
    move-object/from16 v0, v22

    invoke-static {v12, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 365
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v23, v0

    if-lez v23, :cond_2

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v23, v0

    if-lez v23, :cond_2

    .line 366
    move-object/from16 v0, v22

    iget v14, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 367
    move-object/from16 v0, v22

    iget v15, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 385
    .end local v22    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/16 v23, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 386
    .local v16, "sizeInBytes":J
    const/16 v23, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    .line 387
    .local v18, "latitude":D
    const/16 v23, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v20

    .line 388
    .local v20, "longitude":D
    new-instance v3, Lcom/android/camera/data/LocalMediaData$PhotoData;

    invoke-direct/range {v3 .. v21}, Lcom/android/camera/data/LocalMediaData$PhotoData;-><init>(JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIIJDD)V

    .line 391
    .end local v16    # "sizeInBytes":J
    .end local v18    # "latitude":D
    .end local v20    # "longitude":D
    :goto_0
    return-object v3

    .line 369
    .restart local v22    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    const-string v23, "CAM_PhotoData"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Dimension decode failed for "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 371
    .local v2, "b":Landroid/graphics/Bitmap;
    if-nez v2, :cond_3

    .line 372
    const-string v23, "CAM_PhotoData"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "PhotoData skipped. Decoding "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "failed."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v3, 0x0

    goto :goto_0

    .line 376
    :cond_3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 377
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 378
    if-eqz v14, :cond_4

    if-nez v15, :cond_1

    .line 379
    :cond_4
    const-string v23, "CAM_PhotoData"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "PhotoData skipped. Bitmap size 0 for "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/content/Context;)Z
    .locals 6
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 423
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 424
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/camera/data/LocalMediaData$PhotoData;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/camera/data/LocalMediaData$PhotoData;->mContentId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 425
    invoke-super {p0, p1}, Lcom/android/camera/data/LocalMediaData;->delete(Landroid/content/Context;)Z

    move-result v1

    return v1
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 430
    sget-object v0, Lcom/android/camera/data/LocalMediaData$PhotoData;->CONTENT_URI:Landroid/net/Uri;

    .line 431
    .local v0, "baseUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/data/LocalMediaData$PhotoData;->mContentId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getLocalDataType()I
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/camera/data/LocalMediaData$PhotoData;->mPanoramaMetadata:Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/android/camera/data/LocalMediaData$PhotoData;->mPanoramaMetadata:Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;

    iget-boolean v0, v0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;->mIsPanorama360:Z

    if-eqz v0, :cond_0

    .line 446
    const/4 v0, 0x6

    .line 451
    :goto_0
    return v0

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/LocalMediaData$PhotoData;->mPanoramaMetadata:Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;

    iget-boolean v0, v0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;->mUsePanoramaViewer:Z

    if-eqz v0, :cond_1

    .line 448
    const/4 v0, 0x5

    goto :goto_0

    .line 451
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getMediaDetails(Landroid/content/Context;)Lcom/android/camera/data/MediaDetails;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 436
    invoke-super {p0, p1}, Lcom/android/camera/data/LocalMediaData;->getMediaDetails(Landroid/content/Context;)Lcom/android/camera/data/MediaDetails;

    move-result-object v0

    .line 437
    .local v0, "mediaDetails":Lcom/android/camera/data/MediaDetails;
    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData$PhotoData;->mPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/data/MediaDetails;->extractExifInfo(Lcom/android/camera/data/MediaDetails;Ljava/lang/String;)V

    .line 438
    const/4 v1, 0x7

    iget v2, p0, Lcom/android/camera/data/LocalMediaData$PhotoData;->mOrientation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 439
    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/android/camera/data/LocalMediaData$PhotoData;->mOrientation:I

    return v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x2

    return v0
.end method

.method public isDataActionSupported(I)Z
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 418
    and-int/lit8 v0, p1, 0x2

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhoto()Z
    .locals 1

    .prologue
    .line 468
    const/4 v0, 0x1

    return v0
.end method

.method public isUIActionSupported(I)Z
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 413
    and-int/lit8 v0, p1, 0x7

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refresh(Landroid/content/ContentResolver;)Lcom/android/camera/data/LocalData;
    .locals 8
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v3, 0x0

    .line 456
    .line 457
    invoke-virtual {p0}, Lcom/android/camera/data/LocalMediaData$PhotoData;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/camera/data/LocalMediaData$PhotoData;->QUERY_PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    .line 456
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 458
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v7, v3

    .line 463
    :goto_0
    return-object v7

    .line 461
    :cond_1
    invoke-static {v6}, Lcom/android/camera/data/LocalMediaData$PhotoData;->buildFromCursor(Landroid/database/Cursor;)Lcom/android/camera/data/LocalMediaData$PhotoData;

    move-result-object v7

    .line 462
    .local v7, "newData":Lcom/android/camera/data/LocalMediaData$PhotoData;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public rotate90Degrees(Landroid/content/Context;Lcom/android/camera/data/LocalDataAdapter;IZ)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/camera/data/LocalDataAdapter;
    .param p3, "currentDataId"    # I
    .param p4, "clockwise"    # Z

    .prologue
    const/4 v3, 0x1

    .line 567
    new-instance v0, Lcom/android/camera/data/RotationTask;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/camera/data/RotationTask;-><init>(Landroid/content/Context;Lcom/android/camera/data/LocalDataAdapter;IZ)V

    .line 569
    .local v0, "task":Lcom/android/camera/data/RotationTask;
    new-array v1, v3, [Lcom/android/camera/data/LocalData;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/data/RotationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 570
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Photo:,data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData$PhotoData;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/data/LocalMediaData$PhotoData;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/data/LocalMediaData$PhotoData;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/data/LocalMediaData$PhotoData;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/data/LocalMediaData$PhotoData;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/camera/data/LocalMediaData$PhotoData;->mDateTakenInSeconds:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
