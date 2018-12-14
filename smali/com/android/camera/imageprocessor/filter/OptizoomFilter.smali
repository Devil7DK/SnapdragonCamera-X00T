.class public Lcom/android/camera/imageprocessor/filter/OptizoomFilter;
.super Ljava/lang/Object;
.source "OptizoomFilter.java"

# interfaces
.implements Lcom/android/camera/imageprocessor/filter/ImageFilter;


# static fields
.field public static final NUM_REQUIRED_IMAGE:I = 0x8

.field private static TAG:Ljava/lang/String;

.field private static mIsSupported:Z


# instance fields
.field private mHeight:I

.field private mModule:Lcom/android/camera/CaptureModule;

.field private mOutBuf:Ljava/nio/ByteBuffer;

.field private mStrideVU:I

.field private mStrideY:I

.field private mWidth:I

.field private temp:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 49
    const-string v1, "OptizoomFilter"

    sput-object v1, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->TAG:Ljava/lang/String;

    .line 51
    sput-boolean v2, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mIsSupported:Z

    .line 158
    :try_start_0
    const-string v1, "jni_optizoom"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 159
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mIsSupported:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 160
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 161
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mIsSupported:Z

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p1, "module"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mModule:Lcom/android/camera/CaptureModule;

    .line 63
    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 56
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    return-void
.end method

.method public static isSupportedStatic()Z
    .locals 1

    .prologue
    .line 147
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mIsSupported:Z

    return v0
.end method

.method private native nativeAddImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)I
.end method

.method private native nativeDeinit()I
.end method

.method private native nativeInit(IIIIIIIII)I
.end method

.method private native nativeProcessImage([BF[I)I
.end method


# virtual methods
.method public addImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILjava/lang/Object;)V
    .locals 6
    .param p1, "bY"    # Ljava/nio/ByteBuffer;
    .param p2, "bVU"    # Ljava/nio/ByteBuffer;
    .param p3, "imageNum"    # I
    .param p4, "param"    # Ljava/lang/Object;

    .prologue
    .line 106
    const-string v0, "addImage"

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->Log(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 108
    .local v3, "yActualSize":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .local v4, "vuActualSize":I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .line 109
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->nativeAddImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)I

    .line 110
    return-void
.end method

.method public deinit()V
    .locals 1

    .prologue
    .line 99
    const-string v0, "deinit"

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->Log(Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mOutBuf:Ljava/nio/ByteBuffer;

    .line 101
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->nativeDeinit()I

    .line 102
    return-void
.end method

.method public getNumRequiredImage()I
    .locals 1

    .prologue
    .line 81
    const/16 v0, 0x8

    return v0
.end method

.method public getStringName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "OptizoomFilter"

    return-object v0
.end method

.method public init(IIII)V
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "strideY"    # I
    .param p4, "strideVU"    # I

    .prologue
    const/4 v5, 0x0

    .line 86
    const-string v0, "init"

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->Log(Ljava/lang/String;)V

    .line 87
    div-int/lit8 v0, p1, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mWidth:I

    .line 88
    div-int/lit8 v0, p2, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mHeight:I

    .line 89
    div-int/lit8 v0, p3, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mStrideY:I

    .line 90
    div-int/lit8 v0, p4, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mStrideVU:I

    .line 91
    iget v0, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mStrideY:I

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x6

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mOutBuf:Ljava/nio/ByteBuffer;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " strideY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mStrideY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " strideVU: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mStrideVU:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->Log(Ljava/lang/String;)V

    .line 93
    iget v1, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mWidth:I

    iget v2, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mHeight:I

    iget v3, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mStrideY:I

    iget v4, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mStrideVU:I

    iget v7, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mWidth:I

    iget v8, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mHeight:I

    const/16 v9, 0x8

    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->nativeInit(IIIIIIIII)I

    .line 95
    return-void
.end method

.method public isFrameListener()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public isManualMode()Z
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 128
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mIsSupported:Z

    return v0
.end method

.method public manualCapture(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "captureSession"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 144
    return-void
.end method

.method public processImage()Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processImage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->getZoomValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->Log(Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x4

    new-array v6, v0, [I

    .line 116
    .local v6, "roi":[I
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mOutBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->getZoomValue()F

    move-result v1

    invoke-direct {p0, v0, v1, v6}, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->nativeProcessImage([BF[I)I

    move-result v7

    .line 117
    .local v7, "status":I
    const-string v0, "processImage done"

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->Log(Ljava/lang/String;)V

    .line 118
    if-gez v7, :cond_0

    .line 119
    sget-object v0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->TAG:Ljava/lang/String;

    const-string v1, "Fail to process the optizoom. It only processes when zoomValue >= 1.5f"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mOutBuf:Ljava/nio/ByteBuffer;

    new-instance v2, Landroid/graphics/Rect;

    aget v3, v6, v5

    aget v4, v6, v9

    aget v5, v6, v5

    aget v8, v6, v8

    add-int/2addr v5, v8

    aget v8, v6, v9

    aget v9, v6, v10

    add-int/2addr v8, v9

    invoke-direct {v2, v3, v4, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v3, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mWidth:I

    iget v4, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mHeight:I

    iget v5, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mStrideY:I

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;-><init>(Ljava/nio/ByteBuffer;Landroid/graphics/Rect;III)V

    .line 122
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mOutBuf:Ljava/nio/ByteBuffer;

    new-instance v2, Landroid/graphics/Rect;

    aget v3, v6, v5

    aget v4, v6, v9

    aget v5, v6, v5

    aget v8, v6, v8

    add-int/2addr v5, v8

    aget v8, v6, v9

    aget v9, v6, v10

    add-int/2addr v8, v9

    invoke-direct {v2, v3, v4, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v3, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mWidth:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mHeight:I

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;->mStrideY:I

    mul-int/lit8 v5, v5, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;-><init>(Ljava/nio/ByteBuffer;Landroid/graphics/Rect;III)V

    goto :goto_0
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
    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    .line 69
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    return-object v1
.end method
