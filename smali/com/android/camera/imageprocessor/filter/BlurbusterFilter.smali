.class public Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;
.super Ljava/lang/Object;
.source "BlurbusterFilter.java"

# interfaces
.implements Lcom/android/camera/imageprocessor/filter/ImageFilter;


# static fields
.field public static final NUM_REQUIRED_IMAGE:I = 0x5

.field private static TAG:Ljava/lang/String;

.field private static mIsSupported:Z


# instance fields
.field private mHeight:I

.field private mModule:Lcom/android/camera/CaptureModule;

.field private mOutBuf:Ljava/nio/ByteBuffer;

.field private mStrideVU:I

.field private mStrideY:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 49
    const-string v1, "BlurbusterFilter"

    sput-object v1, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->TAG:Ljava/lang/String;

    .line 50
    sput-boolean v3, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mIsSupported:Z

    .line 157
    :try_start_0
    const-string v1, "jni_blurbuster"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 158
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mIsSupported:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 159
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 160
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    sput-boolean v3, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mIsSupported:Z

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p1, "module"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mModule:Lcom/android/camera/CaptureModule;

    .line 62
    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 55
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    return-void
.end method

.method public static isSupportedStatic()Z
    .locals 1

    .prologue
    .line 147
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mIsSupported:Z

    return v0
.end method

.method private native nativeAddImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)I
.end method

.method private native nativeDeinit()I
.end method

.method private native nativeInit(IIIII)I
.end method

.method private native nativeProcessImage([B[I)I
.end method


# virtual methods
.method public addImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILjava/lang/Object;)V
    .locals 7
    .param p1, "bY"    # Ljava/nio/ByteBuffer;
    .param p2, "bVU"    # Ljava/nio/ByteBuffer;
    .param p3, "imageNum"    # I
    .param p4, "param"    # Ljava/lang/Object;

    .prologue
    .line 104
    const-string v0, "addImage"

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->Log(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 106
    .local v3, "yActualSize":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .local v4, "vuActualSize":I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .line 107
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->nativeAddImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)I

    move-result v6

    .line 108
    .local v6, "status":I
    if-eqz v6, :cond_0

    .line 109
    sget-object v0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->TAG:Ljava/lang/String;

    const-string v1, "Fail to add image"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    return-void
.end method

.method public deinit()V
    .locals 1

    .prologue
    .line 97
    const-string v0, "deinit"

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->Log(Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mOutBuf:Ljava/nio/ByteBuffer;

    .line 99
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->nativeDeinit()I

    .line 100
    return-void
.end method

.method public getNumRequiredImage()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x5

    return v0
.end method

.method public getStringName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public init(IIII)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "strideY"    # I
    .param p4, "strideVU"    # I

    .prologue
    .line 85
    const-string v0, "init"

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->Log(Ljava/lang/String;)V

    .line 86
    div-int/lit8 v0, p1, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mWidth:I

    .line 87
    div-int/lit8 v0, p2, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mHeight:I

    .line 88
    div-int/lit8 v0, p3, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mStrideY:I

    .line 89
    div-int/lit8 v0, p4, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mStrideVU:I

    .line 90
    iget v0, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mStrideY:I

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mOutBuf:Ljava/nio/ByteBuffer;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " strideY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mStrideY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " strideVU: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mStrideVU:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->Log(Ljava/lang/String;)V

    .line 92
    iget v1, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mWidth:I

    iget v2, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mHeight:I

    iget v3, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mStrideY:I

    iget v4, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mStrideVU:I

    const/4 v5, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->nativeInit(IIIII)I

    .line 93
    return-void
.end method

.method public isFrameListener()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public isManualMode()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 127
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mIsSupported:Z

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
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 115
    const-string v0, "processImage "

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->Log(Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x4

    new-array v6, v0, [I

    .line 117
    .local v6, "roi":[I
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mOutBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->nativeProcessImage([B[I)I

    move-result v7

    .line 118
    .local v7, "status":I
    const-string v0, "processImage done"

    invoke-static {v0}, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->Log(Ljava/lang/String;)V

    .line 119
    if-gez v7, :cond_0

    .line 120
    sget-object v0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->TAG:Ljava/lang/String;

    const-string v1, "Fail to process the image."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    new-instance v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mOutBuf:Ljava/nio/ByteBuffer;

    new-instance v2, Landroid/graphics/Rect;

    aget v3, v6, v5

    aget v4, v6, v9

    aget v5, v6, v5

    const/4 v8, 0x2

    aget v8, v6, v8

    add-int/2addr v5, v8

    aget v8, v6, v9

    const/4 v9, 0x3

    aget v9, v6, v9

    add-int/2addr v8, v9

    invoke-direct {v2, v3, v4, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v3, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mWidth:I

    iget v4, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mHeight:I

    iget v5, p0, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;->mStrideY:I

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;-><init>(Ljava/nio/ByteBuffer;Landroid/graphics/Rect;III)V

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
    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    return-object v1
.end method
