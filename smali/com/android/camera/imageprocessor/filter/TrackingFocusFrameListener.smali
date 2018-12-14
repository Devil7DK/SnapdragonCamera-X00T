.class public Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;
.super Ljava/lang/Object;
.source "TrackingFocusFrameListener.java"

# interfaces
.implements Lcom/android/camera/imageprocessor/filter/ImageFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;,
        Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Precision;,
        Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;
    }
.end annotation


# static fields
.field public static final MAX_NUM_TRACKED_OBJECTS:I = 0x3

.field public static final PENDING_REGISTRATION:J = -0x1L

.field private static TAG:Ljava/lang/String;

.field private static mIsSupported:Z


# instance fields
.field private imageRect:Landroid/graphics/Rect;

.field mHeight:I

.field private mInputCords:[I

.field private mIsFirstTime:Z

.field private mIsInitialzed:Z

.field private mModule:Lcom/android/camera/CaptureModule;

.field mStrideVU:I

.field mStrideY:I

.field private mTrackedId:J

.field private mTrackingFocusRender:Lcom/android/camera/ui/TrackingFocusRenderer;

.field mWidth:I

.field yvuBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    const-string v1, "TrackingFocusFrameListener"

    sput-object v1, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->TAG:Ljava/lang/String;

    .line 58
    sput-boolean v3, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mIsSupported:Z

    .line 291
    :try_start_0
    const-string v1, "jni_trackingfocus"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 292
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mIsSupported:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 293
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 294
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    sput-boolean v3, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mIsSupported:Z

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/camera/CaptureModule;)V
    .locals 3
    .param p1, "module"    # Lcom/android/camera/CaptureModule;

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mTrackedId:J

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mIsInitialzed:Z

    .line 65
    iput-object v2, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->yvuBytes:[B

    .line 66
    iput-object v2, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mInputCords:[I

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mIsFirstTime:Z

    .line 82
    iput-object p1, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mModule:Lcom/android/camera/CaptureModule;

    .line 83
    return-void
.end method

.method private getMinFrameSize()I
    .locals 2

    .prologue
    .line 247
    iget v0, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mStrideY:I

    iget-object v1, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->imageRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static isSupportedStatic()Z
    .locals 1

    .prologue
    .line 261
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mIsSupported:Z

    return v0
.end method

.method private native nGetMaxRoiDimension()I
.end method

.method private native nGetMinRoiDimension()I
.end method

.method private native nInit(IIIII)I
.end method

.method private native nRegisterObjectByPoint([BIIZ)J
.end method

.method private native nRegisterObjectByRect([BIIII)J
.end method

.method private native nRelease()V
.end method

.method private native nTrackObjects([B)[I
.end method

.method private native nUnregisterObject(J)V
.end method


# virtual methods
.method public addImage(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILjava/lang/Object;)V
    .locals 10
    .param p1, "bY"    # Ljava/nio/ByteBuffer;
    .param p2, "bVU"    # Ljava/nio/ByteBuffer;
    .param p3, "imageNum"    # I
    .param p4, "isPreview"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v8, -0x1

    .line 127
    iget-object v2, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->yvuBytes:[B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {p1, v2, v4, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 128
    iget-object v2, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->yvuBytes:[B

    iget v3, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mStrideY:I

    iget v4, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mHeight:I

    mul-int/2addr v3, v4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {p2, v2, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 129
    iget-object v2, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mTrackingFocusRender:Lcom/android/camera/ui/TrackingFocusRenderer;

    iget v3, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mWidth:I

    iget v4, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mHeight:I

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ui/TrackingFocusRenderer;->getInputCords(II)[I

    move-result-object v0

    .line 130
    .local v0, "cords":[I
    if-eqz v0, :cond_1

    .line 131
    iget-wide v2, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mTrackedId:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_0

    .line 132
    iget-wide v2, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mTrackedId:J

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->unregisterObject(J)V

    .line 133
    iput-wide v8, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mTrackedId:J

    .line 135
    :cond_0
    iput-boolean v5, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mIsFirstTime:Z

    .line 136
    iput-object v0, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mInputCords:[I

    .line 138
    :cond_1
    iget-object v2, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mInputCords:[I

    if-eqz v2, :cond_3

    .line 139
    iget-wide v2, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mTrackedId:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_2

    .line 141
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->yvuBytes:[B

    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mInputCords:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    iget-object v5, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mInputCords:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    iget-boolean v4, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mIsFirstTime:Z

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->registerObject([BLandroid/graphics/Point;Z)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mTrackedId:J

    .line 142
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mIsFirstTime:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_2
    :goto_0
    iget-wide v2, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mTrackedId:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_3

    .line 149
    iget-object v2, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mTrackingFocusRender:Lcom/android/camera/ui/TrackingFocusRenderer;

    iget-object v3, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->yvuBytes:[B

    invoke-virtual {p0, v3}, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->trackObjects([B)Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mWidth:I

    iget v5, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mHeight:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/ui/TrackingFocusRenderer;->putRegisteredCords(Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;II)V

    .line 152
    :cond_3
    return-void

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iput-wide v8, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mTrackedId:J

    .line 145
    sget-object v2, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deinit()V
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mIsInitialzed:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->nRelease()V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mIsInitialzed:Z

    .line 123
    :cond_0
    return-void
.end method

.method public getMaxRoiDimension()I
    .locals 2

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mIsInitialzed:Z

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->nGetMaxRoiDimension()I

    move-result v0

    return v0
.end method

.method public getMinRoiDimension()I
    .locals 2

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mIsInitialzed:Z

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->nGetMinRoiDimension()I

    move-result v0

    return v0
.end method

.method public getNumRequiredImage()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public getStringName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "TrackingFocusFrameListener"

    return-object v0
.end method

.method public init(IIII)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "strideY"    # I
    .param p4, "strideVU"    # I

    .prologue
    const/4 v6, 0x0

    .line 102
    iput p1, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mWidth:I

    .line 103
    iput p2, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mHeight:I

    .line 104
    iput p3, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mStrideY:I

    .line 105
    iput p4, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mStrideVU:I

    .line 106
    iget-boolean v0, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mIsInitialzed:Z

    if-nez v0, :cond_1

    .line 107
    sget-object v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;->PERFORMANCE:Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$OperationMode;->ordinal()I

    move-result v1

    sget-object v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Precision;->HIGH:Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Precision;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Precision;->ordinal()I

    move-result v2

    iget v3, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mWidth:I

    iget v4, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mHeight:I

    iget v5, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mStrideY:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->nInit(IIIII)I

    move-result v0

    if-gez v0, :cond_0

    .line 108
    sget-object v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->TAG:Ljava/lang/String;

    const-string v1, "Initialization failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v6, v6, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->imageRect:Landroid/graphics/Rect;

    .line 111
    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->getTrackingForcusRenderer()Lcom/android/camera/ui/TrackingFocusRenderer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mTrackingFocusRender:Lcom/android/camera/ui/TrackingFocusRenderer;

    .line 112
    iget v0, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mStrideY:I

    iget v1, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->yvuBytes:[B

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mIsInitialzed:Z

    .line 115
    :cond_1
    return-void
.end method

.method public isFrameListener()Z
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x1

    return v0
.end method

.method public isManualMode()Z
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 257
    sget-boolean v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mIsSupported:Z

    return v0
.end method

.method public manualCapture(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "captureSession"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 278
    return-void
.end method

.method public processImage()Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerObject([BLandroid/graphics/Point;Z)J
    .locals 5
    .param p1, "imageDataNV21"    # [B
    .param p2, "point"    # Landroid/graphics/Point;
    .param p3, "firstTime"    # Z

    .prologue
    .line 207
    if-eqz p1, :cond_0

    array-length v2, p1

    invoke-direct {p0}, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->getMinFrameSize()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 208
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imageDataNV21 null or too small to encode frame"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 209
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->getMinFrameSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    :cond_1
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->imageRect:Landroid/graphics/Rect;

    iget v3, p2, Landroid/graphics/Point;->x:I

    iget v4, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_3

    .line 211
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "point is outside the image frame: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->imageRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 212
    :cond_3
    iget-boolean v2, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mIsInitialzed:Z

    if-nez v2, :cond_4

    .line 213
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "already released"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 215
    :cond_4
    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, p1, v2, v3, p3}, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->nRegisterObjectByPoint([BIIZ)J

    move-result-wide v0

    .line 216
    .local v0, "id":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_5

    .line 217
    const-wide/16 v0, -0x1

    .line 219
    :cond_5
    iput-wide v0, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mTrackedId:J

    .line 220
    iget-wide v2, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mTrackedId:J

    return-wide v2
.end method

.method public registerObject([BLandroid/graphics/Rect;)J
    .locals 8
    .param p1, "imageDataNV21"    # [B
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 189
    if-eqz p1, :cond_0

    array-length v0, p1

    invoke-direct {p0}, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->getMinFrameSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 190
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "imageDataNV21 null or too small to encode frame"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->imageRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 192
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rect must be non-empty and be entirely inside the frame"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mIsInitialzed:Z

    if-nez v0, :cond_4

    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_4
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->nRegisterObjectByRect([BIIII)J

    move-result-wide v6

    .line 198
    .local v6, "id":J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-nez v0, :cond_5

    .line 199
    const-wide/16 v6, -0x1

    .line 201
    :cond_5
    iput-wide v6, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mTrackedId:J

    .line 202
    iget-wide v0, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mTrackedId:J

    return-wide v0
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
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public trackObjects([B)Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;
    .locals 9
    .param p1, "imageDataNV21"    # [B

    .prologue
    .line 235
    if-eqz p1, :cond_0

    array-length v0, p1

    invoke-direct {p0}, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->getMinFrameSize()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 236
    :cond_0
    sget-object v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imageDataNV21 null or too small to encode frame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 237
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->getMinFrameSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->nTrackObjects([B)[I

    move-result-object v8

    .line 243
    .local v8, "nResults":[I
    new-instance v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;

    const/4 v1, 0x0

    aget v1, v8, v1

    const/4 v2, 0x1

    aget v2, v8, v2

    const/4 v3, 0x2

    aget v3, v8, v3

    const/4 v4, 0x3

    aget v4, v8, v4

    const/4 v5, 0x4

    aget v5, v8, v5

    const/4 v6, 0x5

    aget v6, v8, v6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$Result;-><init>(IIIIIILcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener$1;)V

    return-object v0

    .line 238
    .end local v8    # "nResults":[I
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mIsInitialzed:Z

    if-nez v0, :cond_1

    .line 239
    sget-object v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->TAG:Ljava/lang/String;

    const-string v1, "It\'s released"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterObject(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 225
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 226
    sget-object v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->TAG:Ljava/lang/String;

    const-string v1, "There\'s a pending object"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->nUnregisterObject(J)V

    .line 231
    return-void

    .line 227
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->mIsInitialzed:Z

    if-nez v0, :cond_0

    .line 228
    sget-object v0, Lcom/android/camera/imageprocessor/filter/TrackingFocusFrameListener;->TAG:Ljava/lang/String;

    const-string v1, "already released"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
