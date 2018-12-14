.class public Lcom/android/camera/imageprocessor/filter/UbifocusFilter;
.super Ljava/lang/Object;
.source "UbifocusFilter.java"

# interfaces
.implements Lcom/android/camera/imageprocessor/filter/ImageFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/imageprocessor/filter/UbifocusFilter$BitmapOutputStream;
    }
.end annotation


# static fields
.field private static final FOCUS_ADJUST_TIME_OUT:I = 0x190

.field private static final META_BYTES_SIZE:I = 0x19

.field public static final NUM_REQUIRED_IMAGE:I = 0x5

.field private static TAG:Ljava/lang/String;

.field private static mIsSupported:Z


# instance fields
.field final NAMES:[Ljava/lang/String;

.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mClosingLock:Ljava/lang/Object;

.field private mHeight:I

.field private mMinFocusDistance:F

.field private mModule:Lcom/android/camera/CaptureModule;

.field private mOrientation:I

.field private mOutBuf:Ljava/nio/ByteBuffer;

.field private mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

.field private mSavedCount:I

.field private mStrideVU:I

.field private mStrideY:I

.field private mUbifocusResultImage:Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

.field private mWidth:I

.field private temp:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 66
    const-string v1, "UbifocusFilter"

    sput-object v1, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->TAG:Ljava/lang/String;

    .line 70
    sput-boolean v2, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mIsSupported:Z

    .line 319
    :try_start_0
    const-string v1, "jni_ubifocus"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 320
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mIsSupported:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 321
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 322
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mIsSupported:Z

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/camera/CaptureModule;Lcom/android/camera/CameraActivity;Lcom/android/camera/imageprocessor/PostProcessor;)V
    .locals 4
    .param p1, "module"    # Lcom/android/camera/CaptureModule;
    .param p2, "activity"    # Lcom/android/camera/CameraActivity;
    .param p3, "processor"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .prologue
    const/4 v3, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput v3, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mOrientation:I

    .line 75
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mMinFocusDistance:F

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mClosingLock:Ljava/lang/Object;

    .line 79
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "00.jpg"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "01.jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "02.jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "03.jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "04.jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "DepthMapImage.y"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "AllFocusImage.jpg"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->NAMES:[Ljava/lang/String;

    .line 82
    iput v3, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mSavedCount:I

    .line 91
    iput-object p1, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mModule:Lcom/android/camera/CaptureModule;

    .line 92
    iput-object p2, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mActivity:Lcom/android/camera/CameraActivity;

    .line 93
    iput-object p3, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    .line 94
    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 85
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/imageprocessor/filter/UbifocusFilter;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/filter/UbifocusFilter;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mClosingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/imageprocessor/filter/UbifocusFilter;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/filter/UbifocusFilter;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mOutBuf:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/imageprocessor/filter/UbifocusFilter;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/filter/UbifocusFilter;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;
    .param p2, "x2"    # Ljava/nio/ByteBuffer;
    .param p3, "x3"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->getYUVBytes(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/imageprocessor/filter/UbifocusFilter;I[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/filter/UbifocusFilter;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->saveToPrivateFile(I[B)V

    return-void
.end method

.method static synthetic access$408(Lcom/android/camera/imageprocessor/filter/UbifocusFilter;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/filter/UbifocusFilter;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mSavedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mSavedCount:I

    return v0
.end method

.method private getYUVBytes(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)[B
    .locals 8
    .param p1, "yBuf"    # Ljava/nio/ByteBuffer;
    .param p2, "vuBuf"    # Ljava/nio/ByteBuffer;
    .param p3, "imageNum"    # I

    .prologue
    .line 281
    iget-object v6, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mClosingLock:Ljava/lang/Object;

    monitor-enter v6

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mOutBuf:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 283
    const/4 v0, 0x0

    monitor-exit v6

    .line 294
    :goto_0
    return-object v0

    .line 285
    :cond_0
    new-instance v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mStrideY:I

    iget v2, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mHeight:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mWidth:I

    iget v7, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mHeight:I

    invoke-direct {v2, v3, v4, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v3, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mWidth:I

    iget v4, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mHeight:I

    iget v5, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mStrideY:I

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;-><init>(Ljava/nio/ByteBuffer;Landroid/graphics/Rect;III)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mUbifocusResultImage:Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    .line 288
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mUbifocusResultImage:Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    iget-object v0, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 289
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mUbifocusResultImage:Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    iget-object v0, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mStrideY:I

    iget v2, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mHeight:I

    mul-int/2addr v1, v2

    .line 290
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 289
    invoke-virtual {p2, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 291
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 292
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 294
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mUbifocusResultImage:Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mOrientation:I

    iget-object v2, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    .line 295
    invoke-virtual {v2, p3}, Lcom/android/camera/imageprocessor/PostProcessor;->waitForMetaData(I)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v2

    .line 294
    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->nv21ToJpeg(Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;ILandroid/hardware/camera2/TotalCaptureResult;)[B

    move-result-object v0

    monitor-exit v6

    goto :goto_0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isSupportedStatic()Z
    .locals 1

    .prologue
    .line 234
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mIsSupported:Z

    return v0
.end method

.method private native nativeAddImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)I
.end method

.method private native nativeDeinit()I
.end method

.method private native nativeGetDepthMap([BII)I
.end method

.method private native nativeInit(IIIII)I
.end method

.method private native nativeProcessImage([B[I[I)I
.end method

.method private nv21ToJpeg(Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;ILandroid/hardware/camera2/TotalCaptureResult;)[B
    .locals 10
    .param p1, "resultImage"    # Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    .param p2, "orientation"    # I
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 301
    new-instance v6, Lcom/android/camera/imageprocessor/filter/UbifocusFilter$BitmapOutputStream;

    const/16 v1, 0x400

    invoke-direct {v6, p0, v1}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter$BitmapOutputStream;-><init>(Lcom/android/camera/imageprocessor/filter/UbifocusFilter;I)V

    .line 302
    .local v6, "bos":Lcom/android/camera/imageprocessor/filter/UbifocusFilter$BitmapOutputStream;
    new-instance v0, Landroid/graphics/YuvImage;

    iget-object v1, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/16 v2, 0x11

    iget v3, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->width:I

    iget v4, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->height:I

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v8, 0x0

    iget v9, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->stride:I

    aput v9, v5, v8

    const/4 v8, 0x1

    iget v9, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->stride:I

    aput v9, v5, v8

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 305
    .local v0, "im":Landroid/graphics/YuvImage;
    iget-object v1, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->getJpegQualityValue()I

    move-result v2

    invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 306
    invoke-virtual {v6}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter$BitmapOutputStream;->getArray()[B

    move-result-object v7

    .line 307
    .local v7, "bytes":[B
    invoke-static {v7, p2, p3}, Lcom/android/camera/imageprocessor/PostProcessor;->addExifTags([BILandroid/hardware/camera2/TotalCaptureResult;)[B

    move-result-object v7

    .line 308
    return-object v7
.end method

.method private nv21ToJpeg(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Landroid/graphics/Rect;II)[B
    .locals 12
    .param p1, "bY"    # Ljava/nio/ByteBuffer;
    .param p2, "bVU"    # Ljava/nio/ByteBuffer;
    .param p3, "roi"    # Landroid/graphics/Rect;
    .param p4, "orientation"    # I
    .param p5, "imageIndex"    # I

    .prologue
    .line 238
    iget v2, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mStrideY:I

    iget v3, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mHeight:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 239
    .local v8, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v8, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 240
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 241
    if-eqz p2, :cond_0

    .line 242
    invoke-virtual {v8, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 243
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 245
    :cond_0
    new-instance v7, Lcom/android/camera/imageprocessor/filter/UbifocusFilter$BitmapOutputStream;

    const/16 v2, 0x400

    invoke-direct {v7, p0, v2}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter$BitmapOutputStream;-><init>(Lcom/android/camera/imageprocessor/filter/UbifocusFilter;I)V

    .line 246
    .local v7, "bos":Lcom/android/camera/imageprocessor/filter/UbifocusFilter$BitmapOutputStream;
    new-instance v1, Landroid/graphics/YuvImage;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/16 v3, 0x11

    iget v4, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mWidth:I

    iget v5, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mHeight:I

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mStrideY:I

    aput v11, v6, v10

    const/4 v10, 0x1

    iget v11, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mStrideVU:I

    aput v11, v6, v10

    invoke-direct/range {v1 .. v6}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 248
    .local v1, "im":Landroid/graphics/YuvImage;
    iget-object v2, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->getJpegQualityValue()I

    move-result v2

    invoke-virtual {v1, p3, v2, v7}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 249
    invoke-virtual {v7}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter$BitmapOutputStream;->getArray()[B

    move-result-object v9

    .line 250
    .local v9, "bytes":[B
    iget-object v2, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mPostProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/android/camera/imageprocessor/PostProcessor;->waitForMetaData(I)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v2

    move/from16 v0, p4

    invoke-static {v9, v0, v2}, Lcom/android/camera/imageprocessor/PostProcessor;->addExifTags([BILandroid/hardware/camera2/TotalCaptureResult;)[B

    move-result-object v9

    .line 251
    return-object v9
.end method

.method private saveToPrivateFile(I[B)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "bytes"    # [B

    .prologue
    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Ubifocus"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "filesPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 268
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 270
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->NAMES:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 272
    .restart local v0    # "file":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 273
    .local v2, "out":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    array-length v4, p2

    invoke-virtual {v2, p2, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 274
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .end local v2    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public addImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILjava/lang/Object;)V
    .locals 6
    .param p1, "bY"    # Ljava/nio/ByteBuffer;
    .param p2, "bVU"    # Ljava/nio/ByteBuffer;
    .param p3, "imageNum"    # I
    .param p4, "param"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 134
    const-string v0, "addImage"

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->Log(Ljava/lang/String;)V

    .line 135
    if-nez p3, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0, v2}, Lcom/android/camera/CaptureModule;->setRefocusLastTaken(Z)V

    .line 137
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->getDisplayOrientation()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getJpegRotation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mOrientation:I

    .line 138
    iput v2, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mSavedCount:I

    .line 140
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 141
    .local v3, "yActualSize":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .local v4, "vuActualSize":I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .line 142
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->nativeAddImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)I

    move-result v0

    if-gez v0, :cond_1

    .line 143
    sget-object v0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->TAG:Ljava/lang/String;

    const-string v1, "Fail to add image"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_1
    new-instance v0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter$1;-><init>(Lcom/android/camera/imageprocessor/filter/UbifocusFilter;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    .line 156
    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter$1;->start()V

    .line 157
    return-void
.end method

.method public deinit()V
    .locals 2

    .prologue
    .line 125
    const-string v0, "deinit"

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->Log(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mClosingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 127
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mOutBuf:Ljava/nio/ByteBuffer;

    .line 128
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->nativeDeinit()I

    .line 129
    monitor-exit v1

    .line 130
    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNumRequiredImage()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x5

    return v0
.end method

.method public getStringName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string v0, "UbifocusFilter"

    return-object v0
.end method

.method public init(IIII)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "strideY"    # I
    .param p4, "strideVU"    # I

    .prologue
    .line 113
    const-string v0, "init"

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->Log(Ljava/lang/String;)V

    .line 114
    div-int/lit8 v0, p1, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mWidth:I

    .line 115
    div-int/lit8 v0, p2, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mHeight:I

    .line 116
    div-int/lit8 v0, p3, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mStrideY:I

    .line 117
    div-int/lit8 v0, p4, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mStrideVU:I

    .line 118
    iget v0, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mStrideY:I

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mOutBuf:Ljava/nio/ByteBuffer;

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " strideY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mStrideY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " strideVU: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mStrideVU:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->Log(Ljava/lang/String;)V

    .line 120
    iget v1, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mWidth:I

    iget v2, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mHeight:I

    iget v3, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mStrideY:I

    iget v4, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mStrideVU:I

    const/4 v5, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->nativeInit(IIIII)I

    .line 121
    return-void
.end method

.method public isFrameListener()Z
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public isManualMode()Z
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 187
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mIsSupported:Z

    return v0
.end method

.method public manualCapture(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)V
    .locals 9
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "captureSession"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 203
    iget v5, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mMinFocusDistance:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 204
    iget-object v5, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v5}, Lcom/android/camera/CaptureModule;->getMainCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iput v5, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mMinFocusDistance:F

    .line 206
    :cond_0
    iget v5, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mMinFocusDistance:F

    const/high16 v6, 0x40a00000    # 5.0f

    div-float v3, v5, v6

    .line 207
    .local v3, "step":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v5, 0x5

    if-ge v2, v5, :cond_3

    .line 208
    int-to-float v5, v2

    mul-float v4, v5, v3

    .line 209
    .local v4, "value":F
    iget-object v5, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mModule:Lcom/android/camera/CaptureModule;

    iget-object v6, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v6}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v6

    invoke-virtual {v5, v6, v8}, Lcom/android/camera/CaptureModule;->setAFModeToPreview(II)V

    .line 210
    iget-object v5, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mModule:Lcom/android/camera/CaptureModule;

    iget-object v6, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v6}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/android/camera/CaptureModule;->setFocusDistanceToPreview(IF)V

    .line 211
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Request:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->Log(Ljava/lang/String;)V

    .line 214
    const/16 v0, 0x190

    .line 216
    .local v0, "count":I
    :cond_1
    const-wide/16 v6, 0x5

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    add-int/lit8 v0, v0, -0x5

    .line 218
    if-gtz v0, :cond_2

    .line 227
    :goto_1
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 228
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 229
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    invoke-virtual {p2, v5, p3, p4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v5}, Lcom/android/camera/CaptureModule;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v5

    sget-object v6, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 222
    .local v1, "focusDistance":F
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Taken focus value :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->Log(Ljava/lang/String;)V

    .line 223
    sub-float v5, v1, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-gez v5, :cond_1

    goto :goto_1

    .line 231
    .end local v0    # "count":I
    .end local v1    # "focusDistance":F
    .end local v4    # "value":F
    :cond_3
    return-void

    .line 225
    .restart local v0    # "count":I
    .restart local v4    # "value":F
    :catch_0
    move-exception v5

    goto :goto_1

    .line 224
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public processImage()Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    .locals 14

    .prologue
    .line 161
    const-string v1, "processImage "

    invoke-static {v1}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->Log(Ljava/lang/String;)V

    .line 162
    const/4 v1, 0x4

    new-array v8, v1, [I

    .line 163
    .local v8, "roi":[I
    const/4 v1, 0x2

    new-array v7, v1, [I

    .line 164
    .local v7, "depthMapSize":[I
    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mOutBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {p0, v1, v8, v7}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->nativeProcessImage([B[I[I)I

    move-result v9

    .line 165
    .local v9, "status":I
    if-gez v9, :cond_0

    .line 166
    sget-object v1, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to process the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->getStringName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_0
    iget v1, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mSavedCount:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 176
    const-wide/16 v2, 0x1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v1

    goto :goto_0

    .line 168
    :cond_0
    const/4 v1, 0x0

    aget v1, v7, v1

    const/4 v2, 0x1

    aget v2, v7, v2

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x19

    new-array v6, v1, [B

    .line 169
    .local v6, "depthMapBuf":[B
    const/4 v1, 0x0

    aget v1, v7, v1

    const/4 v2, 0x1

    aget v2, v7, v2

    invoke-direct {p0, v6, v1, v2}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->nativeGetDepthMap([BII)I

    .line 170
    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->NAMES:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    invoke-direct {p0, v1, v6}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->saveToPrivateFile(I[B)V

    .line 171
    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->NAMES:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v10, v1, -0x1

    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mOutBuf:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    aget v4, v8, v4

    const/4 v5, 0x1

    aget v5, v8, v5

    const/4 v11, 0x0

    aget v11, v8, v11

    const/4 v12, 0x2

    aget v12, v8, v12

    add-int/2addr v11, v12

    const/4 v12, 0x1

    aget v12, v8, v12

    const/4 v13, 0x3

    aget v13, v8, v13

    add-int/2addr v12, v13

    invoke-direct {v3, v4, v5, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v4, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mOrientation:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->nv21ToJpeg(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Landroid/graphics/Rect;II)[B

    move-result-object v1

    invoke-direct {p0, v10, v1}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->saveToPrivateFile(I[B)V

    .line 172
    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mModule:Lcom/android/camera/CaptureModule;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/CaptureModule;->setRefocusLastTaken(Z)V

    goto :goto_0

    .line 180
    .end local v6    # "depthMapBuf":[B
    :cond_1
    new-instance v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mOutBuf:Ljava/nio/ByteBuffer;

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget v3, v8, v3

    const/4 v4, 0x1

    aget v4, v8, v4

    const/4 v5, 0x0

    aget v5, v8, v5

    const/4 v10, 0x2

    aget v10, v8, v10

    add-int/2addr v5, v10

    const/4 v10, 0x1

    aget v10, v8, v10

    const/4 v11, 0x3

    aget v11, v8, v11

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v4, v5, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v3, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mWidth:I

    iget v4, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mHeight:I

    iget v5, p0, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->mStrideY:I

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;-><init>(Ljava/nio/ByteBuffer;Landroid/graphics/Rect;III)V

    .line 181
    .local v0, "result":Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    const-string v1, "processImage done"

    invoke-static {v1}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;->Log(Ljava/lang/String;)V

    .line 182
    return-object v0
.end method

.method public setRequiredImages(Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/util/List;
    .locals 1
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method
