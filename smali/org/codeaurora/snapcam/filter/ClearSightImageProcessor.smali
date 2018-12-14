.class public Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
.super Ljava/lang/Object;
.source "ClearSightImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;,
        Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;,
        Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;,
        Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;,
        Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;,
        Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;,
        Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;
    }
.end annotation


# static fields
.field private static final CAM_TYPE_BAYER:I = 0x0

.field private static final CAM_TYPE_MONO:I = 0x1

.field private static final DEFAULT_CS_TIMEOUT_MS:I = 0x12c

.field private static final DEFAULT_IMAGES_TO_BURST:I = 0x4

.field private static final DEFAULT_TIMESTAMP_THRESHOLD_MS:J = 0xaL

.field private static final MIN_MONO_AREA:J = 0x1cfde0L

.field private static final MONO_SIZES:[Landroid/util/Size;

.field private static final MSG_CALIBRATION_DATA:I = 0x7

.field private static final MSG_END_CAPTURE:I = 0x6

.field private static final MSG_NEW_CAPTURE_FAIL:I = 0x3

.field private static final MSG_NEW_CAPTURE_RESULT:I = 0x2

.field private static final MSG_NEW_DEPTH:I = 0x9

.field private static final MSG_NEW_IMG:I = 0x1

.field private static final MSG_NEW_LENS_FOCUS_DISTANCE_BAYER:I = 0x8

.field private static final MSG_NEW_REPROC_FAIL:I = 0x5

.field private static final MSG_NEW_REPROC_RESULT:I = 0x4

.field private static final MSG_START_CAPTURE:I = 0x0

.field private static final NUM_CAM:I = 0x2

.field private static OTP_CALIB_BLOB:Landroid/hardware/camera2/CameraCharacteristics$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<[B>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ClearSightImageProcessor"

.field private static mInstance:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;


# instance fields
.field private SCALE_CROP_ROTATION_REPROCESS_BLOB:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<[B>;"
        }
    .end annotation
.end field

.field private mCallback:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

.field private mCaptureSessions:[Landroid/hardware/camera2/CameraCaptureSession;

.field private mClearsightProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;

.field private mClearsightProcessThread:Landroid/os/HandlerThread;

.field private mClearsightRegisterHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;

.field private mClearsightRegisterThread:Landroid/os/HandlerThread;

.field private mCsTimeout:I

.field private mDepthProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;

.field private mDepthProcessThread:Landroid/os/HandlerThread;

.field private mDumpDepth:Z

.field private mDumpImages:Z

.field private mDumpYUV:Z

.field private mEncodeImageReader:[Landroid/media/ImageReader;

.field private mFinalMonoSize:Landroid/util/Size;

.field private mFinalPictureRatio:F

.field private mFinalPictureSize:Landroid/util/Size;

.field private mFinishReprocessNum:I

.field private mImageEncodeHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;

.field private mImageEncodeThread:Landroid/os/HandlerThread;

.field private mImageProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;

.field private mImageProcessThread:Landroid/os/HandlerThread;

.field private mImageReader:[Landroid/media/ImageReader;

.field private mImageWriter:[Landroid/media/ImageWriter;

.field private mIsClosing:Z

.field private mMediaSaveService:Lcom/android/camera/MediaSaveService;

.field private mMediaSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

.field private mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

.field private mNumBurstCount:I

.field private mNumFrameCount:I

.field private mTimestampThresholdNs:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x578

    .line 101
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/util/Size;

    const/4 v1, 0x0

    new-instance v2, Landroid/util/Size;

    const/16 v3, 0x640

    const/16 v4, 0x4b0

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/util/Size;

    const/16 v3, 0x780

    const/16 v4, 0x438

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v5, v5}, Landroid/util/Size;-><init>(II)V

    aput-object v2, v0, v1

    sput-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->MONO_SIZES:[Landroid/util/Size;

    .line 122
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "org.codeaurora.qcamera3.dualcam_calib_meta_data.dualcam_calib_meta_data_blob"

    const-class v2, [B

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->OTP_CALIB_BLOB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v2, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v3, "org.codeaurora.qcamera3.hal_private_data.reprocess_data_blob"

    const-class v4, [B

    invoke-direct {v2, v3, v4}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->SCALE_CROP_ROTATION_REPROCESS_BLOB:Landroid/hardware/camera2/CaptureResult$Key;

    .line 132
    new-array v2, v5, [Landroid/media/ImageReader;

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    .line 133
    new-array v2, v5, [Landroid/media/ImageReader;

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mEncodeImageReader:[Landroid/media/ImageReader;

    .line 134
    new-array v2, v5, [Landroid/media/ImageWriter;

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageWriter:[Landroid/media/ImageWriter;

    .line 152
    new-array v2, v5, [Landroid/hardware/camera2/CameraCaptureSession;

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCaptureSessions:[Landroid/hardware/camera2/CameraCaptureSession;

    .line 169
    new-instance v2, Lcom/android/camera/PhotoModule$NamedImages;

    invoke-direct {v2}, Lcom/android/camera/PhotoModule$NamedImages;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 170
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getTimestampLimit()J

    move-result-wide v0

    .line 171
    .local v0, "threshMs":J
    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, v0

    iput-wide v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mTimestampThresholdNs:J

    .line 172
    const-string v2, "ClearSightImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTimestampThresholdNs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mTimestampThresholdNs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getImageToBurst()I

    move-result v2

    iput v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumBurstCount:I

    .line 175
    const-string v2, "ClearSightImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNumBurstCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumBurstCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumBurstCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumFrameCount:I

    .line 178
    const-string v2, "ClearSightImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNumFrameCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumFrameCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->isDumpFramesEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDumpImages:Z

    .line 181
    const-string v2, "ClearSightImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDumpImages: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDumpImages:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->isDumpYUVEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDumpYUV:Z

    .line 184
    const-string v2, "ClearSightImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDumpYUV: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDumpYUV:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->isDumpDepthEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDumpDepth:Z

    .line 187
    const-string v2, "ClearSightImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDumpDepth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDumpDepth:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getClearSightTimeout()I

    move-result v2

    iput v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCsTimeout:I

    .line 190
    const-string v2, "ClearSightImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCsTimeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCsTimeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method static synthetic access$000(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .prologue
    .line 93
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->isClosing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)J
    .locals 2
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .prologue
    .line 93
    iget-wide v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mTimestampThresholdNs:J

    return-wide v0
.end method

.method static synthetic access$1100(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCaptureSessions:[Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/media/ImageReader;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/media/ImageWriter;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageWriter:[Landroid/media/ImageWriter;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCallback:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .prologue
    .line 93
    iget-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDumpImages:Z

    return v0
.end method

.method static synthetic access$1600(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/MediaSaveService;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mMediaSaveService:Lcom/android/camera/MediaSaveService;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .prologue
    .line 93
    iget-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDumpYUV:Z

    return v0
.end method

.method static synthetic access$1800(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/media/ImageReader;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mEncodeImageReader:[Landroid/media/ImageReader;

    return-object v0
.end method

.method static synthetic access$200(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDepthProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getFinalCropRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalMonoSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .prologue
    .line 93
    iget-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDumpDepth:Z

    return v0
.end method

.method static synthetic access$2400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->saveToFile([BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mMediaSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;[BII)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->saveAsRGB([BII)V

    return-void
.end method

.method static synthetic access$300(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;

    return-object v0
.end method

.method static synthetic access$400(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .prologue
    .line 93
    iget v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumBurstCount:I

    return v0
.end method

.method static synthetic access$500(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .prologue
    .line 93
    iget v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinishReprocessNum:I

    return v0
.end method

.method static synthetic access$502(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;I)I
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinishReprocessNum:I

    return p1
.end method

.method static synthetic access$508(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I
    .locals 2
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .prologue
    .line 93
    iget v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinishReprocessNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinishReprocessNum:I

    return v0
.end method

.method static synthetic access$600(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/PhotoModule$NamedImages;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    return-object v0
.end method

.method static synthetic access$700(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;

    return-object v0
.end method

.method static synthetic access$800(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .prologue
    .line 93
    iget v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCsTimeout:I

    return v0
.end method

.method static synthetic access$900(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .prologue
    .line 93
    iget v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumFrameCount:I

    return v0
.end method

.method private createEncodeImageReader(III)Landroid/media/ImageReader;
    .locals 3
    .param p1, "cam"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 473
    const/16 v1, 0x100

    iget v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumFrameCount:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {p2, p3, v1, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    .line 475
    .local v0, "reader":Landroid/media/ImageReader;
    new-instance v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$3;

    invoke-direct {v1, p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$3;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 484
    return-object v0
.end method

.method private createImageReader(III)Landroid/media/ImageReader;
    .locals 4
    .param p1, "cam"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 455
    const/16 v1, 0x23

    iget v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumBurstCount:I

    iget v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumFrameCount:I

    add-int/2addr v2, v3

    invoke-static {p2, p3, v1, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    .line 457
    .local v0, "reader":Landroid/media/ImageReader;
    new-instance v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$2;

    invoke-direct {v1, p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$2;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 469
    return-object v0
.end method

.method public static createInstance()V
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mInstance:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-direct {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;-><init>()V

    sput-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mInstance:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 197
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->createInstance()V

    .line 199
    :cond_0
    return-void
.end method

.method private findMaxOutputSize(Landroid/hardware/camera2/params/StreamConfigurationMap;)Landroid/util/Size;
    .locals 2
    .param p1, "map"    # Landroid/hardware/camera2/params/StreamConfigurationMap;

    .prologue
    .line 1573
    const/16 v1, 0x23

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    .line 1574
    .local v0, "sizes":[Landroid/util/Size;
    new-instance v1, Lcom/android/camera/util/CameraUtil$CompareSizesByArea;

    invoke-direct {v1}, Lcom/android/camera/util/CameraUtil$CompareSizesByArea;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1575
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method private getFinalCropRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 11
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v10, 0x3f000000    # 0.5f

    .line 1617
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1618
    .local v0, "finalRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float v6, v7, v8

    .line 1622
    .local v6, "rectRatio":F
    const-string v7, "ClearSightImageProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getFinalCropRect - rect: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    const-string v7, "ClearSightImageProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getFinalCropRect - ratios: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    iget v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    cmpl-float v7, v6, v7

    if-lez v7, :cond_3

    .line 1627
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v10

    float-to-int v3, v7

    .line 1628
    .local v3, "newWidth":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v7, v3

    div-int/lit8 v7, v7, 0x2

    iget v8, p1, Landroid/graphics/Rect;->left:I

    add-int v4, v7, v8

    .line 1629
    .local v4, "newXoffset":I
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 1630
    add-int v7, v4, v3

    iput v7, v0, Landroid/graphics/Rect;->right:I

    .line 1640
    .end local v3    # "newWidth":I
    .end local v4    # "newXoffset":I
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_2

    .line 1641
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    iget v9, v0, Landroid/graphics/Rect;->left:I

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 1642
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_4

    iget v7, v0, Landroid/graphics/Rect;->right:I

    .line 1643
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_5

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    :goto_2
    invoke-direct {v1, v9, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v0    # "finalRect":Landroid/graphics/Rect;
    .local v1, "finalRect":Landroid/graphics/Rect;
    move-object v0, v1

    .line 1645
    .end local v1    # "finalRect":Landroid/graphics/Rect;
    .restart local v0    # "finalRect":Landroid/graphics/Rect;
    :cond_2
    const-string v7, "ClearSightImageProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getFinalCropRect - final rect: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    return-object v0

    .line 1631
    :cond_3
    iget v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    cmpg-float v7, v6, v7

    if-gez v7, :cond_0

    .line 1634
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    div-float/2addr v7, v8

    add-float/2addr v7, v10

    float-to-int v2, v7

    .line 1635
    .local v2, "newHeight":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v7, v2

    div-int/lit8 v7, v7, 0x2

    iget v8, p1, Landroid/graphics/Rect;->top:I

    add-int v5, v7, v8

    .line 1636
    .local v5, "newYoffset":I
    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 1637
    add-int v7, v5, v2

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 1642
    .end local v2    # "newHeight":I
    .end local v5    # "newYoffset":I
    :cond_4
    iget v7, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1643
    :cond_5
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method private getFinalMonoSize()Landroid/util/Size;
    .locals 13

    .prologue
    const/high16 v12, 0x3f000000    # 0.5f

    .line 1579
    const/4 v2, 0x0

    .line 1580
    .local v2, "finalSize":Landroid/util/Size;
    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    iget-object v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    int-to-long v0, v7

    .line 1583
    .local v0, "finalPicArea":J
    const-wide/32 v8, 0x1cfde0

    cmp-long v7, v0, v8

    if-lez v7, :cond_0

    .line 1584
    sget-object v8, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->MONO_SIZES:[Landroid/util/Size;

    array-length v9, v8

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v6, v8, v7

    .line 1585
    .local v6, "size":Landroid/util/Size;
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v4, v10, v11

    .line 1586
    .local v4, "monoRatio":F
    iget v10, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    cmpl-float v10, v4, v10

    if-nez v10, :cond_2

    .line 1587
    move-object v2, v6

    .line 1607
    .end local v4    # "monoRatio":F
    .end local v6    # "size":Landroid/util/Size;
    :cond_0
    if-nez v2, :cond_1

    .line 1610
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureSize:Landroid/util/Size;

    .line 1613
    :cond_1
    return-object v2

    .line 1589
    .restart local v4    # "monoRatio":F
    .restart local v6    # "size":Landroid/util/Size;
    :cond_2
    iget v10, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    sub-float v10, v4, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const v11, 0x3dcccccd    # 0.1f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_4

    .line 1591
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v5

    .line 1592
    .local v5, "monoWidth":I
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v3

    .line 1593
    .local v3, "monoHeight":I
    iget v10, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    cmpl-float v10, v4, v10

    if-lez v10, :cond_5

    .line 1596
    int-to-float v10, v5

    iget v11, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    div-float/2addr v10, v11

    add-float/2addr v10, v12

    float-to-int v3, v10

    .line 1602
    :cond_3
    :goto_1
    new-instance v2, Landroid/util/Size;

    .end local v2    # "finalSize":Landroid/util/Size;
    invoke-direct {v2, v5, v3}, Landroid/util/Size;-><init>(II)V

    .line 1584
    .end local v3    # "monoHeight":I
    .end local v5    # "monoWidth":I
    .restart local v2    # "finalSize":Landroid/util/Size;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1597
    .restart local v3    # "monoHeight":I
    .restart local v5    # "monoWidth":I
    :cond_5
    iget v10, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    cmpg-float v10, v4, v10

    if-gez v10, :cond_3

    .line 1600
    int-to-float v10, v3

    iget v11, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    mul-float/2addr v10, v11

    add-float/2addr v10, v12

    float-to-int v5, v10

    goto :goto_1
.end method

.method public static getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mInstance:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    if-nez v0, :cond_0

    .line 203
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createInstance()V

    .line 205
    :cond_0
    sget-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mInstance:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    return-object v0
.end method

.method private isClosing()Z
    .locals 1

    .prologue
    .line 451
    iget-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mIsClosing:Z

    return v0
.end method

.method private saveAsRGB([BII)V
    .locals 17
    .param p1, "depth"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 1434
    move-object/from16 v0, p1

    array-length v14, v0

    new-array v5, v14, [I

    .line 1435
    .local v5, "colors":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v14, v5

    if-ge v8, v14, :cond_0

    .line 1436
    aget-byte v14, p1, v8

    add-int/lit16 v14, v14, 0x100

    rem-int/lit16 v14, v14, 0x100

    aput v14, v5, v8

    .line 1435
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1439
    :cond_0
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1440
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .local v13, "y":I
    :goto_1
    move/from16 v0, p3

    if-ge v13, v0, :cond_2

    .line 1441
    const/4 v12, 0x0

    .local v12, "x":I
    :goto_2
    move/from16 v0, p2

    if-ge v12, v0, :cond_1

    .line 1442
    mul-int v14, v13, p2

    add-int/2addr v14, v12

    aget v4, v5, v14

    .line 1443
    .local v4, "c":I
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v14

    invoke-virtual {v3, v12, v13, v14}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 1441
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1440
    .end local v4    # "c":I
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1446
    .end local v12    # "x":I
    :cond_2
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1447
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v15, 0x64

    invoke-virtual {v3, v14, v15, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1448
    new-instance v7, Ljava/io/File;

    const-string v14, "sdcard/depthmap_rgb.jpg"

    invoke-direct {v7, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1449
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 1450
    .local v9, "jpeg":[B
    const-string v14, "ClearSightImageProcessor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "jpeg.size="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    array-length v0, v9

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    const/4 v10, 0x0

    .line 1453
    .local v10, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v11, Ljava/io/BufferedOutputStream;

    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v11, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1454
    .end local v10    # "out":Ljava/io/OutputStream;
    .local v11, "out":Ljava/io/OutputStream;
    const/4 v14, 0x0

    :try_start_1
    array-length v15, v9

    invoke-virtual {v11, v9, v14, v15}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1458
    if-eqz v11, :cond_5

    .line 1460
    :try_start_2
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v10, v11

    .line 1466
    .end local v11    # "out":Ljava/io/OutputStream;
    .restart local v10    # "out":Ljava/io/OutputStream;
    :cond_3
    :goto_3
    return-void

    .line 1461
    .end local v10    # "out":Ljava/io/OutputStream;
    .restart local v11    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v6

    .line 1462
    .local v6, "e":Ljava/lang/Exception;
    const-string v14, "ClearSightImageProcessor"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    .line 1463
    .end local v11    # "out":Ljava/io/OutputStream;
    .restart local v10    # "out":Ljava/io/OutputStream;
    goto :goto_3

    .line 1455
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 1456
    .restart local v6    # "e":Ljava/lang/Exception;
    :goto_4
    :try_start_3
    const-string v14, "ClearSightImageProcessor"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1458
    if-eqz v10, :cond_3

    .line 1460
    :try_start_4
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 1461
    :catch_2
    move-exception v6

    .line 1462
    const-string v14, "ClearSightImageProcessor"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1458
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    :goto_5
    if-eqz v10, :cond_4

    .line 1460
    :try_start_5
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1463
    :cond_4
    :goto_6
    throw v14

    .line 1461
    :catch_3
    move-exception v6

    .line 1462
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v15, "ClearSightImageProcessor"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1458
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v10    # "out":Ljava/io/OutputStream;
    .restart local v11    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v14

    move-object v10, v11

    .end local v11    # "out":Ljava/io/OutputStream;
    .restart local v10    # "out":Ljava/io/OutputStream;
    goto :goto_5

    .line 1455
    .end local v10    # "out":Ljava/io/OutputStream;
    .restart local v11    # "out":Ljava/io/OutputStream;
    :catch_4
    move-exception v6

    move-object v10, v11

    .end local v11    # "out":Ljava/io/OutputStream;
    .restart local v10    # "out":Ljava/io/OutputStream;
    goto :goto_4

    .end local v10    # "out":Ljava/io/OutputStream;
    .restart local v11    # "out":Ljava/io/OutputStream;
    :cond_5
    move-object v10, v11

    .end local v11    # "out":Ljava/io/OutputStream;
    .restart local v10    # "out":Ljava/io/OutputStream;
    goto :goto_3
.end method

.method private saveToFile([BLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "bytes"    # [B
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "format"    # Ljava/lang/String;

    .prologue
    .line 1469
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sdcard/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1470
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 1472
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1473
    .end local v2    # "out":Ljava/io/OutputStream;
    .local v3, "out":Ljava/io/OutputStream;
    const/4 v4, 0x0

    :try_start_1
    array-length v5, p1

    invoke-virtual {v3, p1, v4, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1477
    if-eqz v3, :cond_2

    .line 1479
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 1485
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    return-void

    .line 1480
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 1481
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "ClearSightImageProcessor"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 1482
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_0

    .line 1474
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1475
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v4, "ClearSightImageProcessor"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1477
    if-eqz v2, :cond_0

    .line 1479
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1480
    :catch_2
    move-exception v0

    .line 1481
    const-string v4, "ClearSightImageProcessor"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1477
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_1

    .line 1479
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1482
    :cond_1
    :goto_3
    throw v4

    .line 1480
    :catch_3
    move-exception v0

    .line 1481
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "ClearSightImageProcessor"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1477
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 1474
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_1

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :cond_2
    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_0
.end method


# virtual methods
.method public capture(ZLandroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/os/Handler;)V
    .locals 9
    .param p1, "bayer"    # Z
    .param p2, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p3, "requestBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p4, "captureCallbackHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 395
    const-string v6, "ClearSightImageProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "capture: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    if-eqz p1, :cond_0

    move v1, v5

    .line 399
    .local v1, "cam":I
    :goto_0
    new-instance v2, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$1;

    invoke-direct {v2, p0, v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$1;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;I)V

    .line 438
    .local v2, "captureCallback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v0, "burstList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    iget-object v6, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-virtual {p3, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 440
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v6, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumBurstCount:I

    if-ge v3, v6, :cond_1

    .line 441
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p3, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 442
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    .line 443
    .local v4, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 397
    .end local v0    # "burstList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    .end local v1    # "cam":I
    .end local v2    # "captureCallback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .end local v3    # "i":I
    .end local v4    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 446
    .restart local v0    # "burstList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    .restart local v1    # "cam":I
    .restart local v2    # "captureCallback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .restart local v3    # "i":I
    :cond_1
    iget-object v6, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v5, v1, v7, v8}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 447
    invoke-virtual {p2, v0, v2, p4}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 448
    return-void
.end method

.method public close()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 268
    const-string v2, "ClearSightImageProcessor"

    const-string v3, "close() start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iput-boolean v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mIsClosing:Z

    .line 273
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_0

    .line 274
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 277
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->join()V

    .line 278
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessThread:Landroid/os/HandlerThread;

    .line 279
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_1

    .line 286
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 289
    :try_start_1
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->join()V

    .line 290
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterThread:Landroid/os/HandlerThread;

    .line 291
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 297
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_2

    .line 298
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 301
    :try_start_2
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->join()V

    .line 302
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessThread:Landroid/os/HandlerThread;

    .line 303
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 309
    :cond_2
    :goto_2
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_3

    .line 310
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 313
    :try_start_3
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->join()V

    .line 314
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeThread:Landroid/os/HandlerThread;

    .line 315
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 321
    :cond_3
    :goto_3
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDepthProcessThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_4

    .line 322
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDepthProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 324
    :try_start_4
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDepthProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->join()V

    .line 325
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDepthProcessThread:Landroid/os/HandlerThread;

    .line 326
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDepthProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    .line 332
    :cond_4
    :goto_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 333
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    aget-object v2, v2, v1

    if-eqz v2, :cond_5

    .line 334
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    .line 335
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    aput-object v4, v2, v1

    .line 337
    :cond_5
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mEncodeImageReader:[Landroid/media/ImageReader;

    aget-object v2, v2, v1

    if-eqz v2, :cond_6

    .line 338
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mEncodeImageReader:[Landroid/media/ImageReader;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    .line 339
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mEncodeImageReader:[Landroid/media/ImageReader;

    aput-object v4, v2, v1

    .line 341
    :cond_6
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageWriter:[Landroid/media/ImageWriter;

    aget-object v2, v2, v1

    if-eqz v2, :cond_7

    .line 342
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageWriter:[Landroid/media/ImageWriter;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/ImageWriter;->close()V

    .line 343
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageWriter:[Landroid/media/ImageWriter;

    aput-object v4, v2, v1

    .line 332
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 280
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 292
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 293
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 304
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 305
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 316
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_3
    move-exception v0

    .line 317
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 327
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_4
    move-exception v0

    .line 328
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 347
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "i":I
    :cond_8
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCaptureSessions:[Landroid/hardware/camera2/CameraCaptureSession;

    aput-object v4, v2, v5

    .line 348
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCaptureSessions:[Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    .line 349
    iput-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mMediaSaveService:Lcom/android/camera/MediaSaveService;

    .line 350
    iput-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mMediaSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    .line 351
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->close()V

    .line 352
    const-string v2, "ClearSightImageProcessor"

    const-string v3, "close() done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-void
.end method

.method public createCaptureRequest(Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 3
    .param p1, "device"    # Landroid/hardware/camera2/CameraDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 387
    const-string v1, "ClearSightImageProcessor"

    const-string v2, "createCaptureRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 390
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    return-object v0
.end method

.method public createCaptureSession(ZLandroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .locals 5
    .param p1, "bayer"    # Z
    .param p2, "device"    # Landroid/hardware/camera2/CameraDevice;
    .param p4, "captureSessionCallback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/hardware/camera2/CameraDevice;",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 366
    .local p3, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    const-string v1, "ClearSightImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCaptureSession: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 369
    .local v0, "cam":I
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mEncodeImageReader:[Landroid/media/ImageReader;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    new-instance v1, Landroid/hardware/camera2/params/InputConfiguration;

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    aget-object v2, v2, v0

    .line 373
    invoke-virtual {v2}, Landroid/media/ImageReader;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    aget-object v3, v3, v0

    .line 374
    invoke-virtual {v3}, Landroid/media/ImageReader;->getHeight()I

    move-result v3

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    const/4 v2, 0x0

    .line 372
    invoke-virtual {p2, v1, p3, p4, v2}, Landroid/hardware/camera2/CameraDevice;->createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 376
    return-void

    .line 368
    .end local v0    # "cam":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public createYuvImage(Landroid/media/Image;)Landroid/graphics/YuvImage;
    .locals 13
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 1533
    if-nez p1, :cond_0

    .line 1534
    const-string v0, "ClearSightImageProcessor"

    const-string v2, "createYuvImage - invalid param"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    const/4 v0, 0x0

    .line 1554
    :goto_0
    return-object v0

    .line 1537
    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    .line 1538
    .local v7, "planes":[Landroid/media/Image$Plane;
    aget-object v0, v7, v2

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 1539
    .local v12, "yBuffer":Ljava/nio/ByteBuffer;
    aget-object v0, v7, v3

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 1540
    .local v11, "vuBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    .line 1541
    .local v9, "sizeY":I
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    .line 1542
    .local v8, "sizeVU":I
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v10

    .line 1543
    .local v10, "stride":I
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v6

    .line 1544
    .local v6, "height":I
    mul-int v0, v10, v6

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    .line 1545
    .local v1, "data":[B
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1546
    invoke-virtual {v12, v1, v2, v9}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1547
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1548
    invoke-virtual {v11, v1, v9, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1550
    new-array v5, v3, [I

    aget-object v0, v7, v2

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v0

    aput v0, v5, v2

    const/4 v0, 0x1

    aget-object v2, v7, v3

    .line 1551
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    aput v2, v5, v0

    .line 1553
    .local v5, "strides":[I
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v3

    .line 1554
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    goto :goto_0
.end method

.method public getJpegData(Landroid/media/Image;)[B
    .locals 6
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    const/4 v5, 0x0

    .line 1558
    if-nez p1, :cond_0

    .line 1559
    const-string v4, "ClearSightImageProcessor"

    const-string v5, "getJpegData - invalid param"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    const/4 v1, 0x0

    .line 1569
    :goto_0
    return-object v1

    .line 1562
    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    .line 1563
    .local v2, "planes":[Landroid/media/Image$Plane;
    aget-object v4, v2, v5

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1564
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    .line 1565
    .local v3, "size":I
    new-array v1, v3, [B

    .line 1566
    .local v1, "data":[B
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1567
    invoke-virtual {v0, v1, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public init(Landroid/hardware/camera2/params/StreamConfigurationMap;IILandroid/content/Context;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;)V
    .locals 13
    .param p1, "map"    # Landroid/hardware/camera2/params/StreamConfigurationMap;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "mediaListener"    # Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    .prologue
    .line 221
    const-string v9, "ClearSightImageProcessor"

    const-string v10, "init() start"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mIsClosing:Z

    .line 223
    new-instance v9, Landroid/os/HandlerThread;

    const-string v10, "CameraImageProcess"

    invoke-direct {v9, v10}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessThread:Landroid/os/HandlerThread;

    .line 224
    iget-object v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    .line 225
    new-instance v9, Landroid/os/HandlerThread;

    const-string v10, "ClearsightRegister"

    invoke-direct {v9, v10}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterThread:Landroid/os/HandlerThread;

    .line 226
    iget-object v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterThread:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    .line 227
    new-instance v9, Landroid/os/HandlerThread;

    const-string v10, "ClearsightProcess"

    invoke-direct {v9, v10}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessThread:Landroid/os/HandlerThread;

    .line 228
    iget-object v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    .line 229
    new-instance v9, Landroid/os/HandlerThread;

    const-string v10, "CameraImageEncode"

    invoke-direct {v9, v10}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeThread:Landroid/os/HandlerThread;

    .line 230
    iget-object v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeThread:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    .line 231
    new-instance v9, Landroid/os/HandlerThread;

    const-string v10, "DepthProcess"

    invoke-direct {v9, v10}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDepthProcessThread:Landroid/os/HandlerThread;

    .line 232
    iget-object v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDepthProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    .line 234
    new-instance v9, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;

    iget-object v10, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v9, p0, v10}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/os/Looper;)V

    iput-object v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;

    .line 235
    new-instance v9, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;

    iget-object v10, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterThread:Landroid/os/HandlerThread;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v9, p0, v10}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/os/Looper;)V

    iput-object v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightRegisterHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;

    .line 236
    new-instance v9, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;

    iget-object v10, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v9, p0, v10}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/os/Looper;)V

    iput-object v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mClearsightProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;

    .line 237
    new-instance v9, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;

    iget-object v10, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeThread:Landroid/os/HandlerThread;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v9, p0, v10}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/os/Looper;)V

    iput-object v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;

    .line 238
    new-instance v9, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;

    iget-object v10, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageEncodeThread:Landroid/os/HandlerThread;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v9, p0, v10}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/os/Looper;)V

    iput-object v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDepthProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;

    .line 240
    new-instance v9, Landroid/util/Size;

    move/from16 v0, p3

    invoke-direct {v9, p2, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureSize:Landroid/util/Size;

    .line 241
    int-to-float v9, p2

    move/from16 v0, p3

    int-to-float v10, v0

    div-float/2addr v9, v10

    iput v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalPictureRatio:F

    .line 242
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getFinalMonoSize()Landroid/util/Size;

    move-result-object v9

    iput-object v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mFinalMonoSize:Landroid/util/Size;

    .line 243
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->findMaxOutputSize(Landroid/hardware/camera2/params/StreamConfigurationMap;)Landroid/util/Size;

    move-result-object v7

    .line 244
    .local v7, "maxSize":Landroid/util/Size;
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v8

    .line 245
    .local v8, "maxWidth":I
    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v6

    .line 246
    .local v6, "maxHeight":I
    iget-object v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, v11, v8, v6}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createImageReader(III)Landroid/media/ImageReader;

    move-result-object v11

    aput-object v11, v9, v10

    .line 247
    iget-object v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageReader:[Landroid/media/ImageReader;

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-direct {p0, v11, v8, v6}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createImageReader(III)Landroid/media/ImageReader;

    move-result-object v11

    aput-object v11, v9, v10

    .line 248
    iget-object v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mEncodeImageReader:[Landroid/media/ImageReader;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, v11, v8, v6}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createEncodeImageReader(III)Landroid/media/ImageReader;

    move-result-object v11

    aput-object v11, v9, v10

    .line 249
    iget-object v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mEncodeImageReader:[Landroid/media/ImageReader;

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-direct {p0, v11, v8, v6}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createEncodeImageReader(III)Landroid/media/ImageReader;

    move-result-object v11

    aput-object v11, v9, v10

    .line 251
    move-object/from16 v0, p5

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mMediaSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    .line 252
    const-string v9, "camera"

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraManager;

    .line 254
    .local v4, "cm":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    const-string v9, "0"

    invoke-virtual {v4, v9}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    .line 255
    .local v3, "cc":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v9, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->OTP_CALIB_BLOB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 256
    .local v1, "blob":[B
    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->createFromBytes([B)Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;

    move-result-object v2

    .line 257
    .local v2, "calibrationData":Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v9

    iget v10, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumFrameCount:I

    mul-int/lit8 v10, v10, 0x2

    invoke-virtual {v9, v10, v8, v6, v2}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->init(IIILorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;)V

    .line 259
    iget-object v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mDepthProcessHandler:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;

    const/4 v10, 0x7

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$DepthProcessHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 260
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v1    # "blob":[B
    .end local v2    # "calibrationData":Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;
    .end local v3    # "cc":Landroid/hardware/camera2/CameraCharacteristics;
    :goto_0
    const-string v9, "ClearSightImageProcessor"

    const-string v10, "init() done"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void

    .line 261
    :catch_0
    move-exception v5

    .line 262
    .local v5, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v5}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public init(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroid/content/Context;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;)V
    .locals 8
    .param p1, "map"    # Landroid/hardware/camera2/params/StreamConfigurationMap;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "mediaListener"    # Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->findMaxOutputSize(Landroid/hardware/camera2/params/StreamConfigurationMap;)Landroid/util/Size;

    move-result-object v6

    .line 211
    .local v6, "maxSize":Landroid/util/Size;
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 212
    .local v2, "maxWidth":I
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v3

    .line 213
    .local v3, "maxHeight":I
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v7

    .line 214
    .local v7, "settingsManager":Lcom/android/camera/SettingsManager;
    const-string v0, "pref_camera2_picturesize_key"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-virtual {v7, v0, v1}, Lcom/android/camera/SettingsManager;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 216
    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->init(Landroid/hardware/camera2/params/StreamConfigurationMap;IILandroid/content/Context;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;)V

    .line 217
    return-void
.end method

.method public onCaptureSessionConfigured(ZLandroid/hardware/camera2/CameraCaptureSession;)V
    .locals 5
    .param p1, "bayer"    # Z
    .param p2, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 379
    const-string v0, "ClearSightImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCaptureSessionConfigured: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCaptureSessions:[Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    aput-object p2, v3, v0

    .line 382
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mImageWriter:[Landroid/media/ImageWriter;

    if-eqz p1, :cond_1

    .line 383
    :goto_1
    invoke-virtual {p2}, Landroid/hardware/camera2/CameraCaptureSession;->getInputSurface()Landroid/view/Surface;

    move-result-object v2

    iget v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mNumBurstCount:I

    invoke-static {v2, v3}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object v2

    aput-object v2, v0, v1

    .line 384
    return-void

    :cond_0
    move v0, v2

    .line 381
    goto :goto_0

    :cond_1
    move v1, v2

    .line 382
    goto :goto_1
.end method

.method public saveDebugImageAsJpeg(Lcom/android/camera/MediaSaveService;Landroid/graphics/YuvImage;ZLcom/android/camera/PhotoModule$NamedImages$NamedEntity;IJ)V
    .locals 12
    .param p1, "service"    # Lcom/android/camera/MediaSaveService;
    .param p2, "image"    # Landroid/graphics/YuvImage;
    .param p3, "isBayer"    # Z
    .param p4, "namedEntity"    # Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .param p5, "count"    # I
    .param p6, "ts"    # J

    .prologue
    .line 1500
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1501
    .local v10, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1502
    invoke-virtual {p2}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v1, 0x64

    .line 1501
    invoke-virtual {p2, v0, v1, v10}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 1504
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->saveDebugImageAsJpeg(Lcom/android/camera/MediaSaveService;[BIIZLcom/android/camera/PhotoModule$NamedImages$NamedEntity;IJ)V

    .line 1506
    return-void
.end method

.method public saveDebugImageAsJpeg(Lcom/android/camera/MediaSaveService;Landroid/media/Image;ZLcom/android/camera/PhotoModule$NamedImages$NamedEntity;IJ)V
    .locals 10
    .param p1, "service"    # Lcom/android/camera/MediaSaveService;
    .param p2, "image"    # Landroid/media/Image;
    .param p3, "isBayer"    # Z
    .param p4, "namedEntity"    # Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .param p5, "count"    # I
    .param p6, "ts"    # J

    .prologue
    .line 1510
    invoke-virtual {p2}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    .line 1511
    invoke-virtual {p0, p2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createYuvImage(Landroid/media/Image;)Landroid/graphics/YuvImage;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->saveDebugImageAsJpeg(Lcom/android/camera/MediaSaveService;Landroid/graphics/YuvImage;ZLcom/android/camera/PhotoModule$NamedImages$NamedEntity;IJ)V

    .line 1516
    :cond_0
    :goto_0
    return-void

    .line 1512
    :cond_1
    invoke-virtual {p2}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    .line 1513
    invoke-virtual {p0, p2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getJpegData(Landroid/media/Image;)[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/media/Image;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/media/Image;->getHeight()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    move-object v6, p4

    move v7, p5

    move-wide/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->saveDebugImageAsJpeg(Lcom/android/camera/MediaSaveService;[BIIZLcom/android/camera/PhotoModule$NamedImages$NamedEntity;IJ)V

    goto :goto_0
.end method

.method public saveDebugImageAsJpeg(Lcom/android/camera/MediaSaveService;[BIIZLcom/android/camera/PhotoModule$NamedImages$NamedEntity;IJ)V
    .locals 16
    .param p1, "service"    # Lcom/android/camera/MediaSaveService;
    .param p2, "data"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "isBayer"    # Z
    .param p6, "namedEntity"    # Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .param p7, "count"    # I
    .param p8, "ts"    # J

    .prologue
    .line 1489
    if-eqz p5, :cond_0

    const-string v2, "b"

    .line 1490
    .local v2, "type":Ljava/lang/String;
    :goto_0
    if-nez p6, :cond_1

    const-wide/16 v6, -0x1

    .line 1491
    .local v6, "date":J
    :goto_1
    const-string v3, "%s_%s%02d_%d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p6

    iget-object v9, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    aput-object v9, v4, v8

    const/4 v8, 0x1

    aput-object v2, v4, v8

    const/4 v8, 0x2

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x3

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1493
    .local v5, "title":Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 1495
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/MediaSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "jpeg"

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v9, p3

    move/from16 v10, p4

    .line 1493
    invoke-virtual/range {v3 .. v15}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1496
    return-void

    .line 1489
    .end local v2    # "type":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "date":J
    :cond_0
    const-string v2, "m"

    goto :goto_0

    .line 1490
    .restart local v2    # "type":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p6

    iget-wide v6, v0, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    goto :goto_1
.end method

.method public saveDebugImageAsNV21(Landroid/media/Image;ZLcom/android/camera/PhotoModule$NamedImages$NamedEntity;IJ)V
    .locals 9
    .param p1, "image"    # Landroid/media/Image;
    .param p2, "isBayer"    # Z
    .param p3, "namedEntity"    # Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    .param p4, "count"    # I
    .param p5, "ts"    # J

    .prologue
    .line 1519
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v4

    const/16 v5, 0x23

    if-eq v4, v5, :cond_0

    .line 1520
    const-string v4, "ClearSightImageProcessor"

    const-string v5, "saveDebugImageAsNV21 - invalid param"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    :cond_0
    if-eqz p2, :cond_1

    const-string v2, "b"

    .line 1524
    .local v2, "type":Ljava/lang/String;
    :goto_0
    const-string v4, "%s_%dx%d_NV21_%s%02d_%d"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p3, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 1525
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v2, v5, v6

    const/4 v6, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1524
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1527
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createYuvImage(Landroid/media/Image;)Landroid/graphics/YuvImage;

    move-result-object v3

    .line 1528
    .local v3, "yuv":Landroid/graphics/YuvImage;
    const-string v4, "yuv"

    invoke-static {v1, v4}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1529
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "yuv"

    invoke-static {v0, v4, v5, v6}, Lcom/android/camera/Storage;->writeFile(Ljava/lang/String;[BLcom/android/camera/exif/ExifInterface;Ljava/lang/String;)I

    .line 1530
    return-void

    .line 1523
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "title":Ljava/lang/String;
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "yuv":Landroid/graphics/YuvImage;
    :cond_1
    const-string v2, "m"

    goto :goto_0
.end method

.method public setCallback(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;)V
    .locals 0
    .param p1, "callback"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    .prologue
    .line 356
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mCallback:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    .line 357
    return-void
.end method

.method public setMediaSaveService(Lcom/android/camera/MediaSaveService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/camera/MediaSaveService;

    .prologue
    .line 360
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->mMediaSaveService:Lcom/android/camera/MediaSaveService;

    .line 361
    return-void
.end method
