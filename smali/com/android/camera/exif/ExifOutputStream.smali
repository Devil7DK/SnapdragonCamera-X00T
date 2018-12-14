.class Lcom/android/camera/exif/ExifOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ExifOutputStream.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final EXIF_HEADER:I = 0x45786966

.field private static final MAX_EXIF_SIZE:I = 0xffff

.field private static final STATE_FRAME_HEADER:I = 0x1

.field private static final STATE_JPEG_DATA:I = 0x2

.field private static final STATE_SOI:I = 0x0

.field private static final STREAMBUFFER_SIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "ExifOutputStream"

.field private static final TAG_SIZE:S = 0xcs

.field private static final TIFF_BIG_ENDIAN:S = 0x4d4ds

.field private static final TIFF_HEADER:S = 0x2as

.field private static final TIFF_HEADER_SIZE:S = 0x8s

.field private static final TIFF_LITTLE_ENDIAN:S = 0x4949s


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mByteToCopy:I

.field private mByteToSkip:I

.field private mExifData:Lcom/android/camera/exif/ExifData;

.field private final mInterface:Lcom/android/camera/exif/ExifInterface;

.field private mSingleByteArray:[B

.field private mSize:I

.field private mState:I


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;Lcom/android/camera/exif/ExifInterface;)V
    .locals 3
    .param p1, "ou"    # Ljava/io/OutputStream;
    .param p2, "iRef"    # Lcom/android/camera/exif/ExifInterface;

    .prologue
    const/4 v2, 0x0

    .line 88
    new-instance v0, Ljava/io/BufferedOutputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 78
    iput v2, p0, Lcom/android/camera/exif/ExifOutputStream;->mState:I

    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mSingleByteArray:[B

    .line 82
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    .line 85
    iput v2, p0, Lcom/android/camera/exif/ExifOutputStream;->mSize:I

    .line 89
    iput-object p2, p0, Lcom/android/camera/exif/ExifOutputStream;->mInterface:Lcom/android/camera/exif/ExifInterface;

    .line 90
    return-void
.end method

.method private calculateAllOffset()I
    .locals 12

    .prologue
    .line 444
    const/16 v6, 0x8

    .line 445
    .local v6, "offset":I
    iget-object v9, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v3

    .line 446
    .local v3, "ifd0":Lcom/android/camera/exif/IfdData;
    invoke-direct {p0, v3, v6}, Lcom/android/camera/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/android/camera/exif/IfdData;I)I

    move-result v6

    .line 447
    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v9}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v9

    invoke-virtual {v3, v9}, Lcom/android/camera/exif/IfdData;->getTag(S)Lcom/android/camera/exif/ExifTag;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/camera/exif/ExifTag;->setValue(I)Z

    .line 449
    iget-object v9, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v0

    .line 450
    .local v0, "exifIfd":Lcom/android/camera/exif/IfdData;
    invoke-direct {p0, v0, v6}, Lcom/android/camera/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/android/camera/exif/IfdData;I)I

    move-result v6

    .line 452
    iget-object v9, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v5

    .line 453
    .local v5, "interIfd":Lcom/android/camera/exif/IfdData;
    if-eqz v5, :cond_0

    .line 454
    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v9}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v9

    invoke-virtual {v0, v9}, Lcom/android/camera/exif/IfdData;->getTag(S)Lcom/android/camera/exif/ExifTag;

    move-result-object v9

    .line 455
    invoke-virtual {v9, v6}, Lcom/android/camera/exif/ExifTag;->setValue(I)Z

    .line 456
    invoke-direct {p0, v5, v6}, Lcom/android/camera/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/android/camera/exif/IfdData;I)I

    move-result v6

    .line 459
    :cond_0
    iget-object v9, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v1

    .line 460
    .local v1, "gpsIfd":Lcom/android/camera/exif/IfdData;
    if-eqz v1, :cond_1

    .line 461
    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v9}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v9

    invoke-virtual {v3, v9}, Lcom/android/camera/exif/IfdData;->getTag(S)Lcom/android/camera/exif/ExifTag;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/camera/exif/ExifTag;->setValue(I)Z

    .line 462
    invoke-direct {p0, v1, v6}, Lcom/android/camera/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/android/camera/exif/IfdData;I)I

    move-result v6

    .line 465
    :cond_1
    iget-object v9, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v4

    .line 466
    .local v4, "ifd1":Lcom/android/camera/exif/IfdData;
    if-eqz v4, :cond_2

    .line 467
    invoke-virtual {v3, v6}, Lcom/android/camera/exif/IfdData;->setOffsetToNextIfd(I)V

    .line 468
    invoke-direct {p0, v4, v6}, Lcom/android/camera/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/android/camera/exif/IfdData;I)I

    move-result v6

    .line 472
    :cond_2
    iget-object v9, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v9}, Lcom/android/camera/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 473
    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v9}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v9

    invoke-virtual {v4, v9}, Lcom/android/camera/exif/IfdData;->getTag(S)Lcom/android/camera/exif/ExifTag;

    move-result-object v9

    .line 474
    invoke-virtual {v9, v6}, Lcom/android/camera/exif/ExifTag;->setValue(I)Z

    .line 475
    iget-object v9, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v9}, Lcom/android/camera/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v9

    array-length v9, v9

    add-int/2addr v6, v9

    .line 486
    :cond_3
    :goto_0
    return v6

    .line 476
    :cond_4
    iget-object v9, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v9}, Lcom/android/camera/exif/ExifData;->hasUncompressedStrip()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 477
    iget-object v9, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v9}, Lcom/android/camera/exif/ExifData;->getStripCount()I

    move-result v8

    .line 478
    .local v8, "stripCount":I
    new-array v7, v8, [J

    .line 479
    .local v7, "offsets":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v9, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v9}, Lcom/android/camera/exif/ExifData;->getStripCount()I

    move-result v9

    if-ge v2, v9, :cond_5

    .line 480
    int-to-long v10, v6

    aput-wide v10, v7, v2

    .line 481
    iget-object v9, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v9, v2}, Lcom/android/camera/exif/ExifData;->getStrip(I)[B

    move-result-object v9

    array-length v9, v9

    add-int/2addr v6, v9

    .line 479
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 483
    :cond_5
    sget v9, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v9}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v9

    invoke-virtual {v4, v9}, Lcom/android/camera/exif/IfdData;->getTag(S)Lcom/android/camera/exif/ExifTag;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/android/camera/exif/ExifTag;->setValue([J)Z

    goto :goto_0
.end method

.method private calculateOffsetOfIfd(Lcom/android/camera/exif/IfdData;I)I
    .locals 6
    .param p1, "ifd"    # Lcom/android/camera/exif/IfdData;
    .param p2, "offset"    # I

    .prologue
    .line 319
    invoke-virtual {p1}, Lcom/android/camera/exif/IfdData;->getTagCount()I

    move-result v2

    mul-int/lit8 v2, v2, 0xc

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x4

    add-int/2addr p2, v2

    .line 320
    invoke-virtual {p1}, Lcom/android/camera/exif/IfdData;->getAllTags()[Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    .line 321
    .local v1, "tags":[Lcom/android/camera/exif/ExifTag;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 322
    .local v0, "tag":Lcom/android/camera/exif/ExifTag;
    invoke-virtual {v0}, Lcom/android/camera/exif/ExifTag;->getDataSize()I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_0

    .line 323
    invoke-virtual {v0, p2}, Lcom/android/camera/exif/ExifTag;->setOffset(I)V

    .line 324
    invoke-virtual {v0}, Lcom/android/camera/exif/ExifTag;->getDataSize()I

    move-result v4

    add-int/2addr p2, v4

    .line 321
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 327
    .end local v0    # "tag":Lcom/android/camera/exif/ExifTag;
    :cond_1
    return p2
.end method

.method private createRequiredIfdAndTag()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v7

    .line 333
    .local v7, "ifd0":Lcom/android/camera/exif/IfdData;
    if-nez v7, :cond_0

    .line 334
    new-instance v7, Lcom/android/camera/exif/IfdData;

    .end local v7    # "ifd0":Lcom/android/camera/exif/IfdData;
    const/4 v15, 0x0

    invoke-direct {v7, v15}, Lcom/android/camera/exif/IfdData;-><init>(I)V

    .line 335
    .restart local v7    # "ifd0":Lcom/android/camera/exif/IfdData;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v15, v7}, Lcom/android/camera/exif/ExifData;->addIfdData(Lcom/android/camera/exif/IfdData;)V

    .line 337
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/exif/ExifOutputStream;->mInterface:Lcom/android/camera/exif/ExifInterface;

    sget v16, Lcom/android/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/exif/ExifInterface;->buildUninitializedTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v3

    .line 338
    .local v3, "exifOffsetTag":Lcom/android/camera/exif/ExifTag;
    if-nez v3, :cond_1

    .line 339
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "No definition for crucial exif tag: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/android/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 342
    :cond_1
    invoke-virtual {v7, v3}, Lcom/android/camera/exif/IfdData;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 345
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v2

    .line 346
    .local v2, "exifIfd":Lcom/android/camera/exif/IfdData;
    if-nez v2, :cond_2

    .line 347
    new-instance v2, Lcom/android/camera/exif/IfdData;

    .end local v2    # "exifIfd":Lcom/android/camera/exif/IfdData;
    const/4 v15, 0x2

    invoke-direct {v2, v15}, Lcom/android/camera/exif/IfdData;-><init>(I)V

    .line 348
    .restart local v2    # "exifIfd":Lcom/android/camera/exif/IfdData;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v15, v2}, Lcom/android/camera/exif/ExifData;->addIfdData(Lcom/android/camera/exif/IfdData;)V

    .line 352
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v4

    .line 353
    .local v4, "gpsIfd":Lcom/android/camera/exif/IfdData;
    if-eqz v4, :cond_4

    .line 354
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/exif/ExifOutputStream;->mInterface:Lcom/android/camera/exif/ExifInterface;

    sget v16, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/exif/ExifInterface;->buildUninitializedTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v5

    .line 355
    .local v5, "gpsOffsetTag":Lcom/android/camera/exif/ExifTag;
    if-nez v5, :cond_3

    .line 356
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "No definition for crucial exif tag: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 359
    :cond_3
    invoke-virtual {v7, v5}, Lcom/android/camera/exif/IfdData;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 363
    .end local v5    # "gpsOffsetTag":Lcom/android/camera/exif/ExifTag;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    const/16 v16, 0x3

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v9

    .line 364
    .local v9, "interIfd":Lcom/android/camera/exif/IfdData;
    if-eqz v9, :cond_6

    .line 365
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/exif/ExifOutputStream;->mInterface:Lcom/android/camera/exif/ExifInterface;

    sget v16, Lcom/android/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 366
    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/exif/ExifInterface;->buildUninitializedTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v10

    .line 367
    .local v10, "interOffsetTag":Lcom/android/camera/exif/ExifTag;
    if-nez v10, :cond_5

    .line 368
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "No definition for crucial exif tag: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/android/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 371
    :cond_5
    invoke-virtual {v2, v10}, Lcom/android/camera/exif/IfdData;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 374
    .end local v10    # "interOffsetTag":Lcom/android/camera/exif/ExifTag;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v8

    .line 377
    .local v8, "ifd1":Lcom/android/camera/exif/IfdData;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v15}, Lcom/android/camera/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 379
    if-nez v8, :cond_7

    .line 380
    new-instance v8, Lcom/android/camera/exif/IfdData;

    .end local v8    # "ifd1":Lcom/android/camera/exif/IfdData;
    const/4 v15, 0x1

    invoke-direct {v8, v15}, Lcom/android/camera/exif/IfdData;-><init>(I)V

    .line 381
    .restart local v8    # "ifd1":Lcom/android/camera/exif/IfdData;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v15, v8}, Lcom/android/camera/exif/ExifData;->addIfdData(Lcom/android/camera/exif/IfdData;)V

    .line 384
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/exif/ExifOutputStream;->mInterface:Lcom/android/camera/exif/ExifInterface;

    sget v16, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 385
    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/exif/ExifInterface;->buildUninitializedTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v13

    .line 386
    .local v13, "offsetTag":Lcom/android/camera/exif/ExifTag;
    if-nez v13, :cond_8

    .line 387
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "No definition for crucial exif tag: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 391
    :cond_8
    invoke-virtual {v8, v13}, Lcom/android/camera/exif/IfdData;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 392
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/exif/ExifOutputStream;->mInterface:Lcom/android/camera/exif/ExifInterface;

    sget v16, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 393
    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/exif/ExifInterface;->buildUninitializedTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v11

    .line 394
    .local v11, "lengthTag":Lcom/android/camera/exif/ExifTag;
    if-nez v11, :cond_9

    .line 395
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "No definition for crucial exif tag: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 399
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v15}, Lcom/android/camera/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v15

    array-length v15, v15

    invoke-virtual {v11, v15}, Lcom/android/camera/exif/ExifTag;->setValue(I)Z

    .line 400
    invoke-virtual {v8, v11}, Lcom/android/camera/exif/IfdData;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 403
    sget v15, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v15}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v15

    invoke-virtual {v8, v15}, Lcom/android/camera/exif/IfdData;->removeTag(S)V

    .line 404
    sget v15, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v15}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v15

    invoke-virtual {v8, v15}, Lcom/android/camera/exif/IfdData;->removeTag(S)V

    .line 441
    .end local v11    # "lengthTag":Lcom/android/camera/exif/ExifTag;
    .end local v13    # "offsetTag":Lcom/android/camera/exif/ExifTag;
    :cond_a
    :goto_0
    return-void

    .line 405
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v15}, Lcom/android/camera/exif/ExifData;->hasUncompressedStrip()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 406
    if-nez v8, :cond_c

    .line 407
    new-instance v8, Lcom/android/camera/exif/IfdData;

    .end local v8    # "ifd1":Lcom/android/camera/exif/IfdData;
    const/4 v15, 0x1

    invoke-direct {v8, v15}, Lcom/android/camera/exif/IfdData;-><init>(I)V

    .line 408
    .restart local v8    # "ifd1":Lcom/android/camera/exif/IfdData;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v15, v8}, Lcom/android/camera/exif/ExifData;->addIfdData(Lcom/android/camera/exif/IfdData;)V

    .line 410
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v15}, Lcom/android/camera/exif/ExifData;->getStripCount()I

    move-result v14

    .line 411
    .local v14, "stripCount":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/exif/ExifOutputStream;->mInterface:Lcom/android/camera/exif/ExifInterface;

    sget v16, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/exif/ExifInterface;->buildUninitializedTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v13

    .line 412
    .restart local v13    # "offsetTag":Lcom/android/camera/exif/ExifTag;
    if-nez v13, :cond_d

    .line 413
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "No definition for crucial exif tag: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 416
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/exif/ExifOutputStream;->mInterface:Lcom/android/camera/exif/ExifInterface;

    sget v16, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 417
    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/exif/ExifInterface;->buildUninitializedTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v11

    .line 418
    .restart local v11    # "lengthTag":Lcom/android/camera/exif/ExifTag;
    if-nez v11, :cond_e

    .line 419
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "No definition for crucial exif tag: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 422
    :cond_e
    new-array v12, v14, [J

    .line 423
    .local v12, "lengths":[J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v15}, Lcom/android/camera/exif/ExifData;->getStripCount()I

    move-result v15

    if-ge v6, v15, :cond_f

    .line 424
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v15, v6}, Lcom/android/camera/exif/ExifData;->getStrip(I)[B

    move-result-object v15

    array-length v15, v15

    int-to-long v0, v15

    move-wide/from16 v16, v0

    aput-wide v16, v12, v6

    .line 423
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 426
    :cond_f
    invoke-virtual {v11, v12}, Lcom/android/camera/exif/ExifTag;->setValue([J)Z

    .line 427
    invoke-virtual {v8, v13}, Lcom/android/camera/exif/IfdData;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 428
    invoke-virtual {v8, v11}, Lcom/android/camera/exif/IfdData;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 430
    sget v15, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v15}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v15

    invoke-virtual {v8, v15}, Lcom/android/camera/exif/IfdData;->removeTag(S)V

    .line 431
    sget v15, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 432
    invoke-static {v15}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v15

    .line 431
    invoke-virtual {v8, v15}, Lcom/android/camera/exif/IfdData;->removeTag(S)V

    goto/16 :goto_0

    .line 433
    .end local v6    # "i":I
    .end local v11    # "lengthTag":Lcom/android/camera/exif/ExifTag;
    .end local v12    # "lengths":[J
    .end local v13    # "offsetTag":Lcom/android/camera/exif/ExifTag;
    .end local v14    # "stripCount":I
    :cond_10
    if-eqz v8, :cond_a

    .line 435
    sget v15, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v15}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v15

    invoke-virtual {v8, v15}, Lcom/android/camera/exif/IfdData;->removeTag(S)V

    .line 436
    sget v15, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v15}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v15

    invoke-virtual {v8, v15}, Lcom/android/camera/exif/IfdData;->removeTag(S)V

    .line 437
    sget v15, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v15}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v15

    invoke-virtual {v8, v15}, Lcom/android/camera/exif/IfdData;->removeTag(S)V

    .line 438
    sget v15, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 439
    invoke-static {v15}, Lcom/android/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v15

    .line 438
    invoke-virtual {v8, v15}, Lcom/android/camera/exif/IfdData;->removeTag(S)V

    goto/16 :goto_0
