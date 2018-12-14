.class public Lcom/android/camera/ui/PanoCaptureProcessView;
.super Landroid/view/View;
.source "PanoCaptureProcessView.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/PanoCaptureProcessView$BitmapTask;,
        Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;,
        Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;,
        Lcom/android/camera/ui/PanoCaptureProcessView$Picture;,
        Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static DECISION_MARGIN:I = 0x0

.field private static final DEG_INIT_VALUE:I = 0x16d

.field private static final DIRECTION_GOT_LOST:I = -0x1

.field private static final DIRECTION_LEFTRIGHT:I = 0x0

.field private static final DIRECTION_UPDOWN:I = 0x1

.field public static MAX_PANO_FRAME:I = 0x0

.field private static final OBJ_DEPTH:I = 0x320

.field private static TAG:Ljava/lang/String;

.field public static mFinalPictureHeight:I

.field private static mFinalPictureRatioToCamera:F

.field public static mFinalPictureWidth:I

.field private static mIsSupported:Z

.field private static mPanoPreviewRatioToCamera:F

.field public static mPreviewThumbHeight:I

.field public static mPreviewThumbWidth:I


# instance fields
.field private mAargbBuffer:[I

.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mBitmapStream:Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;

.field private mBitmapStreamLock:Ljava/lang/Object;

.field private mCenterRectPaint:Landroid/graphics/Paint;

.field private mCompleteSentence:Ljava/lang/String;

.field private mCompleteSentencePaint:Landroid/graphics/Paint;

.field private mController:Lcom/android/camera/PanoCaptureModule;

.field private mCurrDegX:F

.field private mCurrDegY:F

.field private mDataBuffer:[B

.field private mDir:I

.field private mFinalDoneLength:I

.field private mGuidePicture:Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

.field private mHandler:Landroid/os/Handler;

.field private mIntroSentence:Ljava/lang/String;

.field private mIsFirstBlend:Z

.field private mIsFrameProcessing:Z

.field private mOldRots:[F

.field private mOrientation:I

.field private mOrients:[F

.field private mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

.field private mPendingOrientation:I

.field private mPreviewBitmapLock:Ljava/lang/Object;

.field private mPreviewPicture:Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressSentence:Ljava/lang/String;

.field private mQueueProcessor:Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;

.field private mR:[F

.field private mRR:[F

.field private mRotationSensor:Landroid/hardware/Sensor;

.field private mRots:[F

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShouldFinish:Z

.field private mTempBitmap:Landroid/graphics/Bitmap;

.field private mTempOrietnation:I

.field private matrix:Landroid/graphics/Matrix;

.field private rectF:Landroid/graphics/RectF;

.field private tmpBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 109
    const/4 v1, 0x6

    sput v1, Lcom/android/camera/ui/PanoCaptureProcessView;->MAX_PANO_FRAME:I

    .line 110
    const-string v1, "PanoramaCapture"

    sput-object v1, Lcom/android/camera/ui/PanoCaptureProcessView;->TAG:Ljava/lang/String;

    .line 122
    sput-boolean v3, Lcom/android/camera/ui/PanoCaptureProcessView;->mIsSupported:Z

    .line 1117
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/android/camera/ui/PanoCaptureProcessView;->mIsSupported:Z

    .line 1118
    const-string v1, "jni_panorama"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1123
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 1119
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 1120
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/android/camera/ui/PanoCaptureProcessView;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    sput-boolean v3, Lcom/android/camera/ui/PanoCaptureProcessView;->mIsSupported:Z

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v3, 0x9

    const/4 v2, 0x5

    const v0, 0x43b68000    # 365.0f

    const/4 v1, 0x0

    .line 374
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    iput v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCurrDegX:F

    .line 82
    iput v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCurrDegY:F

    .line 84
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->rectF:Landroid/graphics/RectF;

    .line 87
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->matrix:Landroid/graphics/Matrix;

    .line 90
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mRots:[F

    .line 91
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOldRots:[F

    .line 92
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mR:[F

    .line 93
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mRR:[F

    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOrients:[F

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCenterRectPaint:Landroid/graphics/Paint;

    .line 118
    iput v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mDir:I

    .line 119
    iput-boolean v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mShouldFinish:Z

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mBitmapStreamLock:Ljava/lang/Object;

    .line 125
    iput-boolean v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mIsFrameProcessing:Z

    .line 140
    sget-object v0, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->INACTIVE:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    .line 141
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewBitmapLock:Ljava/lang/Object;

    .line 146
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCompleteSentence:Ljava/lang/String;

    .line 147
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mProgressSentence:Ljava/lang/String;

    .line 148
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mIntroSentence:Ljava/lang/String;

    .line 149
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCompleteSentencePaint:Landroid/graphics/Paint;

    .line 375
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/PanoCaptureProcessView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .prologue
    .line 79
    iget v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCurrDegX:F

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/PanoCaptureProcessView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .prologue
    .line 79
    iget v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCurrDegY:F

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/ui/PanoCaptureProcessView;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/PanoCaptureProcessView;->stopPano(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/camera/ui/PanoCaptureProcessView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300()F
    .locals 1

    .prologue
    .line 79
    sget v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mFinalPictureRatioToCamera:F

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/ui/PanoCaptureProcessView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # Landroid/graphics/Bitmap;
    .param p3, "x3"    # F

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/PanoCaptureProcessView;->rotateAndScale(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/ui/PanoCaptureProcessView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/camera/ui/PanoCaptureProcessView;->waitForQueueDone()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/ui/PanoCaptureProcessView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/camera/ui/PanoCaptureProcessView;->callNativeGetResultSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/camera/ui/PanoCaptureProcessView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/camera/ui/PanoCaptureProcessView;->callNativeCancelPanorama()I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/camera/ui/PanoCaptureProcessView;[BI)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/PanoCaptureProcessView;->callNativeCompletePanorama([BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/camera/ui/PanoCaptureProcessView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .prologue
    .line 79
    iget v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mDir:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/camera/ui/PanoCaptureProcessView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mDir:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/PanoCaptureModule;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mController:Lcom/android/camera/PanoCaptureModule;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;)Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mQueueProcessor:Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/ui/PanoCaptureProcessView;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewBitmapLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$Picture;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mGuidePicture:Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/camera/ui/PanoCaptureProcessView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/camera/ui/PanoCaptureProcessView;->callNativeInstanceRelease()I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/camera/ui/PanoCaptureProcessView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .prologue
    .line 79
    iget v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPendingOrientation:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/camera/ui/PanoCaptureProcessView;IIIII)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 79
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/ui/PanoCaptureProcessView;->callNativeInstanceInit(IIIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mTempBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/camera/ui/PanoCaptureProcessView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mTempBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/camera/ui/PanoCaptureProcessView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .prologue
    .line 79
    iget v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mTempOrietnation:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/camera/ui/PanoCaptureProcessView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mTempOrietnation:I

    return p1
.end method

.method static synthetic access$2900()F
    .locals 1

    .prologue
    .line 79
    sget v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoPreviewRatioToCamera:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewPicture:Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/ui/PanoCaptureProcessView;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/camera/ui/PanoCaptureProcessView;->bitmapToDataNV21(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$Picture;)Lcom/android/camera/ui/PanoCaptureProcessView$Picture;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewPicture:Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/camera/ui/PanoCaptureProcessView;[Z[I[I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # [Z
    .param p2, "x2"    # [I
    .param p3, "x3"    # [I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/PanoCaptureProcessView;->processPreviewFrame([Z[I[I)V

    return-void
.end method

.method static synthetic access$3202(Lcom/android/camera/ui/PanoCaptureProcessView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mProgressSentence:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3300()I
    .locals 1

    .prologue
    .line 79
    sget v0, Lcom/android/camera/ui/PanoCaptureProcessView;->DECISION_MARGIN:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/camera/ui/PanoCaptureProcessView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .prologue
    .line 79
    iget v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mFinalDoneLength:I

    return v0
.end method

.method static synthetic access$3402(Lcom/android/camera/ui/PanoCaptureProcessView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mFinalDoneLength:I

    return p1
.end method

.method static synthetic access$3500(Lcom/android/camera/ui/PanoCaptureProcessView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mIsFirstBlend:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/camera/ui/PanoCaptureProcessView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mIsFirstBlend:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$Picture;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # Lcom/android/camera/ui/PanoCaptureProcessView$Picture;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/PanoCaptureProcessView;->blendToPreviewPicture(Lcom/android/camera/ui/PanoCaptureProcessView$Picture;ZZ)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/camera/ui/PanoCaptureProcessView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/camera/ui/PanoCaptureProcessView;->isAllTaken()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3802(Lcom/android/camera/ui/PanoCaptureProcessView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mIsFrameProcessing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/ui/PanoCaptureProcessView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->rectF:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/PanoCaptureProcessView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .prologue
    .line 79
    iget v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOrientation:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/ui/PanoCaptureProcessView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOrientation:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/ui/PanoCaptureProcessView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mShouldFinish:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/camera/ui/PanoCaptureProcessView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mShouldFinish:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/ui/PanoCaptureProcessView;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mBitmapStreamLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/PanoCaptureProcessView;)Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mBitmapStream:Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/camera/ui/PanoCaptureProcessView;Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;)Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mBitmapStream:Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/camera/ui/PanoCaptureProcessView;[BIIIII)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PanoCaptureProcessView;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I

    .prologue
    .line 79
    invoke-direct/range {p0 .. p6}, Lcom/android/camera/ui/PanoCaptureProcessView;->callNativeProcessKeyFrame([BIIIII)I

    move-result v0

    return v0
.end method

.method private bitmapToDataNV21(Landroid/graphics/Bitmap;)V
    .locals 23
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 433
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 434
    .local v4, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 435
    .local v8, "h":I
    const/16 v21, 0x0

    .line 436
    .local v21, "y":I
    mul-int v19, v4, v8

    .line 438
    .local v19, "u":I
    const/16 v17, 0x0

    .line 440
    .local v17, "index":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mAargbBuffer:[I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 441
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_0
    move/from16 v0, v18

    if-ge v0, v8, :cond_8

    .line 442
    const/16 v16, 0x0

    .local v16, "i":I
    move/from16 v20, v19

    .end local v19    # "u":I
    .local v20, "u":I
    move/from16 v22, v21

    .end local v21    # "y":I
    .local v22, "y":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v4, :cond_7

    .line 444
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mAargbBuffer:[I

    aget v1, v1, v17

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    shr-int/lit8 v15, v1, 0x18

    .line 445
    .local v15, "a":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mAargbBuffer:[I

    aget v1, v1, v17

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    shr-int/lit8 v11, v1, 0x10

    .line 446
    .local v11, "R":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mAargbBuffer:[I

    aget v1, v1, v17

    const v2, 0xff00

    and-int/2addr v1, v2

    shr-int/lit8 v10, v1, 0x8

    .line 447
    .local v10, "G":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mAargbBuffer:[I

    aget v1, v1, v17

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v9, v1, 0x0

    .line 449
    .local v9, "B":I
    mul-int/lit8 v1, v11, 0x42

    mul-int/lit16 v2, v10, 0x81

    add-int/2addr v1, v2

    mul-int/lit8 v2, v9, 0x19

    add-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x80

    shr-int/lit8 v1, v1, 0x8

    add-int/lit8 v14, v1, 0x10

    .line 450
    .local v14, "Y":I
    mul-int/lit8 v1, v11, -0x26

    mul-int/lit8 v2, v10, 0x4a

    sub-int/2addr v1, v2

    mul-int/lit8 v2, v9, 0x70

    add-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x80

    shr-int/lit8 v1, v1, 0x8

    add-int/lit16 v12, v1, 0x80

    .line 451
    .local v12, "U":I
    mul-int/lit8 v1, v11, 0x70

    mul-int/lit8 v2, v10, 0x5e

    sub-int/2addr v1, v2

    mul-int/lit8 v2, v9, 0x12

    sub-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x80

    shr-int/lit8 v1, v1, 0x8

    add-int/lit16 v13, v1, 0x80

    .line 453
    .local v13, "V":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mDataBuffer:[B

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "y":I
    .restart local v21    # "y":I
    if-gez v14, :cond_4

    const/4 v14, 0x0

    .end local v14    # "Y":I
    :cond_0
    :goto_2
    int-to-byte v2, v14

    aput-byte v2, v1, v22

    .line 454
    rem-int/lit8 v1, v18, 0x2

    if-nez v1, :cond_3

    rem-int/lit8 v1, v17, 0x2

    if-nez v1, :cond_3

    .line 455
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mDataBuffer:[B

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "u":I
    .restart local v19    # "u":I
    if-gez v13, :cond_5

    const/4 v13, 0x0

    .end local v13    # "V":I
    :cond_1
    :goto_3
    int-to-byte v2, v13

    aput-byte v2, v1, v20

    .line 456
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mDataBuffer:[B

    add-int/lit8 v20, v19, 0x1

    .end local v19    # "u":I
    .restart local v20    # "u":I
    if-gez v12, :cond_6

    const/4 v12, 0x0

    .end local v12    # "U":I
    :cond_2
    :goto_4
    int-to-byte v2, v12

    aput-byte v2, v1, v19

    :cond_3
    move/from16 v19, v20

    .line 458
    .end local v20    # "u":I
    .restart local v19    # "u":I
    add-int/lit8 v17, v17, 0x1

    .line 442
    add-int/lit8 v16, v16, 0x1

    move/from16 v20, v19

    .end local v19    # "u":I
    .restart local v20    # "u":I
    move/from16 v22, v21

    .end local v21    # "y":I
    .restart local v22    # "y":I
    goto/16 :goto_1

    .line 453
    .end local v22    # "y":I
    .restart local v12    # "U":I
    .restart local v13    # "V":I
    .restart local v14    # "Y":I
    .restart local v21    # "y":I
    :cond_4
    const/16 v2, 0xff

    if-le v14, v2, :cond_0

    const/16 v14, 0xff

    goto :goto_2

    .line 455
    .end local v14    # "Y":I
    .end local v20    # "u":I
    .restart local v19    # "u":I
    :cond_5
    const/16 v2, 0xff

    if-le v13, v2, :cond_1

    const/16 v13, 0xff

    goto :goto_3

    .line 456
    .end local v13    # "V":I
    .end local v19    # "u":I
    .restart local v20    # "u":I
    :cond_6
    const/16 v2, 0xff

    if-le v12, v2, :cond_2

    const/16 v12, 0xff

    goto :goto_4

    .line 441
    .end local v9    # "B":I
    .end local v10    # "G":I
    .end local v11    # "R":I
    .end local v12    # "U":I
    .end local v15    # "a":I
    .end local v21    # "y":I
    .restart local v22    # "y":I
    :cond_7
    add-int/lit8 v18, v18, 0x1

    move/from16 v19, v20

    .end local v20    # "u":I
    .restart local v19    # "u":I
    move/from16 v21, v22

    .end local v22    # "y":I
    .restart local v21    # "y":I
    goto/16 :goto_0

    .line 461
    .end local v16    # "i":I
    :cond_8
    return-void
.end method

.method private blendToPreviewPicture(Lcom/android/camera/ui/PanoCaptureProcessView$Picture;ZZ)V
    .locals 24
    .param p1, "pic2"    # Lcom/android/camera/ui/PanoCaptureProcessView$Picture;
    .param p2, "isKey"    # Z
    .param p3, "isFirst"    # Z

    .prologue
    .line 815
    new-instance v5, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewPicture:Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmapIn:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 816
    .local v5, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewPicture:Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    move-object/from16 v18, v0

    .line 818
    .local v18, "pic1":Lcom/android/camera/ui/PanoCaptureProcessView$Picture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_RIGHT:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_LEFT:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 819
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->xPos:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->xPos:I

    move/from16 v21, v0

    sub-int v6, v20, v21

    .line 820
    .local v6, "gap":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->yPos:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->topIn:I

    .line 821
    if-lez v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_RIGHT:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_2

    :cond_1
    if-gez v6, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_LEFT:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 928
    :cond_2
    :goto_0
    return-void

    .line 825
    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->width:I

    move/from16 v20, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v21

    sub-int v6, v20, v21

    .line 826
    if-eqz p3, :cond_4

    .line 827
    const/4 v6, 0x0

    .line 829
    :cond_4
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->width:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->width:I

    move/from16 v21, v0

    add-int v20, v20, v21

    sub-int v12, v20, v6

    .line 831
    .local v12, "newWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_RIGHT:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 832
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->width:I

    move/from16 v20, v0

    sub-int v20, v12, v20

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->leftIn:I

    .line 836
    :goto_1
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->leftIn:I

    move/from16 v20, v0

    if-gez v20, :cond_5

    .line 837
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->leftIn:I

    .line 839
    :cond_5
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->leftIn:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_6

    .line 840
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->leftIn:I

    .line 843
    :cond_6
    if-nez p2, :cond_7

    if-eqz p3, :cond_8

    .line 844
    :cond_7
    new-instance v5, Landroid/graphics/Canvas;

    .end local v5    # "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 845
    .restart local v5    # "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->leftIn:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_RIGHT:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 848
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->width:I

    move/from16 v20, v0

    sub-int v17, v12, v20

    .line 849
    .local v17, "overlapS":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->width:I

    move/from16 v20, v0

    sub-int v20, v12, v20

    add-int v16, v20, v6

    .line 854
    .local v16, "overlapE":I
    :goto_2
    move/from16 v7, v17

    .local v7, "i":I
    :goto_3
    move/from16 v0, v16

    if-ge v7, v0, :cond_8

    .line 855
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    if-ge v7, v0, :cond_8

    sub-int v20, v7, v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_b

    .line 871
    .end local v7    # "i":I
    .end local v16    # "overlapE":I
    .end local v17    # "overlapS":I
    :cond_8
    move-object/from16 v0, v18

    iput v12, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->width:I

    .line 926
    .end local v12    # "newWidth":I
    :goto_4
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->xPos:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->xPos:I

    .line 927
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->yPos:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->yPos:I

    goto/16 :goto_0

    .line 834
    .restart local v12    # "newWidth":I
    :cond_9
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    sub-int v20, v20, v12

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->leftIn:I

    goto/16 :goto_1

    .line 851
    :cond_a
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    sub-int v20, v20, v12

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->width:I

    move/from16 v21, v0

    add-int v20, v20, v21

    sub-int v17, v20, v6

    .line 852
    .restart local v17    # "overlapS":I
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    sub-int v20, v20, v12

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->width:I

    move/from16 v21, v0

    add-int v16, v20, v21

    .restart local v16    # "overlapE":I
    goto/16 :goto_2

    .line 857
    .restart local v7    # "i":I
    :cond_b
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_5
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->height:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v10, v0, :cond_c

    .line 858
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v20

    if-ge v10, v0, :cond_c

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v20

    if-lt v10, v0, :cond_d

    .line 854
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 860
    :cond_d
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v10}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    .line 861
    .local v8, "iC1":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    sub-int v21, v7, v17

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    .line 862
    .local v9, "iC2":I
    sub-int v20, v16, v7

    div-int v4, v20, v6

    .line 863
    .local v4, "blendAlpha":I
    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v20

    mul-int v20, v20, v4

    rsub-int/lit8 v21, v4, 0x1

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v22

    mul-int v21, v21, v22

    add-int v15, v20, v21

    .line 864
    .local v15, "or":I
    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v20

    mul-int v20, v20, v4

    rsub-int/lit8 v21, v4, 0x1

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v22

    mul-int v21, v21, v22

    add-int v14, v20, v21

    .line 865
    .local v14, "og":I
    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v20

    mul-int v20, v20, v4

    rsub-int/lit8 v21, v4, 0x1

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v22

    mul-int v21, v21, v22

    add-int v13, v20, v21

    .line 866
    .local v13, "ob":I
    const/16 v20, 0xff

    move/from16 v0, v20

    invoke-static {v0, v15, v14, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v19

    .line 867
    .local v19, "pixel":I
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v7, v10, v1}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 857
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5

    .line 873
    .end local v4    # "blendAlpha":I
    .end local v6    # "gap":I
    .end local v7    # "i":I
    .end local v8    # "iC1":I
    .end local v9    # "iC2":I
    .end local v10    # "j":I
    .end local v12    # "newWidth":I
    .end local v13    # "ob":I
    .end local v14    # "og":I
    .end local v15    # "or":I
    .end local v16    # "overlapE":I
    .end local v17    # "overlapS":I
    .end local v19    # "pixel":I
    :cond_e
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->yPos:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->yPos:I

    move/from16 v21, v0

    sub-int v6, v20, v21

    .line 874
    .restart local v6    # "gap":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->xPos:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->leftIn:I

    .line 875
    if-lez v6, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_DOWN:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_2

    :cond_f
    if-gez v6, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_UP:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 879
    :cond_10
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->height:I

    move/from16 v20, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v21

    sub-int v6, v20, v21

    .line 880
    if-eqz p3, :cond_11

    .line 881
    const/4 v6, 0x0

    .line 883
    :cond_11
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->height:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->height:I

    move/from16 v21, v0

    add-int v20, v20, v21

    sub-int v11, v20, v6

    .line 885
    .local v11, "newHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_DOWN:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_16

    .line 886
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->height:I

    move/from16 v20, v0

    sub-int v20, v11, v20

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->topIn:I

    .line 890
    :goto_6
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->topIn:I

    move/from16 v20, v0

    if-gez v20, :cond_12

    .line 891
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->topIn:I

    .line 893
    :cond_12
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->topIn:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_13

    .line 894
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->topIn:I

    .line 896
    :cond_13
    if-nez p2, :cond_14

    if-eqz p3, :cond_15

    .line 897
    :cond_14
    new-instance v5, Landroid/graphics/Canvas;

    .end local v5    # "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 898
    .restart local v5    # "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->topIn:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_DOWN:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_17

    .line 901
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->height:I

    move/from16 v20, v0

    sub-int v17, v11, v20

    .line 902
    .restart local v17    # "overlapS":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->height:I

    move/from16 v20, v0

    sub-int v20, v11, v20

    add-int v16, v20, v6

    .line 907
    .restart local v16    # "overlapE":I
    :goto_7
    move/from16 v7, v17

    .restart local v7    # "i":I
    :goto_8
    move/from16 v0, v16

    if-ge v7, v0, :cond_15

    .line 908
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v20

    if-ge v7, v0, :cond_15

    sub-int v20, v7, v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_18

    .line 924
    .end local v7    # "i":I
    .end local v16    # "overlapE":I
    .end local v17    # "overlapS":I
    :cond_15
    move-object/from16 v0, v18

    iput v11, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->height:I

    goto/16 :goto_4

    .line 888
    :cond_16
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    sub-int v20, v20, v11

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->topIn:I

    goto/16 :goto_6

    .line 904
    :cond_17
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    sub-int v20, v20, v11

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->height:I

    move/from16 v21, v0

    add-int v20, v20, v21

    sub-int v17, v20, v6

    .line 905
    .restart local v17    # "overlapS":I
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    sub-int v20, v20, v11

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->height:I

    move/from16 v21, v0

    add-int v16, v20, v21

    .restart local v16    # "overlapE":I
    goto :goto_7

    .line 910
    .restart local v7    # "i":I
    :cond_18
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_9
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->width:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v10, v0, :cond_19

    .line 911
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    if-ge v10, v0, :cond_19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    if-lt v10, v0, :cond_1a

    .line 907
    :cond_19
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_8

    .line 913
    :cond_1a
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    .line 914
    .restart local v8    # "iC1":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    sub-int v21, v7, v17

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    .line 915
    .restart local v9    # "iC2":I
    sub-int v20, v16, v7

    div-int v4, v20, v6

    .line 916
    .restart local v4    # "blendAlpha":I
    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v20

    mul-int v20, v20, v4

    rsub-int/lit8 v21, v4, 0x1

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v22

    mul-int v21, v21, v22

    add-int v15, v20, v21

    .line 917
    .restart local v15    # "or":I
    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v20

    mul-int v20, v20, v4

    rsub-int/lit8 v21, v4, 0x1

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v22

    mul-int v21, v21, v22

    add-int v14, v20, v21

    .line 918
    .restart local v14    # "og":I
    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v20

    mul-int v20, v20, v4

    rsub-int/lit8 v21, v4, 0x1

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v22

    mul-int v21, v21, v22

    add-int v13, v20, v21

    .line 919
    .restart local v13    # "ob":I
    const/16 v20, 0xff

    move/from16 v0, v20

    invoke-static {v0, v15, v14, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v19

    .line 920
    .restart local v19    # "pixel":I
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v10, v7, v1}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 910
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_9
.end method

.method private callNativeCancelPanorama()I
    .locals 1

    .prologue
    .line 1074
    invoke-direct {p0}, Lcom/android/camera/ui/PanoCaptureProcessView;->nativeCancelPanorama()I

    move-result v0

    .line 1078
    .local v0, "rtv":I
    return v0
.end method

.method private callNativeCompletePanorama([BI)I
    .locals 1
    .param p1, "jpegOutData"    # [B
    .param p2, "size"    # I

    .prologue
    .line 1096
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/PanoCaptureProcessView;->nativeCompletePanorama([BI)I

    move-result v0

    .line 1100
    .local v0, "rtv":I
    return v0
.end method

.method private callNativeGetResultSize()I
    .locals 1

    .prologue
    .line 1085
    invoke-direct {p0}, Lcom/android/camera/ui/PanoCaptureProcessView;->nativeGetResultSize()I

    move-result v0

    .line 1089
    .local v0, "rtv":I
    return v0
.end method

.method private callNativeInstanceInit(IIIII)I
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "stride"    # I
    .param p4, "orientation"    # I
    .param p5, "colorFormat"    # I

    .prologue
    .line 1030
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/ui/PanoCaptureProcessView;->nativeInstanceInit(IIIII)I

    move-result v0

    .line 1034
    .local v0, "rtv":I
    return v0
.end method

.method private callNativeInstanceRelease()I
    .locals 1

    .prologue
    .line 1041
    invoke-direct {p0}, Lcom/android/camera/ui/PanoCaptureProcessView;->nativeInstanceRelease()I

    move-result v0

    .line 1045
    .local v0, "rtv":I
    return v0
.end method

.method private callNativeProcessKeyFrame([BIIIII)I
    .locals 1
    .param p1, "jpegInData"    # [B
    .param p2, "dataSize"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "orientation"    # I
    .param p6, "direction"    # I

    .prologue
    .line 1063
    invoke-direct/range {p0 .. p6}, Lcom/android/camera/ui/PanoCaptureProcessView;->nativeProcessKeyFrame([BIIIII)I

    move-result v0

    .line 1067
    .local v0, "rtv":I
    return v0
.end method

.method private callNativeProcessPreviewFrame([B[Z[I[I)I
    .locals 1
    .param p1, "frameData"    # [B
    .param p2, "isKey"    # [Z
    .param p3, "framePosition"    # [I
    .param p4, "moveSpeed"    # [I

    .prologue
    .line 1052
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/ui/PanoCaptureProcessView;->nativeProcessPreviewFrame([B[Z[I[I)I

    move-result v0

    .line 1056
    .local v0, "rtv":I
    return v0
.end method

.method private highPassFilteredCopy([F[F[FZ)V
    .locals 4
    .param p1, "a"    # [F
    .param p2, "b"    # [F
    .param p3, "c"    # [F
    .param p4, "isValid"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1011
    if-nez p4, :cond_1

    .line 1012
    array-length v1, p1

    invoke-static {p1, v2, p2, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 1019
    :cond_0
    return-void

    .line 1016
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1017
    const v1, 0x3f99999a    # 1.2f

    aget v2, p2, v0

    aget v3, p1, v0

    add-float/2addr v2, v3

    aget v3, p3, v0

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    aput v1, p2, v0

    .line 1016
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isAllTaken()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 798
    iget v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mFinalDoneLength:I

    if-nez v2, :cond_1

    .line 810
    :cond_0
    :goto_0
    return v0

    .line 801
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    sget-object v3, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_LEFT:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    sget-object v3, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_RIGHT:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-ne v2, v3, :cond_3

    .line 802
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewPicture:Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    iget v2, v2, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->width:I

    iget v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mFinalDoneLength:I

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 803
    goto :goto_0

    .line 805
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    sget-object v3, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_UP:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    sget-object v3, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->ACTIVE_DOWN:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-ne v2, v3, :cond_0

    .line 806
    :cond_4
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewPicture:Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    iget v2, v2, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->height:I

    iget v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mFinalDoneLength:I

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 807
    goto :goto_0
.end method

.method private isPortrait()Z
    .locals 2

    .prologue
    .line 969
    iget v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOrientation:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOrientation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_1

    .line 970
    :cond_0
    const/4 v0, 0x1

    .line 972
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportedStatic()Z
    .locals 1

    .prologue
    .line 1104
    sget-boolean v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mIsSupported:Z

    return v0
.end method

.method private lowPassFilteredCopy([F[F)V
    .locals 5
    .param p1, "a"    # [F
    .param p2, "b"    # [F

    .prologue
    .line 1005
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 1006
    aget v1, p2, v0

    const v2, 0x3ee66666    # 0.45f

    aget v3, p1, v0

    aget v4, p2, v0

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p2, v0

    .line 1005
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1008
    :cond_0
    return-void
.end method

.method private native nativeCancelPanorama()I
.end method

.method private native nativeCompletePanorama([BI)I
.end method

.method private native nativeGetResultSize()I
.end method

.method private native nativeInstanceInit(IIIII)I
.end method

.method private native nativeInstanceRelease()I
.end method

.method private native nativeProcessKeyFrame([BIIIII)I
.end method

.method private native nativeProcessPreviewFrame([B[Z[I[I)I
.end method

.method private processPreviewFrame([Z[I[I)V
    .locals 2
    .param p1, "isKey"    # [Z
    .param p2, "framePos"    # [I
    .param p3, "moveSpeed"    # [I

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mDataBuffer:[B

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/camera/ui/PanoCaptureProcessView;->callNativeProcessPreviewFrame([B[Z[I[I)I

    move-result v0

    if-gez v0, :cond_0

    .line 589
    sget-object v0, Lcom/android/camera/ui/PanoCaptureProcessView;->TAG:Ljava/lang/String;

    const-string v1, "Preview processing is failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_0
    return-void
.end method

.method private rotateAndScale(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V
    .locals 7
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "dstBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "ratio"    # F

    .prologue
    const/16 v6, 0x10e

    const/16 v5, 0x5a

    .line 931
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 932
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 933
    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mController:Lcom/android/camera/PanoCaptureModule;

    invoke-virtual {v3}, Lcom/android/camera/PanoCaptureModule;->getCameraSensorOrientation()I

    move-result v2

    .line 934
    .local v2, "sensorOrientation":I
    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, p3, p3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 937
    iget v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOrientation:I

    add-int/2addr v3, v2

    rem-int/lit16 v3, v3, 0x168

    int-to-float v1, v3

    .line 938
    .local v1, "rotationAngle":F
    iget v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOrientation:I

    if-nez v3, :cond_2

    .line 939
    if-ne v2, v5, :cond_1

    .line 940
    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 941
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    .line 940
    invoke-virtual {v3, v1, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 957
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->matrix:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 958
    return-void

    .line 942
    :cond_1
    if-ne v2, v6, :cond_0

    .line 943
    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 944
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    .line 943
    invoke-virtual {v3, v1, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_0

    .line 946
    :cond_2
    iget v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOrientation:I

    const/16 v4, 0xb4

    if-ne v3, v4, :cond_4

    .line 947
    if-ne v2, v5, :cond_3

    .line 948
    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 949
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    .line 948
    invoke-virtual {v3, v1, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_0

    .line 950
    :cond_3
    if-ne v2, v6, :cond_0

    .line 951
    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 952
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    .line 951
    invoke-virtual {v3, v1, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_0

    .line 954
    :cond_4
    iget v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOrientation:I

    if-eq v3, v6, :cond_5

    iget v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOrientation:I

    if-ne v3, v5, :cond_0

    .line 955
    :cond_5
    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v3, v1, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_0
.end method

.method private stopPano(ZLjava/lang/String;)V
    .locals 2
    .param p1, "isCancelling"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 786
    if-eqz p2, :cond_0

    .line 787
    iput-object p2, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mProgressSentence:Ljava/lang/String;

    .line 788
    sget-object v0, Lcom/android/camera/ui/PanoCaptureProcessView;->TAG:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/ui/PanoCaptureProcessView$4;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/PanoCaptureProcessView$4;-><init>(Lcom/android/camera/ui/PanoCaptureProcessView;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 795
    return-void
.end method

.method private waitForQueueDone()V
    .locals 2

    .prologue
    .line 578
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mQueueProcessor:Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;

    invoke-virtual {v0}, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 580
    :cond_0
    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 581
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public isFrameProcessing()Z
    .locals 1

    .prologue
    .line 598
    iget-boolean v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mIsFrameProcessing:Z

    return v0
.end method

.method public isPanoCompleting()Z
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    sget-object v1, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->COMPLETING:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1024
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 379
    iget v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOrientation:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOrientation:I

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_2

    .line 380
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 381
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 382
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 383
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 391
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    sget-object v2, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->INACTIVE:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-eq v1, v2, :cond_6

    .line 392
    iget v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOrientation:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 394
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mProgressSentence:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 395
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCompleteSentencePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mProgressSentence:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v0, v1

    .line 396
    .local v0, "textWidth":I
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mProgressSentence:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    div-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCompleteSentencePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 399
    .end local v0    # "textWidth":I
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    sget-object v2, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->COMPLETING:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-ne v1, v2, :cond_3

    .line 400
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCompleteSentencePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCompleteSentence:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v0, v1

    .line 401
    .restart local v0    # "textWidth":I
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCompleteSentence:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    div-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCompleteSentencePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 425
    .end local v0    # "textWidth":I
    :goto_1
    return-void

    .line 385
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 386
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 387
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 388
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 404
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->rectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCenterRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 407
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mGuidePicture:Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    if-eqz v1, :cond_4

    .line 408
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 409
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mGuidePicture:Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->drawGuideInAir(Landroid/graphics/Canvas;)V

    .line 410
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 414
    :cond_4
    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewBitmapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 415
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewPicture:Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    if-eqz v1, :cond_5

    .line 416
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewPicture:Lcom/android/camera/ui/PanoCaptureProcessView$Picture;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/PanoCaptureProcessView$Picture;->drawMasterPanoPreview(Landroid/graphics/Canvas;)V

    .line 418
    :cond_5
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 421
    :cond_6
    iget v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPendingOrientation:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 422
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCompleteSentencePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mIntroSentence:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v0, v1

    .line 423
    .restart local v0    # "textWidth":I
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mIntroSentence:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    div-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCompleteSentencePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method public onFrameAvailable(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "isCancelling"    # Z

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    sget-object v1, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->COMPLETING:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    sget-object v1, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->OPENING:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-ne v0, v1, :cond_1

    .line 783
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    if-nez p1, :cond_3

    .line 609
    if-eqz p2, :cond_2

    .line 610
    const-string v0, "Cancelling..."

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCompleteSentence:Ljava/lang/String;

    .line 614
    :goto_1
    sget-object v0, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->COMPLETING:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    .line 615
    invoke-virtual {p0}, Lcom/android/camera/ui/PanoCaptureProcessView;->invalidate()V

    .line 616
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/ui/PanoCaptureProcessView$1;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/ui/PanoCaptureProcessView$1;-><init>(Lcom/android/camera/ui/PanoCaptureProcessView;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 612
    :cond_2
    const-string v0, "Processing..."

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCompleteSentence:Ljava/lang/String;

    goto :goto_1

    .line 669
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    sget-object v1, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->INACTIVE:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-ne v0, v1, :cond_4

    .line 670
    sget-object v0, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->OPENING:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    .line 671
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/ui/PanoCaptureProcessView$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/PanoCaptureProcessView$2;-><init>(Lcom/android/camera/ui/PanoCaptureProcessView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 694
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    sget-object v1, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->INACTIVE:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-eq v0, v1, :cond_0

    .line 696
    iget-boolean v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mIsFrameProcessing:Z

    if-nez v0, :cond_0

    .line 699
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mIsFrameProcessing:Z

    .line 700
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/ui/PanoCaptureProcessView$3;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/PanoCaptureProcessView$3;-><init>(Lcom/android/camera/ui/PanoCaptureProcessView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mRotationSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 341
    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mBitmapStreamLock:Ljava/lang/Object;

    monitor-enter v1

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mBitmapStream:Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 344
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mBitmapStream:Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mBitmapStream:Lcom/android/camera/ui/PanoCaptureProcessView$BitmapArrayOutputStream;

    .line 350
    :cond_0
    monitor-exit v1

    .line 351
    return-void

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 345
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mRotationSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 355
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    .line 977
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1002
    :goto_0
    return-void

    .line 979
    :pswitch_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOldRots:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 980
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mR:[F

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOldRots:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 981
    invoke-direct {p0}, Lcom/android/camera/ui/PanoCaptureProcessView;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 982
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mR:[F

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mRR:[F

    invoke-static {v0, v5, v6, v1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 990
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mRR:[F

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOrients:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 991
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOrients:[F

    aget v0, v0, v4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    add-float/2addr v0, v3

    rem-float/2addr v0, v3

    iput v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCurrDegX:F

    .line 992
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOrients:[F

    aget v0, v0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    add-float/2addr v0, v3

    rem-float/2addr v0, v3

    iput v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCurrDegY:F

    .line 993
    invoke-direct {p0}, Lcom/android/camera/ui/PanoCaptureProcessView;->isPortrait()Z

    move-result v0

    if-nez v0, :cond_0

    .line 994
    iget v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCurrDegX:F

    const/high16 v1, 0x43340000    # 180.0f

    add-float/2addr v0, v1

    rem-float/2addr v0, v3

    iput v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCurrDegX:F

    .line 995
    iget v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCurrDegY:F

    neg-float v0, v0

    add-float/2addr v0, v3

    rem-float/2addr v0, v3

    iput v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCurrDegY:F

    .line 997
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/PanoCaptureProcessView;->invalidate()V

    goto :goto_0

    .line 986
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mR:[F

    iget-object v1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mRR:[F

    invoke-static {v0, v6, v5, v1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_1

    .line 977
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 429
    const/4 v0, 0x1

    return v0
.end method

.method public setContext(Lcom/android/camera/CameraActivity;Lcom/android/camera/PanoCaptureModule;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "contoller"    # Lcom/android/camera/PanoCaptureModule;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mActivity:Lcom/android/camera/CameraActivity;

    .line 325
    iput-object p2, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mController:Lcom/android/camera/PanoCaptureModule;

    .line 326
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mSensorManager:Landroid/hardware/SensorManager;

    .line 327
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mRotationSensor:Landroid/hardware/Sensor;

    .line 328
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCenterRectPaint:Landroid/graphics/Paint;

    const v1, -0xff0001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 329
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCenterRectPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 330
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCenterRectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 331
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCompleteSentencePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 332
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mCompleteSentencePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42340000    # 45.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 333
    new-instance v0, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;-><init>(Lcom/android/camera/ui/PanoCaptureProcessView;)V

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mQueueProcessor:Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;

    .line 334
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mQueueProcessor:Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;

    invoke-virtual {v0}, Lcom/android/camera/ui/PanoCaptureProcessView$PanoQueueProcessor;->start()V

    .line 335
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mHandler:Landroid/os/Handler;

    .line 336
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0296

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mIntroSentence:Ljava/lang/String;

    .line 337
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 961
    iget-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoStatus:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    sget-object v1, Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;->INACTIVE:Lcom/android/camera/ui/PanoCaptureProcessView$PANO_STATUS;

    if-eq v0, v1, :cond_0

    .line 962
    iput p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPendingOrientation:I

    .line 966
    :goto_0
    return-void

    .line 965
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPendingOrientation:I

    iput p1, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mOrientation:I

    goto :goto_0
.end method

.method public setPanoPreviewSize(IIII)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "cameraWidth"    # I
    .param p4, "cameraHeight"    # I

    .prologue
    .line 358
    sget v0, Lcom/android/camera/ui/PanoCaptureProcessView;->MAX_PANO_FRAME:I

    add-int/lit8 v0, v0, 0x2

    div-int v0, p1, v0

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    .line 359
    sget v0, Lcom/android/camera/ui/PanoCaptureProcessView;->MAX_PANO_FRAME:I

    add-int/lit8 v0, v0, 0x2

    div-int v0, p2, v0

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    .line 360
    div-int/lit8 v0, p1, 0x2

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mFinalPictureWidth:I

    .line 361
    div-int/lit8 v0, p2, 0x2

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mFinalPictureHeight:I

    .line 362
    sget v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    sget v1, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mAargbBuffer:[I

    .line 363
    sget v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    sget v1, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/camera/ui/PanoCaptureProcessView;->mDataBuffer:[B

    .line 365
    const-wide v0, 0x3fc999999999999aL    # 0.2

    sget v2, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lcom/android/camera/ui/PanoCaptureProcessView;->DECISION_MARGIN:I

    .line 367
    sget v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbWidth:I

    sget v1, Lcom/android/camera/ui/PanoCaptureProcessView;->mPreviewThumbHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    .line 368
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mPanoPreviewRatioToCamera:F

    .line 369
    sget v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mFinalPictureWidth:I

    sget v1, Lcom/android/camera/ui/PanoCaptureProcessView;->mFinalPictureHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    .line 370
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/android/camera/ui/PanoCaptureProcessView;->mFinalPictureRatioToCamera:F

    .line 371
    return-void
.end method
