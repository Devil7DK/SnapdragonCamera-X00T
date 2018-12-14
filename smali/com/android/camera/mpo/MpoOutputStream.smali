.class Lcom/android/camera/mpo/MpoOutputStream;
.super Ljava/io/FilterOutputStream;
.source "MpoOutputStream.java"


# static fields
.field private static final DC_CROP_INFO:Ljava/lang/String; = "Qualcomm Dual Camera Attributes"

.field private static final DC_CROP_INFO_BYTE_SIZE:I

.field private static final DEBUG:Z

.field private static final MAX_EXIF_SIZE:I = 0xffff

.field private static final STATE_FRAME_HEADER:I = 0x1

.field private static final STATE_JPEG_DATA:I = 0x3

.field private static final STATE_SKIP_CROP:I = 0x2

.field private static final STATE_SOI:I = 0x0

.field private static final STREAMBUFFER_SIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "MpoOutputStream"

.field private static final TIFF_BIG_ENDIAN:S = 0x4d4ds

.field private static final TIFF_HEADER:S = 0x2as

.field private static final TIFF_LITTLE_ENDIAN:S = 0x4949s


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mByteToCopy:I

.field private mByteToSkip:I

.field private mCropInfo:Ljava/nio/ByteBuffer;

.field private mCurrentImageData:Lcom/android/camera/mpo/MpoImageData;

.field private mMpoData:Lcom/android/camera/mpo/MpoData;

.field private mMpoOffsetStart:I

