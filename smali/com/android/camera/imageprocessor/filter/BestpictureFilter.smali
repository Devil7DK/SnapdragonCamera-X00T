.class public Lcom/android/camera/imageprocessor/filter/BestpictureFilter;
.super Ljava/lang/Object;
.source "BestpictureFilter.java"

# interfaces
.implements Lcom/android/camera/imageprocessor/filter/ImageFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/imageprocessor/filter/BestpictureFilter$BitmapOutputStream;
    }
.end annotation


# static fields
.field private static final INTENT_ACTION_STILL_IMAGE_CAMERA_SECURE:Ljava/lang/String; = "android.media.action.STILL_IMAGE_CAMERA_SECURE"

.field public static final NUM_REQUIRED_IMAGE:I = 0xa

.field private static TAG:Ljava/lang/String; = null

.field private static final TIME_DELAY:I = 0x32

.field private static mIsSupported:Z


# instance fields
.field final NAMES:[Ljava/lang/String;

.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mBVU:Ljava/nio/ByteBuffer;

.field private mBY:Ljava/nio/ByteBuffer;

.field private mBestpictureResultImage:Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

.field private mClosingLock:Ljava/lang/Object;

.field private mHeight:I

.field private mIsOn:Z

.field private mModule:Lcom/android/camera/CaptureModule;

.field private mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

.field private mOrientation:I

.field private mProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSavedCount:I

.field private mStrideVU:I

.field private mStrideY:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "BestpictureFilter"

    sput-object v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->TAG:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mIsSupported:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CaptureModule;Lcom/android/camera/CameraActivity;Lcom/android/camera/imageprocessor/PostProcessor;)V
    .locals 4
    .param p1, "module"    # Lcom/android/camera/CaptureModule;
    .param p2, "activity"    # Lcom/android/camera/CameraActivity;
    .param p3, "processor"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .prologue
    const/4 v3, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput v3, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mOrientation:I

    .line 73
    const/16 v0, 0xa

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

    const-string v2, "05.jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "06.jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "07.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "08.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "09.jpg"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->NAMES:[Ljava/lang/String;

    .line 79
    iput v3, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mSavedCount:I

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mClosingLock:Ljava/lang/Object;

    .line 84
    iput-boolean v3, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mIsOn:Z

    .line 96
    iput-object p1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mModule:Lcom/android/camera/CaptureModule;

    .line 97
    iput-object p2, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mActivity:Lcom/android/camera/CameraActivity;

    .line 98
    iput-object p3, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    .line 99
    new-instance v0, Lcom/android/camera/PhotoModule$NamedImages;

    invoke-direct {v0}, Lcom/android/camera/PhotoModule$NamedImages;-><init>()V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 100
    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 90
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/imageprocessor/filter/BestpictureFilter;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/filter/BestpictureFilter;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/imageprocessor/filter/BestpictureFilter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/filter/BestpictureFilter;

    .prologue
    .line 62
    iget v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mSavedCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/imageprocessor/filter/BestpictureFilter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/filter/BestpictureFilter;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/imageprocessor/filter/BestpictureFilter;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/filter/BestpictureFilter;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->startBestpictureActivity(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/imageprocessor/filter/BestpictureFilter;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/filter/BestpictureFilter;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/imageprocessor/filter/BestpictureFilter;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/filter/BestpictureFilter;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method private dismissProgressDialog()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v1, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$3;

    invoke-direct {v1, p0}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$3;-><init>(Lcom/android/camera/imageprocessor/filter/BestpictureFilter;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 233
    return-void
.end method

.method private getYUVBytes(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)[B
    .locals 8
    .param p1, "yBuf"    # Ljava/nio/ByteBuffer;
    .param p2, "vuBuf"    # Ljava/nio/ByteBuffer;
    .param p3, "imageNum"    # I

    .prologue
    .line 206
    iget-object v6, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mClosingLock:Ljava/lang/Object;

    monitor-enter v6

    .line 207
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mIsOn:Z

    if-nez v0, :cond_0

    .line 208
    const/4 v0, 0x0

    monitor-exit v6

    .line 219
    :goto_0
    return-object v0

    .line 210
    :cond_0
    new-instance v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mStrideY:I

    iget v2, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mHeight:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mWidth:I

    iget v7, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mHeight:I

    invoke-direct {v2, v3, v4, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v3, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mWidth:I

    iget v4, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mHeight:I

    iget v5, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mStrideY:I

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;-><init>(Ljava/nio/ByteBuffer;Landroid/graphics/Rect;III)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mBestpictureResultImage:Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    .line 213
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mBestpictureResultImage:Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    iget-object v0, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 214
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mBestpictureResultImage:Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    iget-object v0, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mStrideY:I

    iget v2, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mHeight:I

    mul-int/2addr v1, v2

    .line 215
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 214
    invoke-virtual {p2, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 216
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 217
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 219
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mBestpictureResultImage:Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mOrientation:I

    iget-object v2, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    .line 220
    invoke-virtual {v2, p3}, Lcom/android/camera/imageprocessor/PostProcessor;->waitForMetaData(I)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v2

    .line 219
    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->nv21ToJpeg(Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;ILandroid/hardware/camera2/TotalCaptureResult;)[B

    move-result-object v0

    monitor-exit v6

    goto :goto_0

    .line 221
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
    .line 277
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mIsSupported:Z

    return v0
.end method

.method private nv21ToJpeg(Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;ILandroid/hardware/camera2/TotalCaptureResult;)[B
    .locals 10
    .param p1, "resultImage"    # Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    .param p2, "orientation"    # I
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 282
    new-instance v6, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$BitmapOutputStream;

    const/16 v1, 0x400

    invoke-direct {v6, p0, v1}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$BitmapOutputStream;-><init>(Lcom/android/camera/imageprocessor/filter/BestpictureFilter;I)V

    .line 283
    .local v6, "bos":Lcom/android/camera/imageprocessor/filter/BestpictureFilter$BitmapOutputStream;
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

    .line 286
    .local v0, "im":Landroid/graphics/YuvImage;
    iget-object v1, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mProcessor:Lcom/android/camera/imageprocessor/PostProcessor;

    invoke-virtual {v2}, Lcom/android/camera/imageprocessor/PostProcessor;->getJpegQualityValue()I

    move-result v2

    invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 287
    invoke-virtual {v6}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$BitmapOutputStream;->getArray()[B

    move-result-object v7

    .line 288
    .local v7, "bytes":[B
    invoke-static {v7, p2, p3}, Lcom/android/camera/imageprocessor/PostProcessor;->addExifTags([BILandroid/hardware/camera2/TotalCaptureResult;)[B

    move-result-object v7

    .line 289
    return-object v7
.end method

.method private saveBestPicture([BI)V
    .locals 5
    .param p1, "bytes"    # [B
    .param p2, "imageNum"    # I

    .prologue
    .line 303
    if-nez p1, :cond_0

    .line 319
    :goto_0
    return-void

    .line 305
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Bestpicture"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "filesPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 308
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 310
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->NAMES:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 312
    .restart local v0    # "file":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 313
    .local v2, "out":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    array-length v4, p1

    invoke-virtual {v2, p1, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 314
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .end local v2    # "out":Ljava/io/FileOutputStream;
    :goto_1
    iget v3, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mSavedCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mSavedCount:I

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " image is saved"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->Log(Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private showProgressDialog()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v1, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$2;

    invoke-direct {v1, p0}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$2;-><init>(Lcom/android/camera/imageprocessor/filter/BestpictureFilter;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 202
    return-void
.end method

.method private startBestpictureActivity(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 236
    const-string v1, "Start best picture activity"

    invoke-static {v1}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->Log(Ljava/lang/String;)V

    .line 237
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 238
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 239
    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mActivity:Lcom/android/camera/CameraActivity;

    const-class v2, Lcom/android/camera/BestpictureActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 243
    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mActivity:Lcom/android/camera/CameraActivity;

    sget v2, Lcom/android/camera/BestpictureActivity;->BESTPICTURE_ACTIVITY_CODE:I

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 244
    return-void
.end method


# virtual methods
.method public addImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILjava/lang/Object;)V
    .locals 18
    .param p1, "bY"    # Ljava/nio/ByteBuffer;
    .param p2, "bVU"    # Ljava/nio/ByteBuffer;
    .param p3, "imageNum"    # I
    .param p4, "param"    # Ljava/lang/Object;

    .prologue
    .line 143
    const-string v3, "addImage"

    invoke-static {v3}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->Log(Ljava/lang/String;)V

    .line 144
    if-nez p3, :cond_0

    .line 145
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->showProgressDialog()V

    .line 146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v3}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v8}, Lcom/android/camera/CaptureModule;->getDisplayOrientation()I

    move-result v8

    invoke-static {v3, v8}, Lcom/android/camera/util/CameraUtil;->getJpegRotation(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mOrientation:I

    .line 147
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mSavedCount:I

    .line 148
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mBY:Ljava/nio/ByteBuffer;

    .line 149
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mBVU:Ljava/nio/ByteBuffer;

    .line 151
    invoke-direct/range {p0 .. p3}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->getYUVBytes(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)[B

    move-result-object v4

    .line 152
    .local v4, "bytes":[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 153
    .local v16, "captureStartTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(J)V

    .line 154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    invoke-virtual {v3}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v2

    .line 155
    .local v2, "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    if-nez v2, :cond_1

    const/4 v5, 0x0

    .line 156
    .local v5, "title":Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_2

    const-wide/16 v6, -0x1

    .line 157
    .local v6, "date":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v3

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mHeight:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mOrientation:I

    const/4 v12, 0x0

    new-instance v13, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter$1;-><init>(Lcom/android/camera/imageprocessor/filter/BestpictureFilter;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mActivity:Lcom/android/camera/CameraActivity;

    .line 184
    invoke-virtual {v14}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "jpeg"

    .line 157
    invoke-virtual/range {v3 .. v15}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 186
    .end local v2    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .end local v4    # "bytes":[B
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "date":J
    .end local v16    # "captureStartTime":J
    :cond_0
    invoke-direct/range {p0 .. p3}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->getYUVBytes(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)[B

    move-result-object v4

    .line 187
    .restart local v4    # "bytes":[B
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v4, v1}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->saveBestPicture([BI)V

    .line 188
    return-void

    .line 155
    .restart local v2    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .restart local v16    # "captureStartTime":J
    :cond_1
    iget-object v5, v2, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    goto :goto_0

    .line 156
    .restart local v5    # "title":Ljava/lang/String;
    :cond_2
    iget-wide v6, v2, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    goto :goto_1
.end method

.method public deinit()V
    .locals 2

    .prologue
    .line 134
    const-string v0, "deinit"

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->Log(Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->dismissProgressDialog()V

    .line 136
    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mClosingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mIsOn:Z

    .line 138
    monitor-exit v1

    .line 139
    return-void

    .line 138
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
    .line 118
    const/16 v0, 0xa

    return v0
.end method

.method public getStringName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-string v0, "BestpictureFilter"

    return-object v0
.end method

.method public init(IIII)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "strideY"    # I
    .param p4, "strideVU"    # I

    .prologue
    .line 123
    const-string v0, "init"

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->Log(Ljava/lang/String;)V

    .line 124
    div-int/lit8 v0, p1, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mWidth:I

    .line 125
    div-int/lit8 v0, p2, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mHeight:I

    .line 126
    div-int/lit8 v0, p3, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mStrideY:I

    .line 127
    div-int/lit8 v0, p4, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mStrideVU:I

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mIsOn:Z

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " strideY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mStrideY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " strideVU: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mStrideVU:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->Log(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public isFrameListener()Z
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public isManualMode()Z
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x1

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->getCurrentIntentMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    const/4 v0, 0x0

    .line 251
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;->mIsSupported:Z

    goto :goto_0
.end method

.method public manualCapture(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)V
    .locals 4
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
    .line 267
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 268
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {p2, v1, p3, p4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 270
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    :catch_0
    move-exception v1

    goto :goto_1

    .line 274
    :cond_0
    return-void
.end method

.method public processImage()Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method public setRequiredImages(Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/util/List;
    .locals 3
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
    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 106
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    return-object v1
.end method
