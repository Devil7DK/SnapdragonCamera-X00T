.class public Lcom/android/camera/imageprocessor/PostProcessor;
.super Ljava/lang/Object;
.source "PostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/imageprocessor/PostProcessor$BitmapOutputStream;,
        Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;,
        Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;,
        Lcom/android/camera/imageprocessor/PostProcessor$STATUS;,
        Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;,
        Lcom/android/camera/imageprocessor/PostProcessor$ImageWrapper;
    }
.end annotation


# static fields
.field private static DEBUG_DUMP_FILTER_IMG:Z = false

.field private static DEBUG_ZSL:Z = false

.field public static final FILTER_BESTPICTURE:I = 0x5

.field public static final FILTER_BLURBUSTER:I = 0x7

.field public static final FILTER_CHROMAFLASH:I = 0x6

.field public static final FILTER_MAX:I = 0x8

.field public static final FILTER_NONE:I = 0x0

.field public static final FILTER_OPTIZOOM:I = 0x1

.field public static final FILTER_SHARPSHOOTER:I = 0x2

.field public static final FILTER_STILLMORE:I = 0x4

.field public static final FILTER_UBIFOCUS:I = 0x3

.field private static final MAX_REQUIRED_IMAGE_NUM:I = 0xb

.field private static final TAG:Ljava/lang/String; = "PostProcessor"


# instance fields
.field private lock:Ljava/lang/Object;

.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mController:Lcom/android/camera/CaptureModule;

.field private mCurrentNumImage:I

.field private mDefaultResultImage:Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

.field private mFallOffImages:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

.field private mFilterIndex:I

.field private mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHeight:I

.field private mImageHandlerTask:Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;

.field private mImageReader:Landroid/media/ImageReader;

.field private mImageWriter:Landroid/media/ImageWriter;

.field private mImages:[Landroid/media/Image;

.field private mIsZSLFallOff:Z

.field private mLatestResultForLongShot:Landroid/hardware/camera2/TotalCaptureResult;

.field public mMaxRequiredImageNum:I

.field private mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

.field private mOrientation:I

.field private mPendingContinuousRequestCount:I

.field private mSaveRaw:Z

.field private mSavingHander:Landroid/os/Handler;

.field private mSavingHandlerThread:Landroid/os/HandlerThread;

.field private mStatus:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

.field private mStride:I

.field private mTotalCaptureResultList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field private mUseZSL:Z

.field private mWatchdog:Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;

.field private mWidth:I

.field private mZSLFallOffResult:Landroid/hardware/camera2/TotalCaptureResult;

.field private mZSLHandler:Landroid/os/Handler;

.field private mZSLHandlerThread:Landroid/os/HandlerThread;

.field private mZSLQueue:Lcom/android/camera/imageprocessor/ZSLQueue;

.field private mZSLReprocessImageReader:Landroid/media/ImageReader;

.field processedImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 124
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCamera2Debug()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 125
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCamera2Debug()I

    move-result v0

    if-ne v0, v4, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/camera/imageprocessor/PostProcessor;->DEBUG_DUMP_FILTER_IMG:Z

    .line 127
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCamera2Debug()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    .line 128
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCamera2Debug()I

    move-result v0

    if-ne v0, v4, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    sput-boolean v1, Lcom/android/camera/imageprocessor/PostProcessor;->DEBUG_ZSL:Z

    .line 1231
    const-string v0, "jni_imageutil"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1232
    return-void

    :cond_3
    move v0, v1

    .line 125
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/CaptureModule;)V
    .locals 3
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "module"    # Lcom/android/camera/CaptureModule;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mCurrentNumImage:I

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->lock:Ljava/lang/Object;

    .line 120
    iput v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mOrientation:I

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mUseZSL:Z

    .line 136
    iput-boolean v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mSaveRaw:Z

    .line 142
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mTotalCaptureResultList:Ljava/util/LinkedList;

    .line 143
    iput-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLFallOffResult:Landroid/hardware/camera2/TotalCaptureResult;

    .line 144
    iput-boolean v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mIsZSLFallOff:Z

    .line 145
    iput-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mLatestResultForLongShot:Landroid/hardware/camera2/TotalCaptureResult;

    .line 146
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFallOffImages:Ljava/util/LinkedList;

    .line 147
    iput v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mPendingContinuousRequestCount:I

    .line 388
    new-instance v0, Lcom/android/camera/imageprocessor/PostProcessor$1;

    invoke-direct {v0, p0}, Lcom/android/camera/imageprocessor/PostProcessor$1;-><init>(Lcom/android/camera/imageprocessor/PostProcessor;)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 617
    sget-object v0, Lcom/android/camera/imageprocessor/PostProcessor$STATUS;->DEINIT:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mStatus:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    .line 1157
    new-instance v0, Lcom/android/camera/imageprocessor/PostProcessor$8;

    invoke-direct {v0, p0}, Lcom/android/camera/imageprocessor/PostProcessor$8;-><init>(Lcom/android/camera/imageprocessor/PostProcessor;)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->processedImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 620
    iput-object p2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    .line 621
    iput-object p1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mActivity:Lcom/android/camera/CameraActivity;

    .line 622
    new-instance v0, Lcom/android/camera/PhotoModule$NamedImages;

    invoke-direct {v0}, Lcom/android/camera/PhotoModule$NamedImages;-><init>()V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 623
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/imageprocessor/PostProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mUseZSL:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CaptureModule;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/imageprocessor/PostProcessor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/PostProcessor;->clearFallOffImage()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/imageprocessor/PostProcessor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/media/Image;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;
    .param p1, "x1"    # Landroid/media/Image;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/camera/imageprocessor/PostProcessor;->onImageToProcess(Landroid/media/Image;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/ZSLQueue;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLQueue:Lcom/android/camera/imageprocessor/ZSLQueue;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/imageprocessor/PostProcessor;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mTotalCaptureResultList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/filter/ImageFilter;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/imageprocessor/PostProcessor;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/imageprocessor/PostProcessor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mWidth:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/camera/imageprocessor/PostProcessor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/imageprocessor/PostProcessor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mPendingContinuousRequestCount:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/camera/imageprocessor/PostProcessor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mStride:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/PostProcessor$STATUS;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mStatus:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/camera/imageprocessor/PostProcessor;Lcom/android/camera/imageprocessor/PostProcessor$STATUS;)Lcom/android/camera/imageprocessor/PostProcessor$STATUS;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;
    .param p1, "x1"    # Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mStatus:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mDefaultResultImage:Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/camera/imageprocessor/PostProcessor;Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;)Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;
    .param p1, "x1"    # Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mDefaultResultImage:Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    return-object p1