.field private mSingleByteArray:[B

.field private mSize:I

.field private mSkipCropData:Z

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCamera2Debug()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 41
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCamera2Debug()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/camera/mpo/MpoOutputStream;->DEBUG:Z

    .line 55
    const-string v0, "Qualcomm Dual Camera Attributes"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/camera/mpo/MpoOutputStream;->DC_CROP_INFO_BYTE_SIZE:I

    return-void

    .line 41
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "ou"    # Ljava/io/OutputStream;

    .prologue
    const/4 v2, 0x0

    .line 70
    new-instance v0, Ljava/io/BufferedOutputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 59
    iput v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mState:I

    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSingleByteArray:[B

    .line 63
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    .line 64
    sget v0, Lcom/android/camera/mpo/MpoOutputStream;->DC_CROP_INFO_BYTE_SIZE:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mMpoOffsetStart:I

    .line 66
    iput v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    .line 67
    iput-boolean v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSkipCropData:Z

    .line 71
    return-void
.end method

.method private isDualCamCropInfo()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v3, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sget v4, Lcom/android/camera/mpo/MpoOutputStream;->DC_CROP_INFO_BYTE_SIZE:I

    if-eq v3, v4, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v2

    .line 102
    :cond_1
    iget-object v3, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 103
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const-string v3, "Qualcomm Dual Camera Attributes"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 104
    iget-object v3, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    int-to-char v0, v3

    .line 106
    .local v0, "c":C
    const-string v3, "Qualcomm Dual Camera Attributes"

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v0, :cond_0

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 110
    .end local v0    # "c":C
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private requestByteToBuffer(Ljava/nio/ByteBuffer;I[BII)I
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "requestByteCount"    # I
    .param p3, "data"    # [B
    .param p4, "offset"    # I
    .param p5, "length"    # I

    .prologue
    .line 90
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int v0, p2, v2

    .line 91
    .local v0, "byteNeeded":I
    if-le p5, v0, :cond_0

    move v1, v0

    .line 92
    .local v1, "byteToRead":I
    :goto_0
    invoke-virtual {p1, p3, p4, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 93
    return v1

    .end local v1    # "byteToRead":I
    :cond_0
    move v1, p5

    .line 91
    goto :goto_0
.end method

.method private resetStates()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mState:I

    .line 84
    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToSkip:I

    .line 85
    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToCopy:I

    .line 86
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 87
    return-void
.end method

.method private updateIndexIfdOffsets(Lcom/android/camera/mpo/MpoIfdData;I)V
    .locals 7
    .param p1, "indexIfd"    # Lcom/android/camera/mpo/MpoIfdData;
    .param p2, "mpoOffset"    # I

    .prologue
    .line 322
    iget-object v4, p0, Lcom/android/camera/mpo/MpoOutputStream;->mMpoData:Lcom/android/camera/mpo/MpoData;

    invoke-virtual {v4}, Lcom/android/camera/mpo/MpoData;->getPrimaryMpoImage()Lcom/android/camera/mpo/MpoImageData;

    move-result-object v4

    sget v5, Lcom/android/camera/mpo/MpoInterface;->TAG_MP_ENTRY:I

    int-to-short v5, v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/mpo/MpoImageData;->getTag(SI)Lcom/android/camera/mpo/MpoTag;

    move-result-object v3

    .line 324
    .local v3, "mpEntryTag":Lcom/android/camera/mpo/MpoTag;
    invoke-virtual {v3}, Lcom/android/camera/mpo/MpoTag;->getMpEntryValue()Ljava/util/List;

    move-result-object v2

    .line 325
    .local v2, "mpEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/mpo/MpoTag$MpEntry;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 327
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/mpo/MpoTag$MpEntry;

    .line 328
    .local v0, "entry":Lcom/android/camera/mpo/MpoTag$MpEntry;
    invoke-virtual {v0}, Lcom/android/camera/mpo/MpoTag$MpEntry;->getImageOffset()I

    move-result v4

    sub-int/2addr v4, p2

    invoke-virtual {v0, v4}, Lcom/android/camera/mpo/MpoTag$MpEntry;->setImageOffset(I)V

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 331
    .end local v0    # "entry":Lcom/android/camera/mpo/MpoTag$MpEntry;
    :cond_0
    invoke-virtual {v3, v2}, Lcom/android/camera/mpo/MpoTag;->setValue(Ljava/util/List;)Z

    .line 332
    return-void
.end method

.method private writeAllTags(Lcom/android/camera/exif/OrderedDataOutputStream;)V
    .locals 3
    .param p1, "dataOutputStream"    # Lcom/android/camera/exif/OrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    iget-object v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/android/camera/mpo/MpoImageData;->getIndexIfdData()Lcom/android/camera/mpo/MpoIfdData;

    move-result-object v1

    .line 336
    .local v1, "indexIfd":Lcom/android/camera/mpo/MpoIfdData;
    invoke-virtual {v1}, Lcom/android/camera/mpo/MpoIfdData;->getTagCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 337
    iget v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mMpoOffsetStart:I

    invoke-direct {p0, v1, v2}, Lcom/android/camera/mpo/MpoOutputStream;->updateIndexIfdOffsets(Lcom/android/camera/mpo/MpoIfdData;I)V

    .line 338
    invoke-direct {p0, v1, p1}, Lcom/android/camera/mpo/MpoOutputStream;->writeIfd(Lcom/android/camera/mpo/MpoIfdData;Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 341
    :cond_0
    iget-object v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/android/camera/mpo/MpoImageData;->getAttribIfdData()Lcom/android/camera/mpo/MpoIfdData;

    move-result-object v0

    .line 342
    .local v0, "attribIfd":Lcom/android/camera/mpo/MpoIfdData;
    invoke-virtual {v0}, Lcom/android/camera/mpo/MpoIfdData;->getTagCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 343
    invoke-direct {p0, v0, p1}, Lcom/android/camera/mpo/MpoOutputStream;->writeIfd(Lcom/android/camera/mpo/MpoIfdData;Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 344
    :cond_1
    return-void
.end method

.method private writeIfd(Lcom/android/camera/mpo/MpoIfdData;Lcom/android/camera/exif/OrderedDataOutputStream;)V
    .locals 11
    .param p1, "ifd"    # Lcom/android/camera/mpo/MpoIfdData;
    .param p2, "dataOutputStream"    # Lcom/android/camera/exif/OrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v4, 0x0

    .line 348
    invoke-virtual {p1}, Lcom/android/camera/mpo/MpoIfdData;->getAllTags()[Lcom/android/camera/mpo/MpoTag;

    move-result-object v3

    .line 349
    .local v3, "tags":[Lcom/android/camera/mpo/MpoTag;
    array-length v5, v3

    int-to-short v5, v5

    invoke-virtual {p2, v5}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 350
    array-length v6, v3

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v2, v3, v5

    .line 351
    .local v2, "tag":Lcom/android/camera/mpo/MpoTag;
    invoke-virtual {v2}, Lcom/android/camera/mpo/MpoTag;->getTagId()S

    move-result v7

    invoke-virtual {p2, v7}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 352
    invoke-virtual {v2}, Lcom/android/camera/mpo/MpoTag;->getDataType()S

    move-result v7

    invoke-virtual {p2, v7}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 353
    invoke-virtual {v2}, Lcom/android/camera/mpo/MpoTag;->getComponentCount()I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 354
    sget-boolean v7, Lcom/android/camera/mpo/MpoOutputStream;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 355
    const-string v7, "MpoOutputStream"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/camera/mpo/MpoTag;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_0
    invoke-virtual {v2}, Lcom/android/camera/mpo/MpoTag;->getDataSize()I

    move-result v7

    if-le v7, v10, :cond_2

    .line 358
    invoke-virtual {v2}, Lcom/android/camera/mpo/MpoTag;->getOffset()I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 350
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 360
    :cond_2
    invoke-static {v2, p2}, Lcom/android/camera/mpo/MpoOutputStream;->writeTagValue(Lcom/android/camera/mpo/MpoTag;Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 361
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v2}, Lcom/android/camera/mpo/MpoTag;->getDataSize()I

    move-result v7

    rsub-int/lit8 v1, v7, 0x4

    .local v1, "n":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 362
    invoke-virtual {p2, v4}, Lcom/android/camera/exif/OrderedDataOutputStream;->write(I)V

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 366
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "tag":Lcom/android/camera/mpo/MpoTag;
    :cond_3
    invoke-virtual {p1}, Lcom/android/camera/mpo/MpoIfdData;->getOffsetToNextIfd()I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 367
    array-length v5, v3

    :goto_2
    if-ge v4, v5, :cond_5

    aget-object v2, v3, v4

    .line 368
    .restart local v2    # "tag":Lcom/android/camera/mpo/MpoTag;
    invoke-virtual {v2}, Lcom/android/camera/mpo/MpoTag;->getDataSize()I

    move-result v6

    if-le v6, v10, :cond_4

    .line 369
    invoke-static {v2, p2}, Lcom/android/camera/mpo/MpoOutputStream;->writeTagValue(Lcom/android/camera/mpo/MpoTag;Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 367
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 372
    .end local v2    # "tag":Lcom/android/camera/mpo/MpoTag;
    :cond_5
    return-void
.end method

.method private writeMpoData()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    iget-object v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mMpoData:Lcom/android/camera/mpo/MpoData;

    if-nez v2, :cond_0

    .line 318
    :goto_0
    return-void

    .line 289
    :cond_0
    sget-boolean v2, Lcom/android/camera/mpo/MpoOutputStream;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 290
    const-string v2, "MpoOutputStream"

    const-string v3, "Writing mpo data..."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_1
    iget-object v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/android/camera/mpo/MpoImageData;->calculateAllIfdOffsets()I

    move-result v2

    add-int/lit8 v1, v2, 0x6

    .line 293
    .local v1, "exifSize":I
    const v2, 0xffff

    if-le v1, v2, :cond_2

    .line 294
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Exif header is too large (>64Kb)"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 296
    :cond_2
    new-instance v0, Lcom/android/camera/exif/OrderedDataOutputStream;

    iget-object v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {v0, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 297
    .local v0, "dataOutputStream":Lcom/android/camera/exif/OrderedDataOutputStream;
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 298
    const/16 v2, -0x1e

    invoke-virtual {v0, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 299
    int-to-short v2, v1

    invoke-virtual {v0, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 300
    const v2, 0x4d504600    # 2.18390528E8f

    invoke-virtual {v0, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 301
    iget v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mMpoOffsetStart:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 302
    iget v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    invoke-virtual {v0}, Lcom/android/camera/exif/OrderedDataOutputStream;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mMpoOffsetStart:I

    .line 304
    :cond_3
    iget-object v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/android/camera/mpo/MpoImageData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_4

    .line 305
    const/16 v2, 0x4d4d

    invoke-virtual {v0, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 309
    :goto_1
    iget-object v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/android/camera/mpo/MpoImageData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 310
    const/16 v2, 0x2a

    invoke-virtual {v0, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 311
    const/16 v2, 0xe

    if-le v1, v2, :cond_5

    .line 312
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 313
    invoke-direct {p0, v0}, Lcom/android/camera/mpo/MpoOutputStream;->writeAllTags(Lcom/android/camera/exif/OrderedDataOutputStream;)V

    .line 317
    :goto_2
    iget v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    invoke-virtual {v0}, Lcom/android/camera/exif/OrderedDataOutputStream;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    goto :goto_0

    .line 307
    :cond_4
    const/16 v2, 0x4949

    invoke-virtual {v0, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    goto :goto_1

    .line 315
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    goto :goto_2
.end method

.method static writeTagValue(Lcom/android/camera/mpo/MpoTag;Lcom/android/camera/exif/OrderedDataOutputStream;)V
    .locals 6
    .param p0, "tag"    # Lcom/android/camera/mpo/MpoTag;
    .param p1, "dataOutputStream"    # Lcom/android/camera/exif/OrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 376
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoTag;->getDataType()S

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 411
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 378
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoTag;->getStringByte()[B

    move-result-object v0

    .line 379
    .local v0, "buf":[B
    array-length v3, v0

    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoTag;->getComponentCount()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 380
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aput-byte v5, v0, v3

    .line 381
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/OrderedDataOutputStream;->write([B)V

    goto :goto_0

    .line 383
    :cond_1
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/OrderedDataOutputStream;->write([B)V

    .line 384
    invoke-virtual {p1, v5}, Lcom/android/camera/exif/OrderedDataOutputStream;->write(I)V

    goto :goto_0

    .line 389
    .end local v0    # "buf":[B
    :pswitch_2
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoTag;->getComponentCount()I

    move-result v2

    .local v2, "n":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 390
    invoke-virtual {p0, v1}, Lcom/android/camera/mpo/MpoTag;->getValueAt(I)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {p1, v3}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 389
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 395
    .end local v1    # "i":I
    .end local v2    # "n":I
    :pswitch_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoTag;->getComponentCount()I

    move-result v2

    .restart local v2    # "n":I
    :goto_2
    if-ge v1, v2, :cond_0

    .line 396
    invoke-virtual {p0, v1}, Lcom/android/camera/mpo/MpoTag;->getRational(I)Lcom/android/camera/exif/Rational;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeRational(Lcom/android/camera/exif/Rational;)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 395
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 401
    .end local v1    # "i":I
    .end local v2    # "n":I
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoTag;->getComponentCount()I

    move-result v3

    new-array v0, v3, [B

    .line 402
    .restart local v0    # "buf":[B
    invoke-virtual {p0, v0}, Lcom/android/camera/mpo/MpoTag;->getBytes([B)V

    .line 403
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/OrderedDataOutputStream;->write([B)V

    goto :goto_0

    .line 406
    .end local v0    # "buf":[B
    :pswitch_5
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoTag;->getComponentCount()I

    move-result v2

    .restart local v2    # "n":I
    :goto_3
    if-ge v1, v2, :cond_0

    .line 407
    invoke-virtual {p0, v1}, Lcom/android/camera/mpo/MpoTag;->getValueAt(I)J

    move-result-wide v4

    long-to-int v3, v4

    int-to-short v3, v3

    invoke-virtual {p1, v3}, Lcom/android/camera/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/camera/exif/OrderedDataOutputStream;

    .line 406
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 376
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


# virtual methods
.method protected setMpoData(Lcom/android/camera/mpo/MpoData;)V
    .locals 1
    .param p1, "mpoData"    # Lcom/android/camera/mpo/MpoData;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mMpoData:Lcom/android/camera/mpo/MpoData;

    .line 79
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mMpoData:Lcom/android/camera/mpo/MpoData;

    invoke-virtual {v0}, Lcom/android/camera/mpo/MpoData;->updateAllTags()V

    .line 80
    return-void
.end method

.method size()I
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

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
    .line 273
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSingleByteArray:[B

    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 274
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSingleByteArray:[B

    invoke-virtual {p0, v0}, Lcom/android/camera/mpo/MpoOutputStream;->write([B)V

    .line 275
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
    .line 282
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/mpo/MpoOutputStream;->write([BII)V

    .line 283
    return-void
.end method

.method public write([BII)V
    .locals 11
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    :goto_0
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToSkip:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToCopy:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    :cond_0
    if-lez p3, :cond_10

    .line 140
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToSkip:I

    if-lez v0, :cond_1

    .line 141
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToSkip:I

    if-le p3, v0, :cond_4

    iget v7, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToSkip:I

    .line 142
    .local v7, "byteToProcess":I
    :goto_1
    sub-int/2addr p3, v7

    .line 143
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToSkip:I

    sub-int/2addr v0, v7

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToSkip:I

    .line 144
    add-int/2addr p2, v7

    .line 146
    .end local v7    # "byteToProcess":I
    :cond_1
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToCopy:I

    if-lez v0, :cond_2

    .line 147
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToCopy:I

    if-le p3, v0, :cond_5

    iget v7, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToCopy:I

    .line 148
    .restart local v7    # "byteToProcess":I
    :goto_2
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 149
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    .line 150
    sub-int/2addr p3, v7

    .line 151
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToCopy:I

    sub-int/2addr v0, v7

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToCopy:I

    .line 152
    add-int/2addr p2, v7

    .line 154
    .end local v7    # "byteToProcess":I
    :cond_2
    if-nez p3, :cond_6

    .line 265
    :cond_3
    :goto_3
    return-void

    :cond_4
    move v7, p3

    .line 141
    goto :goto_1

    :cond_5
    move v7, p3

    .line 147
    goto :goto_2

    .line 157
    :cond_6
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 159
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x2

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/mpo/MpoOutputStream;->requestByteToBuffer(Ljava/nio/ByteBuffer;I[BII)I

    move-result v6

    .line 160
    .local v6, "byteRead":I
    add-int/2addr p2, v6

    .line 161
    sub-int/2addr p3, v6

    .line 162
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 165
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 166
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const/16 v1, -0x28

    if-eq v0, v1, :cond_7

    .line 167
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid jpeg image, cannot write exif"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_7
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 170
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    .line 171
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mState:I

    .line 172
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 177
    .end local v6    # "byteRead":I
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/mpo/MpoOutputStream;->requestByteToBuffer(Ljava/nio/ByteBuffer;I[BII)I

    move-result v6

    .line 179
    .restart local v6    # "byteRead":I
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 180
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v10

    .line 181
    .local v10, "tag":S
    const/16 v0, -0x27

    if-ne v10, v0, :cond_8

    .line 182
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 183
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    .line 184
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 187
    .end local v10    # "tag":S
    :cond_8
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    .line 190
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 191
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    .line 192
    .local v8, "marker":S
    const/16 v0, -0x1f

    if-eq v8, v0, :cond_9

    const/16 v0, -0x20

    if-ne v8, v0, :cond_a

    .line 193
    :cond_9
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 194
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    .line 195
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToCopy:I

    .line 196
    add-int/2addr p2, v6

    .line 197
    sub-int/2addr p3, v6

    .line 205
    :goto_4
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 199
    :cond_a
    invoke-direct {p0}, Lcom/android/camera/mpo/MpoOutputStream;->writeMpoData()V

    .line 200
    iget-boolean v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSkipCropData:Z

    if-eqz v0, :cond_b

    .line 201
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mState:I

    goto :goto_4

    .line 203
    :cond_b
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mState:I

    goto :goto_4

    .line 208
    .end local v6    # "byteRead":I
    .end local v8    # "marker":S
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/mpo/MpoOutputStream;->requestByteToBuffer(Ljava/nio/ByteBuffer;I[BII)I

    move-result v6

    .line 210
    .restart local v6    # "byteRead":I
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 211
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v10

    .line 212
    .restart local v10    # "tag":S
    const/16 v0, -0x27

    if-ne v10, v0, :cond_c

    .line 213
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 214
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    .line 215
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 218
    .end local v10    # "tag":S
    :cond_c
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    .line 222
    add-int/2addr p2, v6

    .line 223
    sub-int/2addr p3, v6

    .line 224
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 226
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    .line 227
    .restart local v8    # "marker":S
    invoke-static {v8}, Lcom/android/camera/exif/JpegHeader;->isSofMarker(S)Z

    move-result v0

    if-nez v0, :cond_f

    .line 230
    iget-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    sget v2, Lcom/android/camera/mpo/MpoOutputStream;->DC_CROP_INFO_BYTE_SIZE:I

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/mpo/MpoOutputStream;->requestByteToBuffer(Ljava/nio/ByteBuffer;I[BII)I

    move-result v6

    .line 231
    invoke-direct {p0}, Lcom/android/camera/mpo/MpoOutputStream;->isDualCamCropInfo()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 233
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 234
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    .line 236
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    add-int/lit8 v9, v0, -0x2

    iput v9, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToSkip:I

    .line 237
    .local v9, "sizeToClear":I
    :goto_5
    if-lez v9, :cond_d

    .line 238
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 239
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    .line 240
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    .line 242
    :cond_d
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mState:I

    .line 250
    .end local v9    # "sizeToClear":I
    :goto_6
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 257
    :goto_7
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 246
    :cond_e
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 247
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    .line 248
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mByteToCopy:I

    goto :goto_6

    .line 253
    :cond_f
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 254
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    .line 255
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mState:I

    goto :goto_7

    .line 261
    .end local v6    # "byteRead":I
    .end local v8    # "marker":S
    :cond_10
    if-lez p3, :cond_3

    .line 262
    iget-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 263
    iget v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSize:I

    goto/16 :goto_3

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method writeMpoFile()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 115
    iget-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mMpoData:Lcom/android/camera/mpo/MpoData;

    invoke-virtual {v1}, Lcom/android/camera/mpo/MpoData;->getPrimaryMpoImage()Lcom/android/camera/mpo/MpoImageData;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/mpo/MpoImageData;

    .line 117
    iget-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mMpoData:Lcom/android/camera/mpo/MpoData;

    invoke-virtual {v1}, Lcom/android/camera/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 118
    iput-boolean v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSkipCropData:Z

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/mpo/MpoImageData;

    invoke-virtual {v1}, Lcom/android/camera/mpo/MpoImageData;->getJpegData()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/mpo/MpoOutputStream;->write([B)V

    .line 121
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoOutputStream;->flush()V

    .line 123
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mSkipCropData:Z

    .line 125
    iget-object v1, p0, Lcom/android/camera/mpo/MpoOutputStream;->mMpoData:Lcom/android/camera/mpo/MpoData;

    invoke-virtual {v1}, Lcom/android/camera/mpo/MpoData;->getAuxiliaryMpoImages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/mpo/MpoImageData;

    .line 126
    .local v0, "image":Lcom/android/camera/mpo/MpoImageData;
    invoke-direct {p0}, Lcom/android/camera/mpo/MpoOutputStream;->resetStates()V

    .line 127
    iput-object v0, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/mpo/MpoImageData;

    .line 128
    iget-object v2, p0, Lcom/android/camera/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/android/camera/mpo/MpoImageData;->getJpegData()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/camera/mpo/MpoOutputStream;->write([B)V

    .line 129
    invoke-virtual {p0}, Lcom/android/camera/mpo/MpoOutputStream;->flush()V

    goto :goto_0

    .line 131
    .end local v0    # "image":Lcom/android/camera/mpo/MpoImageData;
    :cond_1
    return-void
.end method