.end method

.method private requestByteToBuffer(I[BII)I
    .locals 3
    .param p1, "requestByteCount"    # I
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 109
    iget-object v2, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int v0, p1, v2

    .line 110
    .local v0, "byteNeeded":I
    if-le p4, v0, :cond_0

    move v1, v0

    .line 111
    .local v1, "byteToRead":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p2, p3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 112
    return v1

    .end local v1    # "byteToRead":I
    :cond_0
    move v1, p4

    .line 110
    goto :goto_0
.end method

.method private stripNullValueTags(Lcom/android/camera/exif/ExifData;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "data"    # Lcom/android/camera/exif/ExifData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/exif/ExifData;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v0, "nullTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/exif/ExifTag;>;"
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifData;->getAllTags()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/exif/ExifTag;

    .line 255
    .local v1, "t":Lcom/android/camera/exif/ExifTag;
    invoke-virtual {v1}, Lcom/android/camera/exif/ExifTag;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/exif/ExifTag;->getTagId()S

    move-result v3

    invoke-static {v3}, Lcom/android/camera/exif/ExifInterface;->isOffsetTag(S)Z

    move-result v3

    if-nez v3, :cond_0

    .line 256
    invoke-virtual {v1}, Lcom/android/camera/exif/ExifTag;->getTagId()S

    move-result v3

    invoke-virtual {v1}, Lcom/android/camera/exif/ExifTag;->getIfd()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/exif/ExifData;->removeTag(SI)V

    .line 257
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 260
    .end local v1    # "t":Lcom/android/camera/exif/ExifTag;
    :cond_1
    return-object v0
.end method

.method private writeAllTags(Lcom/android/camera/exif/OrderedDataOutputStream;)V
    .locals 6
    .param p1, "dataOutputStream"    # Lcom/android/camera/exif/OrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 274
    iget-object v3, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/camera/exif/ExifOutputStream;->writeIfd(Lcom/android/camera/exif/IfdData;Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 275
    iget-object v3, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/camera/exif/ExifOutputStream;->writeIfd(Lcom/android/camera/exif/IfdData;Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 276
    iget-object v3, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v2

    .line 277
    .local v2, "interoperabilityIfd":Lcom/android/camera/exif/IfdData;
    if-eqz v2, :cond_0

    .line 278
    invoke-direct {p0, v2, p1}, Lcom/android/camera/exif/ExifOutputStream;->writeIfd(Lcom/android/camera/exif/IfdData;Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 280
    :cond_0
    iget-object v3, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v0

    .line 281
    .local v0, "gpsIfd":Lcom/android/camera/exif/IfdData;
    if-eqz v0, :cond_1

    .line 282
    invoke-direct {p0, v0, p1}, Lcom/android/camera/exif/ExifOutputStream;->writeIfd(Lcom/android/camera/exif/IfdData;Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 284
    :cond_1
    iget-object v3, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v3, v5}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v1

    .line 285
    .local v1, "ifd1":Lcom/android/camera/exif/IfdData;
    if-eqz v1, :cond_2

    .line 286
    iget-object v3, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v3, v5}, Lcom/android/camera/exif/ExifData;->getIfdData(I)Lcom/android/camera/exif/IfdData;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/camera/exif/ExifOutputStream;->writeIfd(Lcom/android/camera/exif/IfdData;Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 288
    :cond_2
    return-void
.end method

.method private writeExifData()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    iget-object v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    if-nez v4, :cond_0

    .line 250
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-direct {p0, v4}, Lcom/android/camera/exif/ExifOutputStream;->stripNullValueTags(Lcom/android/camera/exif/ExifData;)Ljava/util/ArrayList;

    move-result-object v2

    .line 225
    .local v2, "nullTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/exif/ExifTag;>;"
    invoke-direct {p0}, Lcom/android/camera/exif/ExifOutputStream;->createRequiredIfdAndTag()V

    .line 226
    invoke-direct {p0}, Lcom/android/camera/exif/ExifOutputStream;->calculateAllOffset()I

    move-result v1

    .line 227
    .local v1, "exifSize":I
    add-int/lit8 v4, v1, 0x8

    const v5, 0xffff

    if-le v4, v5, :cond_1

    .line 228
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Exif header is too large (>64Kb)"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 230
    :cond_1
    new-instance v0, Lcom/android/camera/exif/OrderedDataOutputStream;

    iget-object v4, p0, Lcom/android/camera/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {v0, v4}, Lcom/android/camera/exif/OrderedDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 231
    .local v0, "dataOutputStream":Lcom/android/camera/exif/OrderedDataOutputStream;
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Lcom/android/camera/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 232
    const/16 v4, -0x1f

    invoke-virtual {v0, v4}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 233
    add-int/lit8 v4, v1, 0x8

    int-to-short v4, v4

    invoke-virtual {v0, v4}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 234
    const v4, 0x45786966

    invoke-virtual {v0, v4}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 235
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 236
    iget-object v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v4}, Lcom/android/camera/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_2

    .line 237
    const/16 v4, 0x4d4d

    invoke-virtual {v0, v4}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 241
    :goto_1
    iget-object v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v4}, Lcom/android/camera/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/camera/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 242
    const/16 v4, 0x2a

    invoke-virtual {v0, v4}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 243
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 244
    invoke-direct {p0, v0}, Lcom/android/camera/exif/ExifOutputStream;->writeAllTags(Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 245
    invoke-direct {p0, v0}, Lcom/android/camera/exif/ExifOutputStream;->writeThumbnail(Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 246
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/exif/ExifTag;

    .line 247
    .local v3, "t":Lcom/android/camera/exif/ExifTag;
    iget-object v5, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v5, v3}, Lcom/android/camera/exif/ExifData;->addTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    goto :goto_2

    .line 239
    .end local v3    # "t":Lcom/android/camera/exif/ExifTag;
    :cond_2
    const/16 v4, 0x4949

    invoke-virtual {v0, v4}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    goto :goto_1

    .line 249
    :cond_3
    iget v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mSize:I

    invoke-virtual {v0}, Lcom/android/camera/exif/OrderedDataOutputStream;->size()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mSize:I

    goto/16 :goto_0
.end method

.method private writeIfd(Lcom/android/camera/exif/IfdData;Lcom/android/camera/exif/OrderedDataOutputStream;)V
    .locals 9
    .param p1, "ifd"    # Lcom/android/camera/exif/IfdData;
    .param p2, "dataOutputStream"    # Lcom/android/camera/exif/OrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x0

    .line 292
    invoke-virtual {p1}, Lcom/android/camera/exif/IfdData;->getAllTags()[Lcom/android/camera/exif/ExifTag;

    move-result-object v3

    .line 293
    .local v3, "tags":[Lcom/android/camera/exif/ExifTag;
    array-length v5, v3

    int-to-short v5, v5

    invoke-virtual {p2, v5}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 294
    array-length v6, v3

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v2, v3, v5

    .line 295
    .local v2, "tag":Lcom/android/camera/exif/ExifTag;
    invoke-virtual {v2}, Lcom/android/camera/exif/ExifTag;->getTagId()S

    move-result v7

    invoke-virtual {p2, v7}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 296
    invoke-virtual {v2}, Lcom/android/camera/exif/ExifTag;->getDataType()S

    move-result v7

    invoke-virtual {p2, v7}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 297
    invoke-virtual {v2}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 301
    invoke-virtual {v2}, Lcom/android/camera/exif/ExifTag;->getDataSize()I

    move-result v7

    if-le v7, v8, :cond_1

    .line 302
    invoke-virtual {v2}, Lcom/android/camera/exif/ExifTag;->getOffset()I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 294
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 304
    :cond_1
    invoke-static {v2, p2}, Lcom/android/camera/exif/ExifOutputStream;->writeTagValue(Lcom/android/camera/exif/ExifTag;Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 305
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v2}, Lcom/android/camera/exif/ExifTag;->getDataSize()I

    move-result v7

    rsub-int/lit8 v1, v7, 0x4

    .local v1, "n":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 306
    invoke-virtual {p2, v4}, Lcom/android/camera/exif/OrderedDataOutputStream;->write(I)V

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 310
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "tag":Lcom/android/camera/exif/ExifTag;
    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/exif/IfdData;->getOffsetToNextIfd()I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 311
    array-length v5, v3

    :goto_2
    if-ge v4, v5, :cond_4

    aget-object v2, v3, v4

    .line 312
    .restart local v2    # "tag":Lcom/android/camera/exif/ExifTag;
    invoke-virtual {v2}, Lcom/android/camera/exif/ExifTag;->getDataSize()I

    move-result v6

    if-le v6, v8, :cond_3

    .line 313
    invoke-static {v2, p2}, Lcom/android/camera/exif/ExifOutputStream;->writeTagValue(Lcom/android/camera/exif/ExifTag;Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 311
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 316
    .end local v2    # "tag":Lcom/android/camera/exif/ExifTag;
    :cond_4
    return-void
.end method

.method static writeTagValue(Lcom/android/camera/exif/ExifTag;Lcom/android/camera/exif/OrderedDataOutputStream;)V
    .locals 6
    .param p0, "tag"    # Lcom/android/camera/exif/ExifTag;
    .param p1, "dataOutputStream"    # Lcom/android/camera/exif/OrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 491
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifTag;->getDataType()S

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 526
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 493
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifTag;->getStringByte()[B

    move-result-object v0

    .line 494
    .local v0, "buf":[B
    array-length v3, v0

    invoke-virtual {p0}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 495
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aput-byte v5, v0, v3

    .line 496
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/OrderedDataOutputStream;->write([B)V

    goto :goto_0

    .line 498
    :cond_1
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/OrderedDataOutputStream;->write([B)V

    .line 499
    invoke-virtual {p1, v5}, Lcom/android/camera/exif/OrderedDataOutputStream;->write(I)V

    goto :goto_0

    .line 504
    .end local v0    # "buf":[B
    :pswitch_2
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v2

    .local v2, "n":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 505
    invoke-virtual {p0, v1}, Lcom/android/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {p1, v3}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 504
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 510
    .end local v1    # "i":I
    .end local v2    # "n":I
    :pswitch_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v2

    .restart local v2    # "n":I
    :goto_2
    if-ge v1, v2, :cond_0

    .line 511
    invoke-virtual {p0, v1}, Lcom/android/camera/exif/ExifTag;->getRational(I)Lcom/android/camera/exif/Rational;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeRational(Lcom/android/camera/exif/Rational;)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 510
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 516
    .end local v1    # "i":I
    .end local v2    # "n":I
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v3

    new-array v0, v3, [B

    .line 517
    .restart local v0    # "buf":[B
    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifTag;->getBytes([B)V

    .line 518
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/OrderedDataOutputStream;->write([B)V

    goto :goto_0

    .line 521
    .end local v0    # "buf":[B
    :pswitch_5
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifTag;->getComponentCount()I

    move-result v2

    .restart local v2    # "n":I
    :goto_3
    if-ge v1, v2, :cond_0

    .line 522
    invoke-virtual {p0, v1}, Lcom/android/camera/exif/ExifTag;->getValueAt(I)J

    move-result-wide v4

    long-to-int v3, v4

    int-to-short v3, v3

    invoke-virtual {p1, v3}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 521
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 491
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private writeThumbnail(Lcom/android/camera/exif/OrderedDataOutputStream;)V
    .locals 2
    .param p1, "dataOutputStream"    # Lcom/android/camera/exif/OrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    iget-object v1, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v1}, Lcom/android/camera/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    iget-object v1, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v1}, Lcom/android/camera/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/camera/exif/OrderedDataOutputStream;->write([B)V

    .line 271
    :cond_0
    return-void

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v1}, Lcom/android/camera/exif/ExifData;->hasUncompressedStrip()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v1}, Lcom/android/camera/exif/ExifData;->getStripCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v1, v0}, Lcom/android/camera/exif/ExifData;->getStrip(I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/camera/exif/OrderedDataOutputStream;->write([B)V

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected setExifData(Lcom/android/camera/exif/ExifData;)V
    .locals 0
    .param p1, "exifData"    # Lcom/android/camera/exif/ExifData;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/camera/exif/ExifOutputStream;->mExifData:Lcom/android/camera/exif/ExifData;

    .line 98
    return-void
.end method

.method size()I
    .locals 1

    .prologue
    .line 529
    iget v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mSize:I

    return v0
.end method

.method public write(I)V
    .locals 3
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mSingleByteArray:[B

    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 206
    iget-object v0, p0, Lcom/android/camera/exif/ExifOutputStream;->mSingleByteArray:[B

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifOutputStream;->write([B)V

    .line 207
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/exif/ExifOutputStream;->write([BII)V

    .line 215
    return-void
.end method

.method public write([BII)V
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v9, 0xffff

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 121
    :goto_0
    iget v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mByteToSkip:I

    if-gtz v4, :cond_0

    iget v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mByteToCopy:I

    if-gtz v4, :cond_0

    iget v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mState:I

    if-eq v4, v6, :cond_b

    :cond_0
    if-lez p3, :cond_b

    .line 123
    iget v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mByteToSkip:I

    if-lez v4, :cond_1

    .line 124
    iget v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mByteToSkip:I

    if-le p3, v4, :cond_4

    iget v1, p0, Lcom/android/camera/exif/ExifOutputStream;->mByteToSkip:I

    .line 125
    .local v1, "byteToProcess":I
    :goto_1
    sub-int/2addr p3, v1

    .line 126
    iget v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mByteToSkip:I

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mByteToSkip:I

    .line 127
    add-int/2addr p2, v1

    .line 129
    .end local v1    # "byteToProcess":I
    :cond_1
    iget v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mByteToCopy:I

    if-lez v4, :cond_2

    .line 130
    iget v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mByteToCopy:I

    if-le p3, v4, :cond_5

    iget v1, p0, Lcom/android/camera/exif/ExifOutputStream;->mByteToCopy:I

    .line 131
    .restart local v1    # "byteToProcess":I
    :goto_2
    iget-object v4, p0, Lcom/android/camera/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, p1, p2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 132
    iget v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mSize:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mSize:I

    .line 133
    sub-int/2addr p3, v1

    .line 134
    iget v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mByteToCopy:I

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mByteToCopy:I

    .line 135
    add-int/2addr p2, v1

    .line 137
    .end local v1    # "byteToProcess":I
    :cond_2
    if-nez p3, :cond_6

    .line 197
    :cond_3
    :goto_3
    return-void

    :cond_4
    move v1, p3

    .line 124
    goto :goto_1

    :cond_5
    move v1, p3

    .line 130
    goto :goto_2

    .line 140
    :cond_6
    iget v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mState:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 142
    :pswitch_0
    invoke-direct {p0, v6, p1, p2, p3}, Lcom/android/camera/exif/ExifOutputStream;->requestByteToBuffer(I[BII)I

    move-result v0

    .line 143
    .local v0, "byteRead":I
    add-int/2addr p2, v0

    .line 144
    sub-int/2addr p3, v0

    .line 145
    iget-object v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-lt v4, v6, :cond_3

    .line 148
    iget-object v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 149
    iget-object v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    const/16 v5, -0x28

    if-eq v4, v5, :cond_7

    .line 150
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Not a valid jpeg image, cannot write exif"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 152
    :cond_7
    iget-object v4, p0, Lcom/android/camera/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 153
    iget v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mSize:I

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mSize:I

    .line 154
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mState:I

    .line 155
    iget-object v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 156
    invoke-direct {p0}, Lcom/android/camera/exif/ExifOutputStream;->writeExifData()V

    goto/16 :goto_0

    .line 161
    .end local v0    # "byteRead":I
    :pswitch_1
    invoke-direct {p0, v8, p1, p2, p3}, Lcom/android/camera/exif/ExifOutputStream;->requestByteToBuffer(I[BII)I

    move-result v0

    .line 162
    .restart local v0    # "byteRead":I
    add-int/2addr p2, v0

    .line 163
    sub-int/2addr p3, v0

    .line 165
    iget-object v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-ne v4, v6, :cond_8

    .line 166
    iget-object v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 167
    .local v3, "tag":S
    const/16 v4, -0x27

    if-ne v3, v4, :cond_8

    .line 168
    iget-object v4, p0, Lcom/android/camera/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 169
    iget v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mSize:I

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mSize:I

    .line 170
    iget-object v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 173
    .end local v3    # "tag":S
    :cond_8
    iget-object v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-lt v4, v8, :cond_3

    .line 176
    iget-object v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 177
    iget-object v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 178
    .local v2, "marker":S
    const/16 v4, -0x1f

    if-ne v2, v4, :cond_9

    .line 179
    iget-object v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    and-int/2addr v4, v9

    add-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mByteToSkip:I

    .line 180
    iput v6, p0, Lcom/android/camera/exif/ExifOutputStream;->mState:I

    .line 190
    :goto_4
    iget-object v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 181
    :cond_9
    invoke-static {v2}, Lcom/android/camera/exif/JpegHeader;->isSofMarker(S)Z

    move-result v4

    if-nez v4, :cond_a

    .line 182
    iget-object v4, p0, Lcom/android/camera/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, v5, v7, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 183
    iget v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mSize:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mSize:I

    .line 184
    iget-object v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    and-int/2addr v4, v9

    add-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mByteToCopy:I

    goto :goto_4

    .line 186
    :cond_a
    iget-object v4, p0, Lcom/android/camera/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/android/camera/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, v5, v7, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 187
    iget v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mSize:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mSize:I

    .line 188
    iput v6, p0, Lcom/android/camera/exif/ExifOutputStream;->mState:I

    goto :goto_4

    .line 193
    .end local v0    # "byteRead":I
    .end local v2    # "marker":S
    :cond_b
    if-lez p3, :cond_3

    .line 194
    iget-object v4, p0, Lcom/android/camera/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 195
    iget v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mSize:I

    add-int/2addr v4, p3

    iput v4, p0, Lcom/android/camera/exif/ExifOutputStream;->mSize:I

    goto/16 :goto_3

    .line 140
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