.end method

.method static synthetic access$2300()Z
    .locals 1

    .prologue
    .line 89
    sget-boolean v0, Lcom/android/camera/imageprocessor/PostProcessor;->DEBUG_DUMP_FILTER_IMG:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/camera/imageprocessor/PostProcessor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mOrientation:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/camera/imageprocessor/PostProcessor;Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;ILandroid/hardware/camera2/TotalCaptureResult;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;
    .param p1, "x1"    # Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/imageprocessor/PostProcessor;->nv21ToJpeg(Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;ILandroid/hardware/camera2/TotalCaptureResult;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/imageprocessor/PostProcessor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilterIndex:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/camera/imageprocessor/PostProcessor;)[Landroid/media/Image;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mImages:[Landroid/media/Image;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/imageprocessor/PostProcessor;[BIIIZ)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Z

    .prologue
    .line 89
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/imageprocessor/PostProcessor;->nativeFlipNV21([BIIIZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/camera/imageprocessor/PostProcessor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/PostProcessor;->clear()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/imageprocessor/PostProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mSaveRaw:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mWatchdog:Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;

    return-object v0
.end method

.method static synthetic access$3100()Z
    .locals 1

    .prologue
    .line 89
    sget-boolean v0, Lcom/android/camera/imageprocessor/PostProcessor;->DEBUG_ZSL:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/camera/imageprocessor/PostProcessor;)Lcom/android/camera/PhotoModule$NamedImages;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/camera/imageprocessor/PostProcessor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mSavingHander:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/imageprocessor/PostProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mIsZSLFallOff:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/imageprocessor/PostProcessor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mIsZSLFallOff:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/imageprocessor/PostProcessor;)Landroid/hardware/camera2/TotalCaptureResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLFallOffResult:Landroid/hardware/camera2/TotalCaptureResult;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/TotalCaptureResult;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;
    .param p1, "x1"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLFallOffResult:Landroid/hardware/camera2/TotalCaptureResult;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/camera/imageprocessor/PostProcessor;Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;
    .param p1, "x1"    # Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/camera/imageprocessor/PostProcessor;->addFallOffImage(Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/imageprocessor/PostProcessor;J)Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;
    .param p1, "x1"    # J

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/camera/imageprocessor/PostProcessor;->findFallOffImage(J)Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;
    .param p1, "x1"    # Landroid/media/Image;
    .param p2, "x2"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/camera/imageprocessor/PostProcessor;->reprocessImage(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/media/Image;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/imageprocessor/PostProcessor;
    .param p1, "x1"    # Landroid/media/Image;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/camera/imageprocessor/PostProcessor;->onRawImageToProcess(Landroid/media/Image;)V

    return-void
.end method

.method public static addExifTags([BILandroid/hardware/camera2/TotalCaptureResult;)[B
    .locals 12
    .param p0, "jpeg"    # [B
    .param p1, "orientationInDegree"    # I
    .param p2, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    const-wide/16 v10, 0x64

    const/high16 v8, 0x42c80000    # 100.0f

    .line 1004
    new-instance v1, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v1}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    .line 1005
    .local v1, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-virtual {v1}, Lcom/android/camera/exif/ExifInterface;->addMakeAndModelTag()Z

    .line 1006
    invoke-virtual {v1, p1}, Lcom/android/camera/exif/ExifInterface;->addOrientationTag(I)Z

    .line 1007
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_DATE_TIME:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1008
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    .line 1007
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/camera/exif/ExifInterface;->addDateTimeStampTag(IJLjava/util/TimeZone;)Z

    .line 1009
    if-eqz p2, :cond_5

    .line 1010
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->FLASH_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1011
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->FLASH_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/camera/exif/ExifInterface;->addFlashTag(Z)V

    .line 1013
    :cond_0
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1014
    new-instance v4, Lcom/android/camera/exif/Rational;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v3, v8

    float-to-int v3, v3

    int-to-long v6, v3

    invoke-direct {v4, v6, v7, v10, v11}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    invoke-virtual {v1, v4}, Lcom/android/camera/exif/ExifInterface;->addFocalLength(Lcom/android/camera/exif/Rational;)V

    .line 1016
    :cond_1
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1017
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/camera/exif/ExifInterface;->addWhiteBalanceMode(I)V

    .line 1019
    :cond_2
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1020
    new-instance v4, Lcom/android/camera/exif/Rational;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v3, v8

    float-to-int v3, v3

    int-to-long v6, v3

    invoke-direct {v4, v6, v7, v10, v11}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    invoke-virtual {v1, v4}, Lcom/android/camera/exif/ExifInterface;->addAperture(Lcom/android/camera/exif/Rational;)V

    .line 1022
    :cond_3
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1023
    new-instance v4, Lcom/android/camera/exif/Rational;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    invoke-virtual {v1, v4}, Lcom/android/camera/exif/ExifInterface;->addExposureTime(Lcom/android/camera/exif/Rational;)V

    .line 1025
    :cond_4
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1026
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/camera/exif/ExifInterface;->addISO(I)V

    .line 1029
    :cond_5
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1031
    .local v2, "jpegOut":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {v1, p0, v2}, Lcom/android/camera/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1035
    :goto_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 1011
    .end local v2    # "jpegOut":Ljava/io/ByteArrayOutputStream;
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1032
    .restart local v2    # "jpegOut":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v0

    .line 1033
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "PostProcessor"

    const-string v4, "Could not write EXIF"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private addFallOffImage(Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;)V
    .locals 4
    .param p1, "item"    # Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    .prologue
    .line 230
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFallOffImages:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFallOffImages:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_1

    .line 232
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFallOffImages:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    .line 234
    .local v0, "it":Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getImage()Landroid/media/Image;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 235
    invoke-virtual {p1}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getRawImage()Landroid/media/Image;

    move-result-object v1

    .line 236
    .local v1, "raw":Landroid/media/Image;
    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {v1}, Landroid/media/Image;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v1    # "raw":Landroid/media/Image;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFallOffImages:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 243
    .end local v0    # "it":Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;
    :cond_1
    return-void

    .line 239
    .restart local v0    # "it":Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private addImage(Landroid/media/Image;)V
    .locals 4
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    .line 918
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    iget-boolean v2, v2, Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;->isRunning:Z

    if-nez v2, :cond_1

    .line 1001
    :cond_0
    :goto_0
    return-void

    .line 921
    :cond_1
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    .line 922
    .local v0, "handler":Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mStatus:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    sget-object v3, Lcom/android/camera/imageprocessor/PostProcessor$STATUS;->DEINIT:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    if-ne v2, v3, :cond_2

    .line 923
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mWidth:I

    .line 924
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHeight:I

    .line 925
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    iput v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mStride:I

    .line 926
    sget-object v2, Lcom/android/camera/imageprocessor/PostProcessor$STATUS;->INIT:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    iput-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mStatus:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    .line 927
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    new-instance v3, Lcom/android/camera/imageprocessor/PostProcessor$5;

    invoke-direct {v3, p0, v0}, Lcom/android/camera/imageprocessor/PostProcessor$5;-><init>(Lcom/android/camera/imageprocessor/PostProcessor;Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;->post(Ljava/lang/Runnable;)Z

    .line 942
    :cond_2
    iget v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mCurrentNumImage:I

    if-nez v2, :cond_4

    .line 943
    sget-object v2, Lcom/android/camera/imageprocessor/PostProcessor$STATUS;->BUSY:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    iput-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mStatus:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    .line 944
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mWatchdog:Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;

    if-eqz v2, :cond_3

    .line 945
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mWatchdog:Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;

    invoke-virtual {v2}, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->startMonitor()V

    .line 947
    :cond_3
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-virtual {v2}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-virtual {v3}, Lcom/android/camera/CaptureModule;->getDisplayOrientation()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/util/CameraUtil;->getJpegRotation(II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mOrientation:I

    .line 949
    :cond_4
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mCurrentNumImage:I

    iget-object v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    invoke-interface {v3}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->getNumRequiredImage()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 952
    :cond_5
    iget v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mCurrentNumImage:I

    .line 953
    .local v1, "numImage":I
    iget v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mCurrentNumImage:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mCurrentNumImage:I

    .line 954
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    if-eqz v2, :cond_0

    .line 957
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    new-instance v3, Lcom/android/camera/imageprocessor/PostProcessor$6;

    invoke-direct {v3, p0, v0, p1, v1}, Lcom/android/camera/imageprocessor/PostProcessor$6;-><init>(Lcom/android/camera/imageprocessor/PostProcessor;Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;Landroid/media/Image;I)V

    invoke-virtual {v2, v3}, Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 1039
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mCurrentNumImage:I

    .line 1040
    return-void
.end method

.method private clearFallOffImage()V
    .locals 4

    .prologue
    .line 202
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFallOffImages:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    .line 204
    .local v0, "item":Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getImage()Landroid/media/Image;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 205
    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getRawImage()Landroid/media/Image;

    move-result-object v1

    .line 206
    .local v1, "raw":Landroid/media/Image;
    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {v1}, Landroid/media/Image;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    .end local v1    # "raw":Landroid/media/Image;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 212
    .end local v0    # "item":Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;
    :cond_1
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFallOffImages:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 213
    return-void
.end method

.method private findFallOffImage(J)Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;
    .locals 7
    .param p1, "timestamp"    # J

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "foundImage":Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFallOffImages:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    .line 218
    .local v1, "item":Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;
    invoke-virtual {v1}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getImage()Landroid/media/Image;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 219
    move-object v0, v1

    .line 223
    .end local v1    # "item":Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;
    :cond_1
    if-eqz v0, :cond_2

    .line 224
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFallOffImages:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 226
    :cond_2
    return-object v0
.end method

.method private isReadyToProcess()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 906
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 907
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    if-nez v2, :cond_0

    .line 908
    monitor-exit v1

    .line 914
    :goto_0
    return v0

    .line 910
    :cond_0
    iget v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mCurrentNumImage:I

    iget-object v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    invoke-interface {v3}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->getNumRequiredImage()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 911
    monitor-exit v1

    goto :goto_0

    .line 913
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 914
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeFlipNV21([BIIIZ)I
.end method

.method private native nativeNV21Split([BLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIII)I
.end method

.method private native nativeResizeImage([B[BIIIII)I
.end method

.method private nv21ToJpeg(Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;ILandroid/hardware/camera2/TotalCaptureResult;)[B
    .locals 11
    .param p1, "resultImage"    # Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    .param p2, "orientation"    # I
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 1195
    new-instance v6, Lcom/android/camera/imageprocessor/PostProcessor$BitmapOutputStream;

    const/16 v1, 0x400

    invoke-direct {v6, p0, v1}, Lcom/android/camera/imageprocessor/PostProcessor$BitmapOutputStream;-><init>(Lcom/android/camera/imageprocessor/PostProcessor;I)V

    .line 1196
    .local v6, "bos":Lcom/android/camera/imageprocessor/PostProcessor$BitmapOutputStream;
    new-instance v0, Landroid/graphics/YuvImage;

    iget-object v1, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/16 v2, 0x11

    iget v3, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->width:I

    iget v4, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->height:I

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v9, 0x0

    iget v10, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->stride:I

    aput v10, v5, v9

    const/4 v9, 0x1

    iget v10, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->stride:I

    aput v10, v5, v9

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 1198
    .local v0, "im":Landroid/graphics/YuvImage;
    invoke-virtual {p0}, Lcom/android/camera/imageprocessor/PostProcessor;->isSelfieMirrorOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->isBackCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1199
    iget v1, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->height:I

    iget-object v2, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    sub-int v8, v1, v2

    .line 1200
    .local v8, "t":I
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v4, v8

    invoke-direct {v1, v2, v8, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    .line 1202
    .end local v8    # "t":I
    :cond_0
    iget-object v1, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/camera/imageprocessor/PostProcessor;->getJpegQualityValue()I

    move-result v2

    invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 1203
    invoke-virtual {v6}, Lcom/android/camera/imageprocessor/PostProcessor$BitmapOutputStream;->getArray()[B

    move-result-object v7

    .line 1204
    .local v7, "bytes":[B
    invoke-static {v7, p2, p3}, Lcom/android/camera/imageprocessor/PostProcessor;->addExifTags([BILandroid/hardware/camera2/TotalCaptureResult;)[B

    move-result-object v7

    .line 1205
    return-object v7
.end method

.method private onImageToProcess(Landroid/media/Image;)V
    .locals 9
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    .line 589
    invoke-direct {p0, p1}, Lcom/android/camera/imageprocessor/PostProcessor;->addImage(Landroid/media/Image;)V

    .line 590
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/PostProcessor;->isReadyToProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-virtual {v4}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/camera/CaptureModule;->unlockFocus(I)V

    .line 592
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 593
    .local v6, "captureStartTime":J
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    invoke-virtual {v0, v6, v7}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(J)V

    .line 594
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v8

    .line 595
    .local v8, "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    if-nez v8, :cond_1

    const/4 v1, 0x0

    .line 596
    .local v1, "title":Ljava/lang/String;
    :goto_0
    if-nez v8, :cond_2

    const-wide/16 v2, -0x1

    .line 597
    .local v2, "date":J
    :goto_1
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->getMediaSavedListener()Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v4

    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/imageprocessor/PostProcessor;->processImage(Ljava/lang/String;JLcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;)V

    .line 599
    .end local v1    # "title":Ljava/lang/String;
    .end local v2    # "date":J
    .end local v6    # "captureStartTime":J
    .end local v8    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    :cond_0
    return-void

    .line 595
    .restart local v6    # "captureStartTime":J
    .restart local v8    # "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    :cond_1
    iget-object v1, v8, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    goto :goto_0

    .line 596
    .restart local v1    # "title":Ljava/lang/String;
    :cond_2
    iget-wide v2, v8, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    goto :goto_1
.end method

.method private onRawImageToProcess(Landroid/media/Image;)V
    .locals 8
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    .line 602
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 603
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    new-array v1, v6, [B

    .line 604
    .local v1, "data":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 605
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 606
    .local v2, "captureStartTime":J
    iget-object v6, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    invoke-virtual {v6, v2, v3}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(J)V

    .line 607
    iget-object v6, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    invoke-virtual {v6}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v4

    .line 608
    .local v4, "name":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    if-nez v4, :cond_0

    const/4 v5, 0x0

    .line 609
    .local v5, "title":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v6

    const-string v7, "raw"

    invoke-virtual {v6, v1, v5, v7}, Lcom/android/camera/MediaSaveService;->addRawImage([BLjava/lang/String;Ljava/lang/String;)V

    .line 610
    return-void

    .line 608
    .end local v5    # "title":Ljava/lang/String;
    :cond_0
    iget-object v5, v4, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method private processImage(Ljava/lang/String;JLcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;)V
    .locals 10
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "mediaSavedListener"    # Lcom/android/camera/MediaSaveService$OnMediaSavedListener;
    .param p5, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    iget-boolean v0, v0, Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;->isRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mStatus:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    sget-object v1, Lcom/android/camera/imageprocessor/PostProcessor$STATUS;->BUSY:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    if-eq v0, v1, :cond_1

    .line 1117
    :cond_0
    :goto_0
    return-void

    .line 1048
    :cond_1
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    .line 1049
    .local v2, "handler":Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;
    iget-object v8, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    new-instance v0, Lcom/android/camera/imageprocessor/PostProcessor$7;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/imageprocessor/PostProcessor$7;-><init>(Lcom/android/camera/imageprocessor/PostProcessor;Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;Ljava/lang/String;JLcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;)V

    invoke-virtual {v8, v0}, Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private reprocessImage(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 16
    .param p1, "image"    # Landroid/media/Image;
    .param p2, "metadata"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 502
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-virtual {v10}, Lcom/android/camera/CaptureModule;->isLongShotActive()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 503
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-virtual {v11}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/camera/CaptureModule;->checkAndPlayShutterSound(I)V

    .line 505
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/imageprocessor/PostProcessor;->lock:Ljava/lang/Object;

    monitor-enter v11

    .line 506
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/imageprocessor/PostProcessor;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/imageprocessor/PostProcessor;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/imageprocessor/PostProcessor;->mImageReader:Landroid/media/ImageReader;

    if-nez v10, :cond_2

    .line 507
    :cond_1
    const-string v10, "PostProcessor"

    const-string v12, "Reprocess request is called even before taking picture"

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->close()V

    .line 509
    monitor-exit v11

    .line 586
    :goto_0
    return-void

    .line 511
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLReprocessImageReader:Landroid/media/ImageReader;

    if-nez v10, :cond_3

    .line 512
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->close()V

    .line 513
    monitor-exit v11

    goto :goto_0

    .line 585
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 515
    :cond_3
    :try_start_1
    sget-boolean v10, Lcom/android/camera/imageprocessor/PostProcessor;->DEBUG_ZSL:Z

    if-eqz v10, :cond_4

    const-string v10, "PostProcessor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "reprocess Image request "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 516
    :cond_4
    const/4 v2, 0x0

    .line 518
    .local v2, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/imageprocessor/PostProcessor;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/hardware/camera2/CameraDevice;->createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    .line 519
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    .line 520
    invoke-virtual {v12}, Lcom/android/camera/CaptureModule;->getMainCameraId()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-virtual {v13}, Lcom/android/camera/CaptureModule;->getDisplayOrientation()I

    move-result v13

    invoke-static {v12, v13}, Lcom/android/camera/util/CameraUtil;->getJpegRotation(II)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 519
    invoke-virtual {v2, v10, v12}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 521
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-virtual {v12}, Lcom/android/camera/CaptureModule;->getThumbSize()Landroid/util/Size;

    move-result-object v12

    invoke-virtual {v2, v10, v12}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 522
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v12, 0x50

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v2, v10, v12}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 523
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v12, 0x2

    .line 524
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 523
    invoke-virtual {v2, v10, v12}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 525
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v12, 0x2

    .line 526
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 525
    invoke-virtual {v2, v10, v12}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 527
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v12, 0x2

    .line 528
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 527
    invoke-virtual {v2, v10, v12}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 529
    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/android/camera/util/VendorTagUtil;->setCdsMode(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Integer;)V

    .line 530
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/android/camera/util/VendorTagUtil;->setJpegCropEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Byte;)V

    .line 531
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 532
    .local v3, "cropRect":Landroid/graphics/Rect;
    if-eqz v3, :cond_5

    .line 533
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 534
    :cond_5
    new-instance v3, Landroid/graphics/Rect;

    .end local v3    # "cropRect":Landroid/graphics/Rect;
    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getWidth()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getHeight()I

    move-result v14

    invoke-direct {v3, v10, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 537
    .restart local v3    # "cropRect":Landroid/graphics/Rect;
    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLReprocessImageReader:Landroid/media/ImageReader;

    invoke-virtual {v10}, Landroid/media/ImageReader;->getWidth()I

    move-result v9

    .line 538
    .local v9, "targetWidth":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLReprocessImageReader:Landroid/media/ImageReader;

    invoke-virtual {v10}, Landroid/media/ImageReader;->getHeight()I

    move-result v7

    .line 539
    .local v7, "targetHeight":I
    int-to-float v10, v9

    int-to-float v12, v7

    div-float v8, v10, v12

    .line 540
    .local v8, "targetRatio":F
    invoke-static {v3, v8}, Lcom/android/camera/util/CameraUtil;->getFinalCropRect(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v3

    .line 542
    const/4 v10, 0x4

    new-array v10, v10, [I

    const/4 v12, 0x0

    iget v13, v3, Landroid/graphics/Rect;->left:I

    aput v13, v10, v12

    const/4 v12, 0x1

    iget v13, v3, Landroid/graphics/Rect;->top:I

    aput v13, v10, v12

    const/4 v12, 0x2

    .line 543
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v13

    aput v13, v10, v12

    const/4 v12, 0x3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v13

    aput v13, v10, v12

    .line 542
    invoke-static {v2, v10}, Lcom/android/camera/util/VendorTagUtil;->setJpegCropRect(Landroid/hardware/camera2/CaptureRequest$Builder;[I)V

    .line 544
    const/4 v10, 0x4

    new-array v10, v10, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v10, v12

    const/4 v12, 0x1

    const/4 v13, 0x0

    aput v13, v10, v12

    const/4 v12, 0x2

    aput v9, v10, v12

    const/4 v12, 0x3

    aput v7, v10, v12

    invoke-static {v2, v10}, Lcom/android/camera/util/VendorTagUtil;->setJpegRoiRect(Landroid/hardware/camera2/CaptureRequest$Builder;[I)V

    .line 547
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-virtual {v10}, Lcom/android/camera/CaptureModule;->getLocationManager()Lcom/android/camera/LocationManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v5

    .line 548
    .local v5, "location":Landroid/location/Location;
    if-eqz v5, :cond_7

    .line 549
    new-instance v6, Landroid/location/Location;

    invoke-direct {v6, v5}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 550
    .end local v5    # "location":Landroid/location/Location;
    .local v6, "location":Landroid/location/Location;
    const-string v10, "PostProcessor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sendReprocessRequest gps: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    invoke-virtual {v6, v12, v13}, Landroid/location/Location;->setTime(J)V

    .line 553
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v10, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    move-object v5, v6

    .line 556
    .end local v6    # "location":Landroid/location/Location;
    .restart local v5    # "location":Landroid/location/Location;
    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLReprocessImageReader:Landroid/media/ImageReader;

    invoke-virtual {v10}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 558
    :try_start_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/imageprocessor/PostProcessor;->mImageWriter:Landroid/media/ImageWriter;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 562
    :goto_1
    :try_start_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/imageprocessor/PostProcessor;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v12

    new-instance v13, Lcom/android/camera/imageprocessor/PostProcessor$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/camera/imageprocessor/PostProcessor$2;-><init>(Lcom/android/camera/imageprocessor/PostProcessor;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    invoke-virtual {v10, v12, v13, v14}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 585
    .end local v3    # "cropRect":Landroid/graphics/Rect;
    .end local v5    # "location":Landroid/location/Location;
    .end local v7    # "targetHeight":I
    .end local v8    # "targetRatio":F
    .end local v9    # "targetWidth":I
    :goto_2
    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 559
    .restart local v3    # "cropRect":Landroid/graphics/Rect;
    .restart local v5    # "location":Landroid/location/Location;
    .restart local v7    # "targetHeight":I
    .restart local v8    # "targetRatio":F
    .restart local v9    # "targetWidth":I
    :catch_0
    move-exception v4

    .line 560
    .local v4, "e":Ljava/lang/IllegalStateException;
    :try_start_6
    const-string v10, "PostProcessor"

    const-string v12, "Queueing more than it can have"

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 583
    .end local v3    # "cropRect":Landroid/graphics/Rect;
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    .end local v5    # "location":Landroid/location/Location;
    .end local v7    # "targetHeight":I
    .end local v8    # "targetRatio":F
    .end local v9    # "targetWidth":I
    :catch_1
    move-exception v10

    goto :goto_2
.end method

.method private resizeImage(Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;Landroid/util/Size;)Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    .locals 10
    .param p1, "oldImage"    # Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    .param p2, "newSize"    # Landroid/util/Size;

    .prologue
    const/4 v5, 0x0

    .line 1138
    new-instance v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;

    .line 1139
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    .line 1141
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1142
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;-><init>(Ljava/nio/ByteBuffer;Landroid/graphics/Rect;III)V

    .line 1143
    .local v0, "newImage":Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;
    iget-object v1, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v1, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iget v4, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->width:I

    iget v5, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->height:I

    iget v6, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->stride:I

    .line 1144
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v8

    move-object v1, p0

    .line 1143
    invoke-direct/range {v1 .. v8}, Lcom/android/camera/imageprocessor/PostProcessor;->nativeResizeImage([B[BIIIII)I

    move-result v9

    .line 1145
    .local v9, "ratio":I
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    div-int/2addr v2, v9

    iget-object v3, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    div-int/2addr v3, v9

    iget-object v4, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    div-int/2addr v4, v9

    iget-object v5, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    div-int/2addr v5, v9

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    .line 1147
    iget v1, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->width:I

    iget-object v2, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1148
    iget-object v1, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    iget v2, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->width:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1150
    :cond_0
    iget v1, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->height:I

    iget-object v2, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1151
    iget-object v1, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    iget v2, v0, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->height:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1153
    :cond_1
    const-string v1, "PostProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Image is resized by SW with the ratio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " oldRoi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/camera/imageprocessor/filter/ImageFilter$ResultImage;->outRoi:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    return-object v0
.end method

.method private startBackgroundThread()V
    .locals 2

    .prologue
    .line 742
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PostProcessorThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandlerThread:Landroid/os/HandlerThread;

    .line 743
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 744
    new-instance v0, Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;-><init>(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    .line 746
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ZSLHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLHandlerThread:Landroid/os/HandlerThread;

    .line 747
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 748
    new-instance v0, Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;-><init>(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLHandler:Landroid/os/Handler;

    .line 750
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SavingHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mSavingHandlerThread:Landroid/os/HandlerThread;

    .line 751
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mSavingHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 752
    new-instance v0, Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mSavingHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;-><init>(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mSavingHander:Landroid/os/Handler;

    .line 754
    new-instance v0, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;

    invoke-direct {v0, p0}, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;-><init>(Lcom/android/camera/imageprocessor/PostProcessor;)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mWatchdog:Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;

    .line 755
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mWatchdog:Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->start()V

    .line 756
    return-void
.end method

.method private stopBackgroundThread()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 812
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 815
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 818
    :goto_0
    iput-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandlerThread:Landroid/os/HandlerThread;

    .line 819
    iput-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    .line 821
    :cond_0
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 822
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 823
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 825
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 828
    :goto_1
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLHandlerThread:Landroid/os/HandlerThread;

    .line 829
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLHandler:Landroid/os/Handler;

    .line 831
    :cond_1
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mSavingHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 832
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mSavingHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 834
    :try_start_4
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mSavingHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 837
    :goto_2
    const/4 v0, 0x0

    :try_start_5
    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mSavingHandlerThread:Landroid/os/HandlerThread;

    .line 838
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mSavingHander:Landroid/os/Handler;

    .line 840
    :cond_2
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mWatchdog:Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;

    if-eqz v0, :cond_3

    .line 841
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mWatchdog:Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;->kill()V

    .line 842
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mWatchdog:Lcom/android/camera/imageprocessor/PostProcessor$WatchdogThread;

    .line 844
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/PostProcessor;->clear()V

    .line 845
    monitor-exit v1

    .line 846
    return-void

    .line 845
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 835
    :catch_0
    move-exception v0

    goto :goto_2

    .line 826
    :catch_1
    move-exception v0

    goto :goto_1

    .line 816
    :catch_2
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object v0
.end method

.method public getFilterIndex()I
    .locals 1

    .prologue
    .line 711
    iget v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilterIndex:I

    return v0
.end method

.method public getImageHandler()Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mImageHandlerTask:Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;

    return-object v0
.end method

.method public getJpegQualityValue()I
    .locals 4

    .prologue
    .line 1209
    const/16 v0, 0x37

    .line 1210
    .local v0, "quality":I
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v2

    const-string v3, "pref_camera2_jpegquality_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1211
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v2

    const-string v3, "pref_camera2_jpegquality_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1212
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->getQualityNumber(Ljava/lang/String;)I

    .line 1214
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public getMaxRequiredImageNum()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mMaxRequiredImageNum:I

    return v0
.end method

.method public getZSLReprocessImageReader()Landroid/media/ImageReader;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLReprocessImageReader:Landroid/media/ImageReader;

    return-object v0
.end method

.method public isFilterOn()Z
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    if-eqz v0, :cond_0

    .line 663
    const/4 v0, 0x1

    .line 665
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isItBusy()Z
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mStatus:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    sget-object v1, Lcom/android/camera/imageprocessor/PostProcessor$STATUS;->BUSY:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    if-ne v0, v1, :cond_0

    .line 627
    const/4 v0, 0x1

    .line 628
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isManualMode()Z
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    invoke-interface {v0}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->isManualMode()Z

    move-result v0

    return v0
.end method

.method public isSelfieMirrorOn()Z
    .locals 2

    .prologue
    .line 669
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 670
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v0

    const-string v1, "pref_camera2_selfiemirror_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 671
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v0

    const-string v1, "pref_camera2_selfiemirror_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    const/4 v0, 0x1

    .line 674
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZSLEnabled()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mUseZSL:Z

    return v0
.end method

.method public manualCapture(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession;Landroid/os/Handler;)V
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "captureSession"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    new-instance v1, Lcom/android/camera/imageprocessor/PostProcessor$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/camera/imageprocessor/PostProcessor$3;-><init>(Lcom/android/camera/imageprocessor/PostProcessor;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;->post(Ljava/lang/Runnable;)Z

    .line 659
    return-void
.end method

.method public onClose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 715
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 716
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;->setInActive()V

    .line 719
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 720
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/PostProcessor;->stopBackgroundThread()V

    .line 722
    invoke-virtual {p0, v3}, Lcom/android/camera/imageprocessor/PostProcessor;->setFilter(I)Z

    .line 723
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLQueue:Lcom/android/camera/imageprocessor/ZSLQueue;

    if-eqz v0, :cond_1

    .line 724
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLQueue:Lcom/android/camera/imageprocessor/ZSLQueue;

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/ZSLQueue;->onClose()V

    .line 725
    iput-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLQueue:Lcom/android/camera/imageprocessor/ZSLQueue;

    .line 727
    :cond_1
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mImageWriter:Landroid/media/ImageWriter;

    if-eqz v0, :cond_2

    .line 728
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mImageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v0}, Landroid/media/ImageWriter;->close()V

    .line 729
    iput-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mImageWriter:Landroid/media/ImageWriter;

    .line 731
    :cond_2
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLReprocessImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_3

    .line 732
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLReprocessImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 733
    iput-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLReprocessImageReader:Landroid/media/ImageReader;

    .line 735
    :cond_3
    iput-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 736
    iput-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 737
    iput-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mImageReader:Landroid/media/ImageReader;

    .line 738
    iput v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mPendingContinuousRequestCount:I

    .line 739
    return-void

    .line 719
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onContinuousZSLImage(Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;Z)Z
    .locals 3
    .param p1, "imageItem"    # Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;
    .param p2, "isLongShotRequest"    # Z

    .prologue
    const/4 v0, 0x1

    .line 477
    if-eqz p2, :cond_2

    .line 478
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mLatestResultForLongShot:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v1, :cond_3

    .line 479
    invoke-virtual {p1}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getImage()Landroid/media/Image;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mLatestResultForLongShot:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-direct {p0, v1, v2}, Lcom/android/camera/imageprocessor/PostProcessor;->reprocessImage(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 480
    invoke-virtual {p1}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getRawImage()Landroid/media/Image;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 481
    invoke-virtual {p1}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getRawImage()Landroid/media/Image;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/imageprocessor/PostProcessor;->onRawImageToProcess(Landroid/media/Image;)V

    .line 483
    :cond_0
    iget v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mPendingContinuousRequestCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mPendingContinuousRequestCount:I

    .line 494
    :cond_1
    :goto_0
    return v0

    .line 487
    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getImage()Landroid/media/Image;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getMetadata()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/imageprocessor/PostProcessor;->reprocessImage(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 488
    invoke-virtual {p1}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getRawImage()Landroid/media/Image;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 489
    invoke-virtual {p1}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getRawImage()Landroid/media/Image;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/imageprocessor/PostProcessor;->onRawImageToProcess(Landroid/media/Image;)V

    goto :goto_0

    .line 494
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onImageReaderReady(Landroid/media/ImageReader;Landroid/util/Size;Landroid/util/Size;)V
    .locals 4
    .param p1, "imageReader"    # Landroid/media/ImageReader;
    .param p2, "maxSize"    # Landroid/util/Size;
    .param p3, "pictureSize"    # Landroid/util/Size;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mImageReader:Landroid/media/ImageReader;

    .line 436
    iget-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mUseZSL:Z

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v1

    const/16 v2, 0x100

    iget v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mMaxRequiredImageNum:I

    invoke-static {v0, v1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLReprocessImageReader:Landroid/media/ImageReader;

    .line 438
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLReprocessImageReader:Landroid/media/ImageReader;

    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->processedImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mHandler:Lcom/android/camera/imageprocessor/PostProcessor$ProcessorHandler;

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 440
    :cond_0
    return-void
.end method

.method public onMetaAvailable(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1
    .param p1, "metadata"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mUseZSL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLQueue:Lcom/android/camera/imageprocessor/ZSLQueue;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLQueue:Lcom/android/camera/imageprocessor/ZSLQueue;

    invoke-virtual {v0, p1}, Lcom/android/camera/imageprocessor/ZSLQueue;->add(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 385
    :cond_0
    iput-object p1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mLatestResultForLongShot:Landroid/hardware/camera2/TotalCaptureResult;

    .line 386
    return-void
.end method

.method public onOpen(IZZZZZZ)V
    .locals 5
    .param p1, "postFilterId"    # I
    .param p2, "isFlashModeOn"    # Z
    .param p3, "isTrackingFocusOn"    # Z
    .param p4, "isMakeupOn"    # Z
    .param p5, "isSelfieMirrorOn"    # Z
    .param p6, "isSaveRaw"    # Z
    .param p7, "isSupportedQcfa"    # Z

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x0

    .line 680
    new-instance v0, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;

    invoke-direct {v0, p0}, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;-><init>(Lcom/android/camera/imageprocessor/PostProcessor;)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mImageHandlerTask:Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;

    .line 681
    iput-boolean p6, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mSaveRaw:Z

    .line 682
    invoke-virtual {p0, p1}, Lcom/android/camera/imageprocessor/PostProcessor;->setFilter(I)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    if-nez p5, :cond_0

    .line 683
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCameraZSLDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 684
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SettingsManager;->isZSLInAppEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "110"

    .line 686
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v1

    const-string v2, "pref_camera2_scenemode_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 685
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "enable"

    .line 688
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v1

    const-string v2, "pref_camera2_auto_hdr_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 687
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 689
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SettingsManager;->isCamera2HDRSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "18"

    .line 690
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v1

    const-string v2, "pref_camera2_scenemode_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    .line 692
    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->getCameraMode()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p7, :cond_3

    .line 694
    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mUseZSL:Z

    .line 698
    :goto_0
    const-string v0, "PostProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZSL is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mUseZSL:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    invoke-direct {p0}, Lcom/android/camera/imageprocessor/PostProcessor;->startBackgroundThread()V

    .line 700
    iget-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mUseZSL:Z

    if-eqz v0, :cond_1

    .line 701
    new-instance v0, Lcom/android/camera/imageprocessor/ZSLQueue;

    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-direct {v0, v1}, Lcom/android/camera/imageprocessor/ZSLQueue;-><init>(Lcom/android/camera/CaptureModule;)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLQueue:Lcom/android/camera/imageprocessor/ZSLQueue;

    .line 703
    :cond_1
    iput v4, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mMaxRequiredImageNum:I

    .line 704
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->isLongShotSettingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 705
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getLongshotShotLimit()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mMaxRequiredImageNum:I

    .line 707
    :cond_2
    iput v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mPendingContinuousRequestCount:I

    .line 708
    return-void

    .line 696
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mUseZSL:Z

    goto :goto_0
.end method

.method public onSessionConfigured(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "captureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 428
    iput-object p2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 429
    iget-boolean v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mUseZSL:Z

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {p2}, Landroid/hardware/camera2/CameraCaptureSession;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mMaxRequiredImageNum:I

    invoke-static {v0, v1}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mImageWriter:Landroid/media/ImageWriter;

    .line 432
    :cond_0
    return-void
.end method

.method public onStartCapturing()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mTotalCaptureResultList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 160
    return-void
.end method

.method public setFilter(I)Z
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 849
    if-ltz p1, :cond_0

    const/16 v2, 0x8

    if-lt p1, v2, :cond_1

    .line 850
    :cond_0
    const-string v2, "PostProcessor"

    const-string v3, "Invalid scene filter ID"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :goto_0
    return v1

    .line 853
    :cond_1
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 854
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    if-eqz v3, :cond_2

    .line 855
    iget-object v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    invoke-interface {v3}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->deinit()V

    .line 857
    :cond_2
    sget-object v3, Lcom/android/camera/imageprocessor/PostProcessor$STATUS;->DEINIT:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    iput-object v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mStatus:Lcom/android/camera/imageprocessor/PostProcessor$STATUS;

    .line 858
    packed-switch p1, :pswitch_data_0

    .line 884
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    invoke-interface {v2}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->isSupported()Z

    move-result v2

    if-nez v2, :cond_3

    .line 887
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    invoke-interface {v2}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->getStringName()Ljava/lang/String;

    move-result-object v0

    .line 888
    .local v0, "filterName":Ljava/lang/String;
    iput-object v6, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    .line 889
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v3, Lcom/android/camera/imageprocessor/PostProcessor$4;

    invoke-direct {v3, p0, v0}, Lcom/android/camera/imageprocessor/PostProcessor$4;-><init>(Lcom/android/camera/imageprocessor/PostProcessor;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 896
    .end local v0    # "filterName":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    if-nez v2, :cond_4

    .line 897
    iput v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilterIndex:I

    goto :goto_0

    .line 860
    :pswitch_0
    const/4 v3, 0x0

    :try_start_1
    iput-object v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    goto :goto_1

    .line 884
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 863
    :pswitch_1
    :try_start_2
    new-instance v3, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;

    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-direct {v3, v4}, Lcom/android/camera/imageprocessor/filter/OptizoomFilter;-><init>(Lcom/android/camera/CaptureModule;)V

    iput-object v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    goto :goto_1

    .line 866
    :pswitch_2
    new-instance v3, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;

    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-direct {v3, v4}, Lcom/android/camera/imageprocessor/filter/SharpshooterFilter;-><init>(Lcom/android/camera/CaptureModule;)V

    iput-object v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    goto :goto_1

    .line 869
    :pswitch_3
    new-instance v3, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;

    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    iget-object v5, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v3, v4, v5, p0}, Lcom/android/camera/imageprocessor/filter/UbifocusFilter;-><init>(Lcom/android/camera/CaptureModule;Lcom/android/camera/CameraActivity;Lcom/android/camera/imageprocessor/PostProcessor;)V

    iput-object v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    goto :goto_1

    .line 872
    :pswitch_4
    new-instance v3, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;

    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-direct {v3, v4}, Lcom/android/camera/imageprocessor/filter/StillmoreFilter;-><init>(Lcom/android/camera/CaptureModule;)V

    iput-object v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    goto :goto_1

    .line 875
    :pswitch_5
    new-instance v3, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;

    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-direct {v3, v4}, Lcom/android/camera/imageprocessor/filter/BlurbusterFilter;-><init>(Lcom/android/camera/CaptureModule;)V

    iput-object v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    goto :goto_1

    .line 878
    :pswitch_6
    new-instance v3, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;

    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    iget-object v5, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v3, v4, v5, p0}, Lcom/android/camera/imageprocessor/filter/BestpictureFilter;-><init>(Lcom/android/camera/CaptureModule;Lcom/android/camera/CameraActivity;Lcom/android/camera/imageprocessor/PostProcessor;)V

    iput-object v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    goto :goto_1

    .line 881
    :pswitch_7
    new-instance v3, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;

    iget-object v4, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-direct {v3, v4}, Lcom/android/camera/imageprocessor/filter/ChromaflashFilter;-><init>(Lcom/android/camera/CaptureModule;)V

    iput-object v3, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 900
    :cond_4
    iput p1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilterIndex:I

    .line 901
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    invoke-interface {v1}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->getNumRequiredImage()I

    move-result v1

    new-array v1, v1, [Landroid/media/Image;

    iput-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mImages:[Landroid/media/Image;

    .line 902
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 858
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public setRawImageReader(Landroid/media/ImageReader;)V
    .locals 1
    .param p1, "rawImageReader"    # Landroid/media/ImageReader;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mImageHandlerTask:Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;

    invoke-virtual {v0, p1}, Lcom/android/camera/imageprocessor/PostProcessor$ImageHandlerTask;->setRawImageReader(Landroid/media/ImageReader;)V

    .line 379
    return-void
.end method

.method public setRequiredImages(Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/util/List;
    .locals 2
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
    .line 632
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    if-nez v1, :cond_0

    .line 633
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 634
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mFilter:Lcom/android/camera/imageprocessor/filter/ImageFilter;

    invoke-interface {v1, p1}, Lcom/android/camera/imageprocessor/filter/ImageFilter;->setRequiredImages(Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public stopLongShot()V
    .locals 1

    .prologue
    .line 498
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mPendingContinuousRequestCount:I

    .line 499
    return-void
.end method

.method public takeZSLPicture()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 443
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/camera/CaptureModule;->setJpegImageData([B)V

    .line 444
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mZSLQueue:Lcom/android/camera/imageprocessor/ZSLQueue;

    invoke-virtual {v1}, Lcom/android/camera/imageprocessor/ZSLQueue;->tryToGetMatchingItem()Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;

    move-result-object v0

    .line 445
    .local v0, "imageItem":Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    .line 446
    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 447
    :cond_0
    sget-boolean v1, Lcom/android/camera/imageprocessor/PostProcessor;->DEBUG_ZSL:Z

    if-eqz v1, :cond_1

    const-string v1, "PostProcessor"

    const-string v3, "Flash required image"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_1
    const/4 v0, 0x0

    .line 450
    :cond_2
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->isSelfieFlash()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 451
    const/4 v0, 0x0

    .line 453
    :cond_3
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->isLongShotActive()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 454
    const/4 v0, 0x0

    .line 456
    :cond_4
    if-eqz v0, :cond_7

    .line 457
    sget-boolean v1, Lcom/android/camera/imageprocessor/PostProcessor;->DEBUG_ZSL:Z

    if-eqz v1, :cond_5

    const-string v1, "PostProcessor"

    const-string v3, "Got the item from the queue"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_5
    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getImage()Landroid/media/Image;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getMetadata()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/camera/imageprocessor/PostProcessor;->reprocessImage(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 459
    iget-boolean v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mSaveRaw:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getRawImage()Landroid/media/Image;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 460
    invoke-virtual {v0}, Lcom/android/camera/imageprocessor/ZSLQueue$ImageItem;->getRawImage()Landroid/media/Image;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/imageprocessor/PostProcessor;->onRawImageToProcess(Landroid/media/Image;)V

    :cond_6
    move v1, v2

    .line 472
    :goto_0
    return v1

    .line 464
    :cond_7
    sget-boolean v1, Lcom/android/camera/imageprocessor/PostProcessor;->DEBUG_ZSL:Z

    if-eqz v1, :cond_8

    const-string v1, "PostProcessor"

    const-string v3, "No good item in queue, register the request for the future"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_8
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mController:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->isLongShotActive()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 466
    sget-boolean v1, Lcom/android/camera/imageprocessor/PostProcessor;->DEBUG_ZSL:Z

    if-eqz v1, :cond_9

    const-string v1, "PostProcessor"

    const-string v3, "Long shot active in ZSL"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_9
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getLongshotShotLimit()I

    move-result v1

    iput v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mPendingContinuousRequestCount:I

    move v1, v2

    .line 468
    goto :goto_0

    .line 470
    :cond_a
    iput-boolean v2, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mIsZSLFallOff:Z

    .line 472
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public waitForMetaData(I)Landroid/hardware/camera2/TotalCaptureResult;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 1120
    const/16 v0, 0xa

    .line 1121
    .local v0, "timeout":I
    :goto_0
    if-lez v0, :cond_1

    .line 1122
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mTotalCaptureResultList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 1123
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mTotalCaptureResultList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/TotalCaptureResult;

    .line 1134
    :goto_1
    return-object v1

    .line 1126
    :cond_0
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1129
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1131
    :cond_1
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mTotalCaptureResultList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 1132
    const/4 v1, 0x0

    goto :goto_1

    .line 1134
    :cond_2
    iget-object v1, p0, Lcom/android/camera/imageprocessor/PostProcessor;->mTotalCaptureResultList:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/TotalCaptureResult;

    goto :goto_1

    .line 1127
    :catch_0
    move-exception v1

    goto :goto_2
.end method
