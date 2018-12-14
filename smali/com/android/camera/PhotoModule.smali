.class public Lcom/android/camera/PhotoModule;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/android/camera/CameraModule;
.implements Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
.implements Lcom/android/camera/FocusOverlayManager$Listener;
.implements Lcom/android/camera/LocationManager$Listener;
.implements Lcom/android/camera/MediaSaveService$Listener;
.implements Lcom/android/camera/PhotoController;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;
.implements Lcom/android/camera/TsMakeupManager$MakeupLevelListener;
.implements Lcom/android/camera/ui/CountDownView$OnCountDownFinishedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PhotoModule$NamedImages;,
        Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;,
        Lcom/android/camera/PhotoModule$AutoFocusCallback;,
        Lcom/android/camera/PhotoModule$JpegPictureCallback;,
        Lcom/android/camera/PhotoModule$LongshotPictureCallback;,
        Lcom/android/camera/PhotoModule$RawPictureCallback;,
        Lcom/android/camera/PhotoModule$PostViewPictureCallback;,
        Lcom/android/camera/PhotoModule$MetaDataCallback;,
        Lcom/android/camera/PhotoModule$StatsCallback;,
        Lcom/android/camera/PhotoModule$ShutterCallback;,
        Lcom/android/camera/PhotoModule$LongshotShutterCallback;,
        Lcom/android/camera/PhotoModule$MainHandler;,
        Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;,
        Lcom/android/camera/PhotoModule$SelfieThread;,
        Lcom/android/camera/PhotoModule$SavingThread;,
        Lcom/android/camera/PhotoModule$StartPreviewThread;,
        Lcom/android/camera/PhotoModule$OpenCameraThread;,
        Lcom/android/camera/PhotoModule$MultiPPCallback;
    }
.end annotation


# static fields
.field private static final ADD_NS_BUFFER:I = 0xf

.field private static final BEAUTY:I = 0x4

.field private static final CAMERA_DISABLED:I = 0xa

.field private static final CAMERA_OPEN_DONE:I = 0x8

.field private static final CLEAR_SCREEN_DELAY:I = 0x3

.field private static final DEBUG_IMAGE_PREFIX:Ljava/lang/String; = "DEBUG_"

.field private static final DEFAULT_BRIGHTNESS:I = 0x3

.field private static final DEPTH_EFFECT_SUCCESS:I = 0x1

.field private static final DUAL_BEAUTY:I = 0x5

.field private static final DUAL_BOKEH:I = 0x2

.field private static final DUMP_3DNR:Z = false

.field private static final EXTRA_QUICK_CAPTURE:Ljava/lang/String; = "android.intent.extra.quickCapture"

.field private static final FIRST_TIME_INIT:I = 0x2

.field private static final GET_RESULT_3RD:I = 0x11

.field private static final GET_RESULT_FORCED:I = 0x10

.field private static final INSTANT_CAPTURE:I = 0xe

.field private static final KEY_PICTURE_FORMAT:Ljava/lang/String; = "picture-format"

.field private static final KEY_QC_RAW_PICUTRE_SIZE:Ljava/lang/String; = "raw-size"

.field private static final LONGSHOT_CANCEL_THRESHOLD:I = 0x2800000

.field private static final LOW_COST_BEAUTY_PARAM_SOFTEN:I = 0x14

.field private static final LOW_COST_BEAUTY_PARAM_WHITEN:I = 0x14

.field private static final LOW_LIGHT:I = 0x4

.field private static final LUX_IDX_TABLE_HI1333:[I

.field private static final LUX_IDX_TABLE_HI846:[I

.field private static final LUX_IDX_TABLE_OV13855:[I

.field private static final LUX_IDX_TABLE_OV16880:[I

.field private static final LUX_IDX_TABLE_OV16885:[I

.field private static final LUX_IDX_TABLE_OV8856:[I

.field private static final MANUAL_EXPOSURE:I = 0x4

.field private static final MANUAL_FOCUS:I = 0x1

.field private static final MANUAL_WB:I = 0x2

.field private static final MAXIMUM_BRIGHTNESS:I = 0x6

.field private static final MAX_SCE_FACTOR:I = 0xa

.field private static final MAX_SHARPNESS_LEVEL:I = 0x6

.field private static final MAX_ZOOM:I = 0xa

.field private static final MINIMUM_BRIGHTNESS:I = 0x0

.field private static final MIN_SCE_FACTOR:I = -0xa

.field private static final MULTI_TIMEOUT:I = 0xbb8

.field private static final NO_DEPTH_EFFECT:I = 0x0

.field private static final NS_ALIGN:I = 0x40

.field private static final NS_MAX_NUM:I = 0x4

.field private static final NS_METADATA:I = 0x65

.field private static final NS_PARAMS_HI1333:[[I

.field private static final NS_PARAMS_HI846:[[I

.field private static final NS_PARAMS_OV13855:[[I

.field private static final NS_PARAMS_OV16880:[[I

.field private static final NS_PARAMS_OV16885:[[I

.field private static final NS_PARAMS_OV8856:[[I

.field private static final NS_STARTUP_THRESHOLD:I = 0x320

.field private static final ON_PREVIEW_STARTED:I = 0xd

.field private static final ON_RESUME_TASKS_DELAY_MSEC:I = 0x14

.field private static final OPEN_CAMERA_FAIL:I = 0x9

.field private static final PERSISI_BOKEH_DEBUG:Ljava/lang/String; = "persist.camera.bokeh.debug"

.field private static final PERSIST_BOKEH_DEBUG_CHECK:Z

.field private static final PERSIST_SKIP_MEM_CHECK:Z

.field public static final PIXEL_FORMAT_JPEG:Ljava/lang/String; = "jpeg"

.field private static final REQUEST_CROP:I = 0x3e8

.field private static final SCREEN_DELAY:I = 0x1d4c0

.field private static final SELFIE_FLASH_DURATION:I = 0x2a8

.field private static final SETUP_PREVIEW:I = 0x1

.field private static final SET_CAMERA_PARAMETERS_WHEN_IDLE:I = 0x4

.field private static final SET_PHOTO_UI_PARAMS:I = 0xb

.field private static final SHOW_TAP_TO_FOCUS_TOAST:I = 0x5

.field private static final SINGLE_BEAUTY:I = 0x6

.field private static final SINGLE_BOKEH:I = 0x3

.field private static final STATS_DATA:I = 0x101

.field private static final SUBJECT_NOT_FOUND:I = 0x5

.field private static final SWITCH_CAMERA:I = 0x6

.field private static final SWITCH_CAMERA_START_ANIMATION:I = 0x7

.field private static final SWITCH_TO_GCAM_MODULE:I = 0xc

.field private static final TAG:Ljava/lang/String; = "CAM_PhotoModule"

.field private static final TEXT_GONE:I = 0x0

.field private static final TEXT_SHOW:I = 0x1

.field private static final TOO_FAR:I = 0x3

.field private static final TOO_NEAR:I = 0x2

.field private static final TOUCH_TO_FOCUS:I = 0x6

.field private static final UPDATE_PARAM_ALL:I = -0x1

.field private static final UPDATE_PARAM_INITIALIZE:I = 0x1

.field private static final UPDATE_PARAM_PREFERENCE:I = 0x4

.field private static final UPDATE_PARAM_ZOOM:I = 0x2

.field private static final UPDATE_THUMBNAIL_FLIPPED:I = 0x12

.field public static mBrightnessVisible:Z = false

.field private static final sTempCropFilename:Ljava/lang/String; = "crop-temp"

.field public static statsdata:[I


# instance fields
.field private SCE_FACTOR_STEP:I

.field private SECONDARY_SERVER_MEM:J

.field private brightnessProgressBar:Landroid/widget/ProgressBar;

.field exifraw:Lcom/android/camera/exif/ExifInterface;

.field private isTNREnabled:Z

.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mAeLockSupported:Z

.field private mAnimateCapture:Z

.field private final mAutoFocusCallback:Lcom/android/camera/PhotoModule$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Ljava/lang/Object;

.field public mAutoFocusTime:J

.field public mAutoHdrEnable:Z

.field private mAwbLockSupported:Z

.field private mBeauty:Z

.field private mBeautyShotEnable:Z

.field private mBlurDegreeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mBokehTipText:Landroid/widget/TextView;

.field private mBurstSnapNum:I

.field private mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mCameraDisabled:Z

.field private mCameraDisplayOrientation:I

.field private mCameraId:I

.field private mCameraOpened:Z

.field private mCameraPreviewParamsReady:Z

.field private mCameraState:I

.field public mCaptureStartTime:J

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContinuousFocusSupported:Z

.field private mCropValue:Ljava/lang/String;

.field private mCurrTouchAfAec:Ljava/lang/String;

.field private mDebugUri:Landroid/net/Uri;

.field private mDepthSuccess:Z

.field private mDisplayOrientation:I

.field private mDisplayRotation:I

.field private mDrawAutoHDR:Lcom/android/camera/DrawAutoHDR;

.field private mDualBokeh:Z

.field private final mErrorCallback:Lcom/android/camera/CameraErrorCallback;

.field public mFaceDetectionEnabled:Z

.field private mFaceDetectionStarted:Z

.field private mFeatureMask:I

.field private mFirstTimeInitialized:Z

.field private mFocusAreaSupported:Z

.field private mFocusManager:Lcom/android/camera/FocusOverlayManager;

.field private mFocusStartTime:J

.field private mGData:[F

.field private mGraphView:Lcom/android/camera/GraphView;

.field private mHQAlgoManager:Lcom/android/camera/MultiPPManager;

.field private final mHandler:Landroid/os/Handler;

.field private mHeading:I

.field public mHiston:Z

.field private mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private mInstantCaptureSnapShot:Z

.field private mIs3dnrMode:Z

.field private mIsBokehMode:Z

.field private mIsImageCaptureIntent:Z

.field public mJpegCallbackFinishTime:J

.field private mJpegFileSizeEstimation:I

.field private mJpegImageData:[B

.field private mJpegPictureCallbackTime:J

.field private mJpegRotation:I

.field private mLastJpegData:[B

.field private mLastJpegOrientation:I

.field private mLastPhotoTakenWithRefocus:Z

.field private mLocationManager:Lcom/android/camera/LocationManager;

.field private mLocationPromptTriggered:Z

.field private mLongPressWithoutSnap:Z

.field private mLongShotCaptureCount:I

.field private mLongShotCaptureCountLimit:I

.field private mLongshotActive:Z

.field private mLongshotSave:Z

.field private mLowCostBeauty:Z

.field private mMData:[F

.field private mManual3AEnabled:I

.field private mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

.field private final mMetaDataCallback:Lcom/android/camera/PhotoModule$MetaDataCallback;

.field private mMeteringAreaSupported:Z

.field private mMirror:Z

.field private final mMultiPPCallback:Lcom/android/camera/PhotoModule$MultiPPCallback;

.field private mNSBufferCount:I

.field private mNSCount:I

.field private mNSExifGot:Z

.field private mNSFlashFired:Z

.field private mNSHeight:I

.field private mNSStrideH:I

.field private mNSStrideW:I

.field private mNSWidth:I

.field private mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

.field private mOnMediaSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

.field private mOnResumeTime:J

.field private mOpenCameraFail:Z

.field private mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

.field private mOrientation:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPaused:Z

.field protected mPendingSwitchCameraId:I

.field public mPictureDisplayedToJpegCallbackTime:J

.field private final mPostViewPictureCallback:Lcom/android/camera/PhotoModule$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPrevSavedCDS:Ljava/lang/String;

.field private mPreviewRestartSupport:Z

.field private mQuickCapture:Z

.field private mR:[F

.field private final mRawPictureCallback:Lcom/android/camera/PhotoModule$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field private mReceivedSnapNum:I

.field private mRefocus:Z

.field private mRefocusSound:I

.field private mRemainingPhotos:I

.field private mRestartPreview:Z

.field private mRootView:Landroid/view/View;

.field private mSaveBokehXmp:Z

.field private mSaveUri:Landroid/net/Uri;

.field private mSavedFlashMode:Ljava/lang/String;

.field private mSavingThread:Lcom/android/camera/PhotoModule$SavingThread;

.field private mSceneMode:Ljava/lang/String;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShutterCallbackTime:J

.field public mShutterLag:J

.field public mShutterToPictureDisplayedTime:J

.field private mSingleBlurDegreeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSingleBokeh:Z

.field private mSnapshotMode:I

.field private mSnapshotOnIdle:Z

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

.field private final mStatsCallback:Lcom/android/camera/PhotoModule$StatsCallback;

.field private mTouchAfAecFlag:Z

.field private mUI:Lcom/android/camera/PhotoUI;

.field private mUpdateSet:I

.field private mZoomIdxTbl:[I

.field private mZoomValue:I

.field private mbrightness:I

.field private mbrightness_step:I

.field private mediaSaveNotifyThread:Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;

.field private selfieThread:Lcom/android/camera/PhotoModule$SelfieThread;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 160
    sput-boolean v4, Lcom/android/camera/PhotoModule;->mBrightnessVisible:Z

    .line 171
    const/16 v0, 0x101

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/PhotoModule;->statsdata:[I

    .line 262
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->isSkipMemoryCheckEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/PhotoModule;->PERSIST_SKIP_MEM_CHECK:Z

    .line 265
    const-string v0, "persist.camera.bokeh.debug"

    .line 266
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/PhotoModule;->PERSIST_BOKEH_DEBUG_CHECK:Z

    .line 557
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_HI1333:[I

    .line 558
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_OV13855:[I

    .line 559
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_HI846:[I

    .line 560
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_OV8856:[I

    .line 561
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_OV16880:[I

    .line 562
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_OV16885:[I

    .line 563
    const/4 v0, 0x6

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/PhotoModule;->NS_PARAMS_HI1333:[[I

    .line 571
    const/4 v0, 0x6

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/PhotoModule;->NS_PARAMS_OV13855:[[I

    .line 579
    const/4 v0, 0x6

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_12

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_13

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_14

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_15

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_16

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/PhotoModule;->NS_PARAMS_HI846:[[I

    .line 587
    const/4 v0, 0x7

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_18

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_19

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_1a

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_1b

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_1c

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/PhotoModule;->NS_PARAMS_OV8856:[[I

    .line 596
    const/4 v0, 0x7

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_1f

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_20

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_21

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_22

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_23

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_24

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_25

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/PhotoModule;->NS_PARAMS_OV16880:[[I

    .line 605
    const/16 v0, 0x8

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_26

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_27

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_28

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_29

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_2a

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_2b

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_2c

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_2d

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/PhotoModule;->NS_PARAMS_OV16885:[[I

    return-void

    .line 557
    :array_0
    .array-data 4
        0x122
        0x140
        0x15e
        0x177
        0x190
        0x1ae
        0x1fe
    .end array-data

    .line 558
    :array_1
    .array-data 4
        0x12c
        0x145
        0x163
        0x172
        0x190
        0x1cc
        0x1fe
    .end array-data

    .line 559
    :array_2
    .array-data 4
        0x127
        0x131
        0x139
        0x147
        0x168
        0x190
        0x1e0
    .end array-data

    .line 560
    :array_3
    .array-data 4
        0x140
        0x14a
        0x154
        0x15e
        0x174
        0x190
        0x1ae
        0x1f4
    .end array-data

    .line 561
    :array_4
    .array-data 4
        0x143
        0x154
        0x16b
        0x17d
        0x18e
        0x1a6
        0x1cc
        0x208
    .end array-data

    .line 562
    :array_5
    .array-data 4
        0x127
        0x140
        0x154
        0x16b
        0x17d
        0x18e
        0x1a6
        0x1cc
        0x1f4
    .end array-data

    .line 563
    :array_6
    .array-data 4
        0x2
        0x1
        0x20
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x3
        0x1
        0x20
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x4
        0x1
        0x20
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x5
        0x0
        0x20
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x6
        0x0
        0x20
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x6
        0x0
        0x20
        0x1
    .end array-data

    .line 571
    :array_c
    .array-data 4
        0x2
        0x1
        0x20
        0x1
    .end array-data

    :array_d
    .array-data 4
        0x3
        0x1
        0x20
        0x1
    .end array-data

    :array_e
    .array-data 4
        0x4
        0x1
        0x20
        0x1
    .end array-data

    :array_f
    .array-data 4
        0x4
        0x0
        0x20
        0x1
    .end array-data

    :array_10
    .array-data 4
        0x5
        0x0
        0x1e
        0x1
    .end array-data

    :array_11
    .array-data 4
        0x5
        0x0
        0x1e
        0x1
    .end array-data

    .line 579
    :array_12
    .array-data 4
        0x2
        0x3
        0x20
        0x1
    .end array-data

    :array_13
    .array-data 4
        0x3
        0x3
        0x20
        0x1
    .end array-data

    :array_14
    .array-data 4
        0x5
        0x2
        0x20
        0x1
    .end array-data

    :array_15
    .array-data 4
        0x6
        0x1
        0x1c
        0x1
    .end array-data

    :array_16
    .array-data 4
        0x9
        0x1
        0x1a
        0x1
    .end array-data

    :array_17
    .array-data 4
        0xa
        0x1
        0x1a
        0x1
    .end array-data

    .line 587
    :array_18
    .array-data 4
        0x7
        0x3
        0x20
        0x1
    .end array-data

    :array_19
    .array-data 4
        0x7
        0x3
        0x20
        0x1
    .end array-data

    :array_1a
    .array-data 4
        0x8
        0x3
        0x1e
        0x1
    .end array-data

    :array_1b
    .array-data 4
        0x9
        0x2
        0x1c
        0x1
    .end array-data

    :array_1c
    .array-data 4
        0xa
        0x1
        0x1a
        0x1
    .end array-data

    :array_1d
    .array-data 4
        0xa
        0x1
        0x1a
        0x1
    .end array-data

    :array_1e
    .array-data 4
        0xa
        0x1
        0x1a
        0x1
    .end array-data

    .line 596
    :array_1f
    .array-data 4
        0x1
        0xf
        0x20
        0x1
    .end array-data

    :array_20
    .array-data 4
        0x2
        0xf
        0x20
        0x1
    .end array-data

    :array_21
    .array-data 4
        0x3
        0xf
        0x21
        0x1
    .end array-data

    :array_22
    .array-data 4
        0x4
        0xf
        0x23
        0x1
    .end array-data

    :array_23
    .array-data 4
        0x5
        0x10
        0x26
        0x1
    .end array-data

    :array_24
    .array-data 4
        0x6
        0x10
        0x27
        0x1
    .end array-data

    :array_25
    .array-data 4
        0x7
        0x10
        0x27
        0x1
    .end array-data

    .line 605
    :array_26
    .array-data 4
        0x6
        0x5
        0x20
        0x1
    .end array-data

    :array_27
    .array-data 4
        0x7
        0x5
        0x20
        0x1
    .end array-data

    :array_28
    .array-data 4
        0x7
        0x6
        0x20
        0x1
    .end array-data

    :array_29
    .array-data 4
        0x7
        0x7
        0x20
        0x1
    .end array-data

    :array_2a
    .array-data 4
        0x7
        0x9
        0x20
        0x1
    .end array-data

    :array_2b
    .array-data 4
        0x8
        0xb
        0x22
        0x1
    .end array-data

    :array_2c
    .array-data 4
        0x8
        0xc
        0x24
        0x1
    .end array-data

    :array_2d
    .array-data 4
        0x8
        0xd
        0x24
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    .line 164
    iput v4, p0, Lcom/android/camera/PhotoModule;->mBurstSnapNum:I

    .line 165
    iput v2, p0, Lcom/android/camera/PhotoModule;->mReceivedSnapNum:I

    .line 166
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionEnabled:Z

    .line 172
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mHiston:Z

    .line 226
    iput v3, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 245
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mLongshotSave:Z

    .line 246
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mRefocus:Z

    .line 247
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mLastPhotoTakenWithRefocus:Z

    .line 248
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mInstantCaptureSnapShot:Z

    .line 253
    iput v3, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    .line 260
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 270
    iput v5, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    .line 271
    iput v4, p0, Lcom/android/camera/PhotoModule;->mbrightness_step:I

    .line 280
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/camera/PhotoModule;->SCE_FACTOR_STEP:I

    .line 282
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mPreviewRestartSupport:Z

    .line 295
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mLongshotActive:Z

    .line 305
    iput v2, p0, Lcom/android/camera/PhotoModule;->mLastJpegOrientation:I

    .line 307
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mIsBokehMode:Z

    .line 309
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mDepthSuccess:Z

    .line 310
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mSaveBokehXmp:Z

    .line 312
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mLongPressWithoutSnap:Z

    .line 320
    iput v2, p0, Lcom/android/camera/PhotoModule;->mNSCount:I

    .line 321
    iput v2, p0, Lcom/android/camera/PhotoModule;->mNSWidth:I

    .line 322
    iput v2, p0, Lcom/android/camera/PhotoModule;->mNSHeight:I

    .line 323
    iput v2, p0, Lcom/android/camera/PhotoModule;->mNSStrideW:I

    .line 324
    iput v2, p0, Lcom/android/camera/PhotoModule;->mNSStrideH:I

    .line 325
    iput v2, p0, Lcom/android/camera/PhotoModule;->mNSBufferCount:I

    .line 326
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mNSExifGot:Z

    .line 327
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mNSFlashFired:Z

    .line 330
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mIs3dnrMode:Z

    .line 333
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mBeautyShotEnable:Z

    .line 334
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mLowCostBeauty:Z

    .line 336
    iput v2, p0, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    .line 337
    new-instance v0, Lcom/android/camera/PhotoModule$MultiPPCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$MultiPPCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mMultiPPCallback:Lcom/android/camera/PhotoModule$MultiPPCallback;

    .line 367
    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    .line 370
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mCameraOpened:Z

    .line 384
    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    .line 442
    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mSavingThread:Lcom/android/camera/PhotoModule$SavingThread;

    .line 468
    iput v3, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    .line 469
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 474
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mLocationPromptTriggered:Z

    .line 476
    new-instance v0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$PostViewPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallback:Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    .line 478
    new-instance v0, Lcom/android/camera/PhotoModule$RawPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$RawPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallback:Lcom/android/camera/PhotoModule$RawPictureCallback;

    .line 480
    new-instance v0, Lcom/android/camera/PhotoModule$AutoFocusCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$AutoFocusCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mAutoFocusCallback:Lcom/android/camera/PhotoModule$AutoFocusCallback;

    .line 482
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    :goto_0
    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    .line 487
    new-instance v0, Lcom/android/camera/CameraErrorCallback;

    invoke-direct {v0}, Lcom/android/camera/CameraErrorCallback;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 488
    new-instance v0, Lcom/android/camera/PhotoModule$StatsCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$StatsCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mStatsCallback:Lcom/android/camera/PhotoModule$StatsCallback;

    .line 489
    new-instance v0, Lcom/android/camera/PhotoModule$MetaDataCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$MetaDataCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mMetaDataCallback:Lcom/android/camera/PhotoModule$MetaDataCallback;

    .line 510
    sget-object v0, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->TOUCH_AF_AEC_ON:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCurrTouchAfAec:Ljava/lang/String;

    .line 511
    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mSavedFlashMode:Ljava/lang/String;

    .line 513
    new-instance v0, Lcom/android/camera/PhotoModule$MainHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$MainHandler;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    .line 514
    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 520
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mGData:[F

    .line 521
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mMData:[F

    .line 522
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mR:[F

    .line 523
    iput v3, p0, Lcom/android/camera/PhotoModule;->mHeading:I

    .line 526
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mZoomIdxTbl:[I

    .line 528
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mCameraPreviewParamsReady:Z

    .line 530
    iput v2, p0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    .line 534
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mAnimateCapture:Z

    .line 536
    iput v2, p0, Lcom/android/camera/PhotoModule;->mJpegFileSizeEstimation:I

    .line 537
    iput v3, p0, Lcom/android/camera/PhotoModule;->mRemainingPhotos:I

    .line 541
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mBeauty:Z

    .line 542
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mDualBokeh:Z

    .line 543
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mSingleBokeh:Z

    .line 553
    iput-object v1, p0, Lcom/android/camera/PhotoModule;->exifraw:Lcom/android/camera/exif/ExifInterface;

    .line 670
    new-instance v0, Lcom/android/camera/PhotoModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$1;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mOnMediaSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    .line 2216
    new-instance v0, Lcom/android/camera/PhotoModule$4;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$4;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 2226
    new-instance v0, Lcom/android/camera/PhotoModule$5;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$5;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mBlurDegreeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 2246
    new-instance v0, Lcom/android/camera/PhotoModule$6;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$6;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSingleBlurDegreeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 6263
    new-instance v0, Lcom/android/camera/PhotoModule$36;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$36;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    return-void

    :cond_0
    move-object v0, v1

    .line 482
    goto :goto_0

    .line 526
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private UpdateManualExposureSettings()V
    .locals 27

    .prologue
    .line 5638
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->collapseCameraControls()Z

    .line 5639
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v14, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5640
    .local v14, "alert":Landroid/app/AlertDialog$Builder;
    new-instance v22, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 5641
    .local v22, "linear":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5642
    new-instance v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v13, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 5643
    .local v13, "ISOtext":Landroid/widget/TextView;
    new-instance v4, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v4, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 5644
    .local v4, "ISOinput":Landroid/widget/EditText;
    new-instance v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v11, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 5645
    .local v11, "ExpTimeText":Landroid/widget/TextView;
    new-instance v5, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v5, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 5646
    .local v5, "ExpTimeInput":Landroid/widget/EditText;
    const/4 v2, 0x2

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 5647
    const/16 v18, 0x2002

    .line 5648
    .local v18, "floatType":I
    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 5649
    const-string v2, "Manual Exposure Settings"

    invoke-virtual {v14, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5650
    const-string v2, "Cancel"

    new-instance v3, Lcom/android/camera/PhotoModule$32;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/camera/PhotoModule$32;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v14, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "min-iso"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 5660
    .local v8, "minISO":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "max-iso"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 5661
    .local v7, "maxISO":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getISOValue(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v20

    .line 5662
    .local v20, "isoMode":Ljava/lang/String;
    const-string v19, "manual"

    .line 5663
    .local v19, "isoManual":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "cur-iso"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 5664
    .local v16, "currentISO":Ljava/lang/String;
    if-eqz v16, :cond_0

    .line 5665
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current ISO is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5668
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "min-exposure-time"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 5669
    .local v9, "minExpTime":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "max-exposure-time"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5670
    .local v6, "maxExpTime":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "cur-exposure-time"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 5671
    .local v15, "currentExpTime":Ljava/lang/String;
    if-eqz v15, :cond_1

    .line 5672
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current exposure time is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5675
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0057

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 5677
    .local v21, "isoPriority":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0058

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 5679
    .local v17, "expTimePriority":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0059

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 5681
    .local v24, "userSetting":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_manual_exp_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v25, v0

    const v26, 0x7f0e0056

    .line 5683
    invoke-virtual/range {v25 .. v26}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 5681
    move-object/from16 v0, v25

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 5684
    .local v23, "manualExposureMode":Ljava/lang/String;
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "manual Exposure Mode selected = "

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5685
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5686
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter ISO in the range of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5687
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5688
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5689
    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 5690
    const-string v2, "Ok"

    new-instance v3, Lcom/android/camera/PhotoModule$33;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v7, v8}, Lcom/android/camera/PhotoModule$33;-><init>(Lcom/android/camera/PhotoModule;Landroid/widget/EditText;II)V

    invoke-virtual {v14, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5713
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5812
    :goto_0
    return-void

    .line 5714
    :cond_2
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5715
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter exposure time in the range of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5717
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5718
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5719
    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 5720
    const-string v2, "Ok"

    new-instance v3, Lcom/android/camera/PhotoModule$34;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v5, v6, v9}, Lcom/android/camera/PhotoModule$34;-><init>(Lcom/android/camera/PhotoModule;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5750
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 5751
    :cond_3
    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5752
    const-string v2, "Full manual mode - Enter both ISO and Exposure Time"

    invoke-virtual {v14, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5753
    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v12, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 5754
    .local v12, "ISORangeText":Landroid/widget/TextView;
    new-instance v10, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v10, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 5755
    .local v10, "ExpTimeRangeText":Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter ISO in the range of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5756
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter exposure time in the range of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5758
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5759
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5760
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5761
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5762
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5763
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5764
    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 5765
    const-string v25, "Ok"

    new-instance v2, Lcom/android/camera/PhotoModule$35;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/PhotoModule$35;-><init>(Lcom/android/camera/PhotoModule;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v14, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5803
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 5805
    .end local v10    # "ExpTimeRangeText":Landroid/widget/TextView;
    .end local v12    # "ISORangeText":Landroid/widget/TextView;
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    and-int/lit8 v2, v2, -0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    .line 5807
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "exposure-time"

    const-string v25, "0"

    move-object/from16 v0, v25

    invoke-virtual {v2, v3, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5808
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/16 v25, 0x0

    const-string v26, "pref_camera_iso_key"

    aput-object v26, v3, v25

    const/16 v25, 0x1

    const/16 v26, 0x0

    aput-object v26, v3, v25

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 5809
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->updateCommonManual3ASettings()V

    .line 5810
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    goto/16 :goto_0
.end method

.method private UpdateManualFocusSettings()V
    .locals 22

    .prologue
    .line 5354
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v3}, Lcom/android/camera/PhotoUI;->collapseCameraControls()Z

    .line 5355
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v10, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5356
    .local v10, "alert":Landroid/app/AlertDialog$Builder;
    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v15, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 5357
    .local v15, "linear":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5358
    const-string v3, "Manual Focus Settings"

    invoke-virtual {v10, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5359
    const-string v3, "Cancel"

    new-instance v4, Lcom/android/camera/PhotoModule$25;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/camera/PhotoModule$25;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v10, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5366
    new-instance v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v13, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 5367
    .local v13, "focusPositionText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e0068

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 5369
    .local v19, "scaleMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e0069

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 5371
    .local v11, "diopterMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_manual_focus_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v20, v0

    const v21, 0x7f0e0067

    .line 5373
    invoke-virtual/range {v20 .. v21}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 5371
    move-object/from16 v0, v20

    invoke-virtual {v3, v4, v0}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 5375
    .local v16, "manualFocusMode":Ljava/lang/String;
    const-string v3, "CAM_PhotoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "manualFocusMode selected = "

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5376
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5377
    new-instance v14, Landroid/widget/SeekBar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v14, v3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 5378
    .local v14, "focusbar":Landroid/widget/SeekBar;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "min-focus-pos-ratio"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 5379
    .local v8, "minFocusPos":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "max-focus-pos-ratio"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 5381
    .local v6, "maxFocusPos":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v3}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5382
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "cur-focus-scale"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 5383
    .local v2, "CurFocusPos":I
    invoke-virtual {v14, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 5384
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current focus position is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5386
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enter focus position in the range of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5389
    new-instance v3, Lcom/android/camera/PhotoModule$26;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v13}, Lcom/android/camera/PhotoModule$26;-><init>(Lcom/android/camera/PhotoModule;Landroid/widget/TextView;)V

    invoke-virtual {v14, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 5403
    invoke-virtual {v15, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5404
    invoke-virtual {v15, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5405
    invoke-virtual {v10, v15}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 5406
    const-string v3, "Ok"

    new-instance v4, Lcom/android/camera/PhotoModule$27;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v14}, Lcom/android/camera/PhotoModule$27;-><init>(Lcom/android/camera/PhotoModule;Landroid/widget/SeekBar;)V

    invoke-virtual {v10, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5420
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5480
    .end local v2    # "CurFocusPos":I
    .end local v6    # "maxFocusPos":I
    .end local v8    # "minFocusPos":I
    .end local v14    # "focusbar":Landroid/widget/SeekBar;
    :goto_0
    return-void

    .line 5421
    :cond_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5422
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "min-focus-pos-diopter"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 5423
    .local v18, "minFocusStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "max-focus-pos-diopter"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 5424
    .local v17, "maxFocusStr":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 5425
    .local v8, "minFocusPos":D
    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 5426
    .local v6, "maxFocusPos":D
    new-instance v5, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v5, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 5427
    .local v5, "input":Landroid/widget/EditText;
    const/16 v12, 0x2002

    .line 5428
    .local v12, "floatType":I
    invoke-virtual {v5, v12}, Landroid/widget/EditText;->setInputType(I)V

    .line 5429
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enter focus position in the range of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5432
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v3}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "cur-focus-diopter"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5434
    .local v2, "CurFocusPos":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current focus position is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5435
    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5436
    invoke-virtual {v15, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5437
    invoke-virtual {v10, v15}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 5438
    const-string v20, "Ok"

    new-instance v3, Lcom/android/camera/PhotoModule$28;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/PhotoModule$28;-><init>(Lcom/android/camera/PhotoModule;Landroid/widget/EditText;DD)V

    move-object/from16 v0, v20

    invoke-virtual {v10, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5472
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 5474
    .end local v2    # "CurFocusPos":Ljava/lang/String;
    .end local v5    # "input":Landroid/widget/EditText;
    .end local v6    # "maxFocusPos":D
    .end local v8    # "minFocusPos":D
    .end local v12    # "floatType":I
    .end local v17    # "maxFocusStr":Ljava/lang/String;
    .end local v18    # "minFocusStr":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    and-int/lit8 v3, v3, -0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    .line 5475
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v4}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 5476
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/16 v20, 0x0

    const-string v21, "pref_camera_focusmode_key"

    aput-object v21, v4, v20

    const/16 v20, 0x1

    const/16 v21, 0x0

    aput-object v21, v4, v20

    invoke-virtual {v3, v4}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 5477
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->updateCommonManual3ASettings()V

    .line 5478
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    goto/16 :goto_0
.end method

.method private UpdateManualWBSettings()V
    .locals 31

    .prologue
    .line 5484
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v5}, Lcom/android/camera/PhotoUI;->collapseCameraControls()Z

    .line 5485
    new-instance v16, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5486
    .local v16, "alert":Landroid/app/AlertDialog$Builder;
    new-instance v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 5487
    .local v21, "linear":Landroid/widget/LinearLayout;
    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5488
    const-string v5, "Manual White Balance Settings"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5489
    const-string v5, "Cancel"

    new-instance v6, Lcom/android/camera/PhotoModule$29;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/camera/PhotoModule$29;-><init>(Lcom/android/camera/PhotoModule;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5497
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v6, 0x7f0e0060

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 5499
    .local v17, "cctMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v6, 0x7f0e0061

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 5501
    .local v27, "rgbGainMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v6, "pref_camera_manual_wb_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v29, v0

    const v30, 0x7f0e005f

    .line 5503
    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 5501
    move-object/from16 v0, v29

    invoke-virtual {v5, v6, v0}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 5504
    .local v22, "manualWBMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v6, "pref_camera_whitebalance_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v29, v0

    const v30, 0x7f0e0387

    .line 5506
    invoke-virtual/range {v29 .. v30}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 5504
    move-object/from16 v0, v29

    invoke-virtual {v5, v6, v0}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 5507
    .local v28, "wbPref":Ljava/lang/String;
    const-string v5, "CAM_PhotoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "manualWBMode selected = "

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5508
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5509
    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v14, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 5510
    .local v14, "CCTtext":Landroid/widget/TextView;
    new-instance v4, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 5511
    .local v4, "CCTinput":Landroid/widget/EditText;
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 5512
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v6, "min-wb-cct"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v25

    .line 5513
    .local v25, "minCCT":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v6, "max-wb-cct"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 5516
    .local v23, "maxCCT":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v5}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5517
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v6, "wb-manual-cct"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 5518
    .local v18, "currentCCT":Ljava/lang/String;
    if-eqz v18, :cond_0

    .line 5519
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current CCT is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5521
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enter CCT value in the range of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5522
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5523
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5524
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 5525
    const-string v5, "Ok"

    new-instance v6, Lcom/android/camera/PhotoModule$30;

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v25

    invoke-direct {v6, v0, v4, v1, v2}, Lcom/android/camera/PhotoModule$30;-><init>(Lcom/android/camera/PhotoModule;Landroid/widget/EditText;II)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5549
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5634
    .end local v4    # "CCTinput":Landroid/widget/EditText;
    .end local v14    # "CCTtext":Landroid/widget/TextView;
    .end local v18    # "currentCCT":Ljava/lang/String;
    .end local v23    # "maxCCT":I
    .end local v25    # "minCCT":I
    :goto_0
    return-void

    .line 5550
    :cond_1
    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5551
    new-instance v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v15, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 5552
    .local v15, "RGBtext":Landroid/widget/TextView;
    new-instance v7, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v7, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 5553
    .local v7, "Rinput":Landroid/widget/EditText;
    const-string v5, "Enter R gain here"

    invoke-virtual {v7, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 5554
    new-instance v8, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v8, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 5555
    .local v8, "Ginput":Landroid/widget/EditText;
    const-string v5, "Enter G gain here"

    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 5556
    new-instance v9, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v9, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 5557
    .local v9, "Binput":Landroid/widget/EditText;
    const-string v5, "Enter B gain here"

    invoke-virtual {v9, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 5559
    const/16 v20, 0x2002

    .line 5560
    .local v20, "floatType":I
    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 5561
    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 5562
    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 5564
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v6, "min-wb-gain"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 5565
    .local v26, "minGainStr":Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 5566
    .local v12, "minGain":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v6, "max-wb-gain"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 5567
    .local v24, "maxGainStr":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 5570
    .local v10, "maxGain":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v5}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5571
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v6, "manual-wb-gains"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 5572
    .local v19, "currentGains":Ljava/lang/String;
    if-eqz v19, :cond_2

    .line 5573
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current RGB gains are "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5576
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enter RGB gains in the range of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5578
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5579
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5580
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5581
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5582
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 5583
    const-string v29, "Ok"

    new-instance v5, Lcom/android/camera/PhotoModule$31;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v13}, Lcom/android/camera/PhotoModule$31;-><init>(Lcom/android/camera/PhotoModule;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;DD)V

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5626
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 5629
    .end local v7    # "Rinput":Landroid/widget/EditText;
    .end local v8    # "Ginput":Landroid/widget/EditText;
    .end local v9    # "Binput":Landroid/widget/EditText;
    .end local v10    # "maxGain":D
    .end local v12    # "minGain":D
    .end local v15    # "RGBtext":Landroid/widget/TextView;
    .end local v19    # "currentGains":Ljava/lang/String;
    .end local v20    # "floatType":I
    .end local v24    # "maxGainStr":Ljava/lang/String;
    .end local v26    # "minGainStr":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    and-int/lit8 v5, v5, -0x3

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    .line 5630
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/16 v29, 0x0

    const-string v30, "pref_camera_whitebalance_key"

    aput-object v30, v6, v29

    const/16 v29, 0x1

    const/16 v30, 0x0

    aput-object v30, v6, v29

    invoke-virtual {v5, v6}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 5631
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->updateCommonManual3ASettings()V

    .line 5632
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    goto/16 :goto_0
.end method

.method static synthetic access$100(Lcom/android/camera/PhotoModule;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # [B

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->savePPPic([B)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mNSWidth:I

    return v0
.end method

.method static synthetic access$10000(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$10400(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->onResumeTasks()V

    return-void
.end method

.method static synthetic access$10500(Lcom/android/camera/PhotoModule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPrevSavedCDS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10600(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    return v0
.end method

.method static synthetic access$10602(Lcom/android/camera/PhotoModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    return p1
.end method

.method static synthetic access$10700(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCommonManual3ASettings()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mNSHeight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PreferenceGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/PhotoModule;[BII)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/PhotoModule;->flipJpeg([BII)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/PhotoModule;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLastJpegData:[B

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/camera/PhotoModule;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # [B

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mLastJpegData:[B

    return-object p1
.end method

.method static synthetic access$1702(Lcom/android/camera/PhotoModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/android/camera/PhotoModule;->mLastJpegOrientation:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOnMediaSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->openCamera()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$SelfieThread;)Lcom/android/camera/PhotoModule$SelfieThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Lcom/android/camera/PhotoModule$SelfieThread;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->selfieThread:Lcom/android/camera/PhotoModule$SelfieThread;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$OpenCameraThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mLongshotActive:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mLongshotActive:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateRemainingPhotos()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mediaSaveNotifyThread:Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;)Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mediaSaveNotifyThread:Lcom/android/camera/PhotoModule$MediaSaveNotifyThread;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->checkDisplayRotation()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupPreview()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/camera/PhotoModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showTapToFocusToast()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->startPreview()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->onCameraOpened()V

    return-void
.end method

.method static synthetic access$4102(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mOpenCameraFail:Z

    return p1
.end method

.method static synthetic access$4202(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mCameraDisabled:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/android/camera/PhotoModule;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ComboPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->onPreviewStarted()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->addNSCallbackBuffer()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MultiPPManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/android/camera/PhotoModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/android/camera/PhotoModule;->mNSBufferCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$NamedImages;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/android/camera/PhotoModule;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # [B

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mQuickCapture:Z

    return v0
.end method

.method static synthetic access$5400(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$5402(Lcom/android/camera/PhotoModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # J

    .prologue
    .line 146
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$5500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    return v0
.end method

.method static synthetic access$5700(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isLongshotNeedCancel()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mLongShotCaptureCount:I

    return v0
.end method

.method static synthetic access$5808(Lcom/android/camera/PhotoModule;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mLongShotCaptureCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/PhotoModule;->mLongShotCaptureCount:I

    return v0
.end method

.method static synthetic access$5900(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mLongShotCaptureCountLimit:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/camera/PhotoModule;Ljava/lang/String;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->getLocationAccordPictureFormat(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mLongshotSave:Z

    return v0
.end method

.method static synthetic access$6200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$RawPictureCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallback:Lcom/android/camera/PhotoModule$RawPictureCallback;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$PostViewPictureCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallback:Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->animateAfterShutter()V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mRefocus:Z

    return v0
.end method

.method static synthetic access$6600(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isShutterSoundOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mRefocusSound:I

    return v0
.end method

.method static synthetic access$6800(Lcom/android/camera/PhotoModule;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mNSExifGot:Z

    return v0
.end method

.method static synthetic access$7000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/GraphView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGraphView:Lcom/android/camera/GraphView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mNSExifGot:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/DrawAutoHDR;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mDrawAutoHDR:Lcom/android/camera/DrawAutoHDR;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mDepthSuccess:Z

    return v0
.end method

.method static synthetic access$7202(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mDepthSuccess:Z

    return p1
.end method

.method static synthetic access$7300(Lcom/android/camera/PhotoModule;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mBokehTipText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIs3dnrMode:Z

    return v0
.end method

.method static synthetic access$7500(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mNSFlashFired:Z

    return v0
.end method

.method static synthetic access$7502(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mNSFlashFired:Z

    return p1
.end method

.method static synthetic access$7600(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    return v0
.end method

.method static synthetic access$7602(Lcom/android/camera/PhotoModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    return p1
.end method

.method static synthetic access$7700(Lcom/android/camera/PhotoModule;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/camera/PhotoModule;->adjustNSParams(II)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$7802(Lcom/android/camera/PhotoModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # J

    .prologue
    .line 146
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$7900(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$7902(Lcom/android/camera/PhotoModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # J

    .prologue
    .line 146
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mNSStrideW:I

    return v0
.end method

.method static synthetic access$8000(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$8100(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsBokehMode:Z

    return v0
.end method

.method static synthetic access$8200()Z
    .locals 1

    .prologue
    .line 146
    sget-boolean v0, Lcom/android/camera/PhotoModule;->PERSIST_BOKEH_DEBUG_CHECK:Z

    return v0
.end method

.method static synthetic access$8300(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mSaveBokehXmp:Z

    return v0
.end method

.method static synthetic access$8400(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mInstantCaptureSnapShot:Z

    return v0
.end method

.method static synthetic access$8402(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mInstantCaptureSnapShot:Z

    return p1
.end method

.method static synthetic access$8500(Lcom/android/camera/PhotoModule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mReceivedSnapNum:I

    return v0
.end method

.method static synthetic access$8602(Lcom/android/camera/PhotoModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/android/camera/PhotoModule;->mReceivedSnapNum:I

    return p1
.end method

.method static synthetic access$8700(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$8702(Lcom/android/camera/PhotoModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # J

    .prologue
    .line 146
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$8800(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mSnapshotMode:I

    return v0
.end method

.method static synthetic access$8900(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mBurstSnapNum:I

    return v0
.end method

.method static synthetic access$8902(Lcom/android/camera/PhotoModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/android/camera/PhotoModule;->mBurstSnapNum:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mNSStrideH:I

    return v0
.end method

.method static synthetic access$9000(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPreviewRestartSupport:Z

    return v0
.end method

.method static synthetic access$9100(Lcom/android/camera/PhotoModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    return-void
.end method

.method static synthetic access$9202(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mLastPhotoTakenWithRefocus:Z

    return p1
.end method

.method static synthetic access$9300(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mBeautyShotEnable:Z

    return v0
.end method

.method static synthetic access$9400(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAnimateCapture:Z

    return v0
.end method

.method static synthetic access$9506(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mRemainingPhotos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/PhotoModule;->mRemainingPhotos:I

    return v0
.end method

.method static synthetic access$9600(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    return v0
.end method

.method static synthetic access$9700(Lcom/android/camera/PhotoModule;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mDebugUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/android/camera/PhotoModule;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # [B

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->saveToDebugUri([B)V

    return-void
.end method

.method static synthetic access$9900(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 146
    iget v0, p0, Lcom/android/camera/PhotoModule;->mHeading:I

    return v0
.end method

.method public static addExifTags([BI)[B
    .locals 5
    .param p0, "jpeg"    # [B
    .param p1, "orientationInDegree"    # I

    .prologue
    .line 1710
    new-instance v1, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v1}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    .line 1711
    .local v1, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-virtual {v1, p1}, Lcom/android/camera/exif/ExifInterface;->addOrientationTag(I)Z

    .line 1712
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1714
    .local v2, "jpegOut":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {v1, p0, v2}, Lcom/android/camera/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1718
    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 1715
    :catch_0
    move-exception v0

    .line 1716
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "CAM_PhotoModule"

    const-string v4, "Could not write EXIF"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private addIdleHandler()V
    .locals 2

    .prologue
    .line 1308
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    if-nez v1, :cond_0

    .line 1309
    new-instance v1, Lcom/android/camera/PhotoModule$3;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$3;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 1317
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 1318
    .local v0, "queue":Landroid/os/MessageQueue;
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1320
    .end local v0    # "queue":Landroid/os/MessageQueue;
    :cond_0
    return-void
.end method

.method private addNSCallbackBuffer()V
    .locals 5

    .prologue
    .line 6364
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addNSCallbackBuffer, buffer count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/PhotoModule;->mNSBufferCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6365
    iget v2, p0, Lcom/android/camera/PhotoModule;->mNSBufferCount:I

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    invoke-virtual {v3}, Lcom/android/camera/MultiPPManager;->getNumOfShot()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 6366
    const-string v2, "CAM_PhotoModule"

    const-string v3, "NS buffer is enough"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6373
    :goto_0
    return-void

    .line 6369
    :cond_0
    iget v2, p0, Lcom/android/camera/PhotoModule;->mNSBufferCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/PhotoModule;->mNSBufferCount:I

    .line 6370
    iget v2, p0, Lcom/android/camera/PhotoModule;->mNSStrideW:I

    iget v3, p0, Lcom/android/camera/PhotoModule;->mNSStrideH:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/lit16 v1, v2, 0x800

    .line 6371
    .local v1, "bufferSize":I
    new-array v0, v1, [B

    .line 6372
    .local v0, "buffer":[B
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->addRawImageCallbackBuffer([B)V

    goto :goto_0
.end method

.method private adjustNSParams(II)V
    .locals 6
    .param p1, "lux"    # I
    .param p2, "cameraID"    # I

    .prologue
    .line 6304
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/cameraModuleInfo"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x100

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 6305
    .local v2, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 6306
    .local v0, "line_one":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 6308
    .local v1, "line_two":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 6309
    if-nez p2, :cond_3

    if-eqz v0, :cond_3

    .line 6310
    const-string v3, "ov13855"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 6311
    sget-object v3, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_OV13855:[I

    sget-object v4, Lcom/android/camera/PhotoModule;->NS_PARAMS_OV13855:[[I

    invoke-direct {p0, p1, v3, v4}, Lcom/android/camera/PhotoModule;->setNSParam(I[I[[I)V

    .line 6334
    .end local v0    # "line_one":Ljava/lang/String;
    .end local v1    # "line_two":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :goto_0
    return-void

    .line 6312
    .restart local v0    # "line_one":Ljava/lang/String;
    .restart local v1    # "line_two":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :cond_0
    const-string v3, "hi1333"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 6313
    sget-object v3, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_HI1333:[I

    sget-object v4, Lcom/android/camera/PhotoModule;->NS_PARAMS_HI1333:[[I

    invoke-direct {p0, p1, v3, v4}, Lcom/android/camera/PhotoModule;->setNSParam(I[I[[I)V

    goto :goto_0

    .line 6332
    .end local v0    # "line_one":Ljava/lang/String;
    .end local v1    # "line_two":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 6314
    .restart local v0    # "line_one":Ljava/lang/String;
    .restart local v1    # "line_two":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :cond_1
    const-string v3, "ov16885"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 6315
    sget-object v3, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_OV16885:[I

    sget-object v4, Lcom/android/camera/PhotoModule;->NS_PARAMS_OV16885:[[I

    invoke-direct {p0, p1, v3, v4}, Lcom/android/camera/PhotoModule;->setNSParam(I[I[[I)V

    goto :goto_0

    .line 6317
    :cond_2
    const-string v3, "CAM_PhotoModule"

    const-string v4, "unknown sensor name."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6319
    :cond_3
    const/4 v3, 0x1

    if-ne p2, v3, :cond_7

    if-eqz v1, :cond_7

    .line 6320
    const-string v3, "ov8856"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_4

    .line 6321
    sget-object v3, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_OV8856:[I

    sget-object v4, Lcom/android/camera/PhotoModule;->NS_PARAMS_OV8856:[[I

    invoke-direct {p0, p1, v3, v4}, Lcom/android/camera/PhotoModule;->setNSParam(I[I[[I)V

    goto :goto_0

    .line 6322
    :cond_4
    const-string v3, "hi846"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_5

    .line 6323
    sget-object v3, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_HI846:[I

    sget-object v4, Lcom/android/camera/PhotoModule;->NS_PARAMS_HI846:[[I

    invoke-direct {p0, p1, v3, v4}, Lcom/android/camera/PhotoModule;->setNSParam(I[I[[I)V

    goto :goto_0

    .line 6324
    :cond_5
    const-string v3, "ov16880"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_6

    .line 6325
    sget-object v3, Lcom/android/camera/PhotoModule;->LUX_IDX_TABLE_OV16880:[I

    sget-object v4, Lcom/android/camera/PhotoModule;->NS_PARAMS_OV16880:[[I

    invoke-direct {p0, p1, v3, v4}, Lcom/android/camera/PhotoModule;->setNSParam(I[I[[I)V

    goto :goto_0

    .line 6327
    :cond_6
    const-string v3, "CAM_PhotoModule"

    const-string v4, "unknown sensor name."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6330
    :cond_7
    const-string v3, "CAM_PhotoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown camera ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private animateAfterShutter()V
    .locals 1

    .prologue
    .line 2356
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    .line 2357
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->animateFlash()V

    .line 2359
    :cond_0
    return-void
.end method

.method private canTakePicture()Z
    .locals 4

    .prologue
    .line 3785
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v0

    const-wide/32 v2, 0x3c00000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkDisplayRotation()V
    .locals 4

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    if-eq v0, v1, :cond_0

    .line 696
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setDisplayOrientation()V

    .line 698
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/PhotoModule;->mOnResumeTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 699
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/PhotoModule$2;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$2;-><init>(Lcom/android/camera/PhotoModule;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 706
    :cond_1
    return-void
.end method

.method private closeCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3937
    const-string v0, "CAM_PhotoModule"

    const-string v1, "Close camera device."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3938
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    .line 3939
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 3940
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0, v2, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;)V

    .line 3941
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 3943
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isForceReleaseCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3945
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->strongRelease()V

    .line 3950
    :goto_0
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 3951
    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 3952
    invoke-direct {p0, v3}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 3953
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_1

    .line 3954
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onCameraReleased()V

    .line 3958
    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mCameraOpened:Z

    .line 3960
    return-void

    .line 3947
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    goto :goto_0
.end method

.method private estimateJpegFileSize(Landroid/hardware/Camera$Size;Ljava/lang/String;)I
    .locals 6
    .param p1, "size"    # Landroid/hardware/Camera$Size;
    .param p2, "quality"    # Ljava/lang/String;

    .prologue
    .line 4836
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800c1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 4837
    .local v3, "ratios":[I
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800c0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 4839
    .local v1, "qualities":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 4840
    .local v2, "ratio":I
    array-length v4, v3

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 4841
    aget-object v4, v1, v0

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4842
    aget v2, v3, v0

    .line 4847
    :cond_0
    if-nez v2, :cond_2

    .line 4848
    const/4 v4, 0x0

    .line 4850
    :goto_1
    return v4

    .line 4840
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4850
    :cond_2
    iget v4, p1, Landroid/hardware/Camera$Size;->width:I

    iget v5, p1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x3

    div-int/2addr v4, v2

    goto :goto_1
.end method

.method private flipJpeg([BII)[B
    .locals 10
    .param p1, "jpegData"    # [B
    .param p2, "orientation"    # I
    .param p3, "jpegOrientation"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 1690
    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1691
    .local v0, "srcBitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1692
    .local v5, "m":Landroid/graphics/Matrix;
    const/16 v2, 0x10e

    if-eq p2, v2, :cond_0

    const/16 v2, 0x5a

    if-ne p2, v2, :cond_2

    .line 1694
    :cond_0
    if-eqz p3, :cond_1

    const/16 v2, 0xb4

    if-ne p3, v2, :cond_3

    .line 1695
    :cond_1
    invoke-virtual {v5, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1700
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1701
    .local v7, "dstBitmap":Landroid/graphics/Bitmap;
    const/16 v1, 0xa0

    invoke-virtual {v7, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1702
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v9, v1, v2

    .line 1703
    .local v9, "size":I
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1704
    .local v8, "outStream":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v7, v1, v2, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1706
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 1697
    .end local v7    # "dstBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "outStream":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "size":I
    :cond_3
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0
.end method

.method private getLocationAccordPictureFormat(Ljava/lang/String;)Landroid/location/Location;
    .locals 1
    .param p1, "pictureFormat"    # Ljava/lang/String;

    .prologue
    .line 2629
    if-eqz p1, :cond_0

    const-string v0, "jpeg"

    .line 2630
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2631
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 2633
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I
    .locals 2
    .param p1, "preferences"    # Lcom/android/camera/ComboPreferences;

    .prologue
    .line 2637
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 2638
    .local v0, "intentCameraId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2643
    .end local v0    # "intentCameraId":I
    :goto_0
    return v0

    .restart local v0    # "intentCameraId":I
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_0
.end method

.method private initializeCapabilities()V
    .locals 2

    .prologue
    .line 5989
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->isFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

    .line 5990
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->isMeteringAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mMeteringAreaSupported:Z

    .line 5991
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->isAutoExposureLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAeLockSupported:Z

    .line 5992
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->isAutoWhiteBalanceLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAwbLockSupported:Z

    .line 5993
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mContinuousFocusSupported:Z

    .line 5995
    return-void
.end method

.method private initializeControlByIntent()V
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->initializeControlByIntent()V

    .line 914
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 915
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupCaptureParams()V

    .line 917
    :cond_0
    return-void
.end method

.method private initializeFirstTime()V
    .locals 4

    .prologue
    .line 1247
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v2, :cond_1

    .line 1278
    :cond_0
    :goto_0
    return-void

    .line 1252
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_recordlocation_key"

    invoke-static {v2, v3}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 1254
    .local v0, "recordLocation":Z
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v2, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1256
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->initializeFirstTime()V

    .line 1257
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v1

    .line 1260
    .local v1, "s":Lcom/android/camera/MediaSaveService;
    if-eqz v1, :cond_2

    .line 1261
    invoke-virtual {v1, p0}, Lcom/android/camera/MediaSaveService;->setListener(Lcom/android/camera/MediaSaveService$Listener;)V

    .line 1264
    :cond_2
    new-instance v2, Lcom/android/camera/PhotoModule$NamedImages;

    invoke-direct {v2}, Lcom/android/camera/PhotoModule$NamedImages;-><init>()V

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 1265
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v3, 0x7f0d00a5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/GraphView;

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mGraphView:Lcom/android/camera/GraphView;

    .line 1266
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v3, 0x7f0d00a6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/DrawAutoHDR;

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mDrawAutoHDR:Lcom/android/camera/DrawAutoHDR;

    .line 1267
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mGraphView:Lcom/android/camera/GraphView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mDrawAutoHDR:Lcom/android/camera/DrawAutoHDR;

    if-nez v2, :cond_4

    .line 1268
    :cond_3
    const-string v2, "CAM_PhotoModule"

    const-string v3, "mGraphView or mDrawAutoHDR is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    .line 1275
    const-string v2, "CAM_PhotoModule"

    const-string v3, "addIdleHandler in first time initialization"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->addIdleHandler()V

    goto :goto_0

    .line 1270
    :cond_4
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mGraphView:Lcom/android/camera/GraphView;

    invoke-virtual {v2, p0}, Lcom/android/camera/GraphView;->setPhotoModuleObject(Lcom/android/camera/PhotoModule;)V

    .line 1271
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mDrawAutoHDR:Lcom/android/camera/DrawAutoHDR;

    invoke-virtual {v2, p0}, Lcom/android/camera/DrawAutoHDR;->setPhotoModuleObject(Lcom/android/camera/PhotoModule;)V

    goto :goto_1
.end method

.method private initializeFocusManager()V
    .locals 9

    .prologue
    const/4 v0, 0x1

    .line 3714
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_0

    .line 3715
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 3725
    :goto_0
    return-void

    .line 3717
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    aget-object v8, v1, v3

    .line 3718
    .local v8, "info":Landroid/hardware/Camera$CameraInfo;
    iget v1, v8, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v0, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mMirror:Z

    .line 3719
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 3721
    .local v2, "defaultFocusModes":[Ljava/lang/String;
    new-instance v0, Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget-boolean v5, p0, Lcom/android/camera/PhotoModule;->mMirror:Z

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 3723
    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/FocusOverlayManager;-><init>(Lcom/android/camera/ComboPreferences;[Ljava/lang/String;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusOverlayManager$Listener;ZLandroid/os/Looper;Lcom/android/camera/FocusOverlayManager$FocusUI;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    goto :goto_0

    .line 3718
    .end local v2    # "defaultFocusModes":[Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private initializeSecondTime()V
    .locals 4

    .prologue
    .line 1284
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_recordlocation_key"

    invoke-static {v2, v3}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 1286
    .local v0, "recordLocation":Z
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v2, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1287
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v1

    .line 1288
    .local v1, "s":Lcom/android/camera/MediaSaveService;
    if-eqz v1, :cond_0

    .line 1289
    invoke-virtual {v1, p0}, Lcom/android/camera/MediaSaveService;->setListener(Lcom/android/camera/MediaSaveService$Listener;)V

    .line 1291
    :cond_0
    new-instance v2, Lcom/android/camera/PhotoModule$NamedImages;

    invoke-direct {v2}, Lcom/android/camera/PhotoModule$NamedImages;-><init>()V

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 1292
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v2, :cond_1

    .line 1293
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->showSwitcher()V

    .line 1295
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->initializeSecondTime(Landroid/hardware/Camera$Parameters;)V

    .line 1296
    return-void
.end method

.method private initiateSnap()V
    .locals 4

    .prologue
    .line 3372
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_selfie_flash_key"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e009f

    .line 3373
    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3372
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 3374
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    .line 3375
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 3376
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->startSelfieFlash()V

    .line 3377
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->selfieThread:Lcom/android/camera/PhotoModule$SelfieThread;

    if-nez v0, :cond_0

    .line 3378
    new-instance v0, Lcom/android/camera/PhotoModule$SelfieThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$SelfieThread;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->selfieThread:Lcom/android/camera/PhotoModule$SelfieThread;

    .line 3379
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->selfieThread:Lcom/android/camera/PhotoModule$SelfieThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$SelfieThread;->start()V

    .line 3384
    :cond_0
    :goto_0
    return-void

    .line 3382
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->doSnap()V

    goto :goto_0
.end method

.method private isInstantCaptureEnabled()Z
    .locals 5

    .prologue
    .line 4109
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_instant_capture_key"

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e006f

    .line 4111
    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4109
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4112
    .local v0, "instantCapture":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0e0072

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4114
    const/4 v1, 0x0

    .line 4116
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isLongshotNeedCancel()Z
    .locals 20

    .prologue
    .line 1361
    sget-boolean v14, Lcom/android/camera/PhotoModule;->PERSIST_SKIP_MEM_CHECK:Z

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 1362
    const/4 v14, 0x0

    .line 1396
    :goto_0
    return v14

    .line 1365
    :cond_0
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v14

    const-wide/32 v16, 0x3c00000

    cmp-long v14, v14, v16

    if-gtz v14, :cond_1

    .line 1366
    const-string v14, "CAM_PhotoModule"

    const-string v15, "current storage is full"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    const/4 v14, 0x1

    goto :goto_0

    .line 1369
    :cond_1
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/camera/PhotoModule;->SECONDARY_SERVER_MEM:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_2

    .line 1370
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v15, "activity"

    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 1372
    .local v2, "am":Landroid/app/ActivityManager;
    new-instance v8, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v8}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1373
    .local v8, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v2, v8}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1374
    iget-wide v14, v8, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/camera/PhotoModule;->SECONDARY_SERVER_MEM:J

    .line 1377
    .end local v2    # "am":Landroid/app/ActivityManager;
    .end local v8    # "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v12

    .line 1378
    .local v12, "totalMemory":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v6

    .line 1379
    .local v6, "maxMemory":J
    sub-long v10, v6, v12

    .line 1381
    .local v10, "remainMemory":J
    new-instance v9, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v9}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 1382
    .local v9, "reader":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 1383
    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    move-result-object v3

    .line 1384
    .local v3, "info":[J
    const/4 v14, 0x1

    aget-wide v14, v3, v14

    const/16 v16, 0x3

    aget-wide v16, v3, v16

    add-long v14, v14, v16

    const-wide/16 v16, 0x400

    mul-long v4, v14, v16

    .line 1386
    .local v4, "availMem":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/camera/PhotoModule;->SECONDARY_SERVER_MEM:J

    cmp-long v14, v4, v14

    if-lez v14, :cond_3

    const-wide/32 v14, 0x2800000

    cmp-long v14, v10, v14

    if-gtz v14, :cond_4

    .line 1387
    :cond_3
    const-string v14, "CAM_PhotoModule"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "cancel longshot: free="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget-wide v16, v3, v16

    const-wide/16 v18, 0x400

    mul-long v16, v16, v18

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " cached="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x3

    aget-wide v16, v3, v16

    const-wide/16 v18, 0x400

    mul-long v16, v16, v18

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " threshold="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->SECONDARY_SERVER_MEM:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/camera/PhotoModule;->mLongshotActive:Z

    .line 1391
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e01ff

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v14

    .line 1392
    invoke-virtual {v14}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1393
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 1396
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method private isShutterSoundOn()Z
    .locals 3

    .prologue
    .line 3361
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_shuttersound_key"

    .line 3362
    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IconListPreference;

    .line 3363
    .local v0, "shutterSoundPref":Lcom/android/camera/IconListPreference;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3364
    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "disable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3365
    const/4 v1, 0x0

    .line 3367
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private keepScreenOnAwhile()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 5968
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 5969
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5970
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5971
    return-void
.end method

.method private loadCameraPreferences()V
    .locals 15

    .prologue
    const v14, 0x7f0200f6

    const v13, 0x7f0200f4

    .line 3046
    new-instance v7, Lcom/android/camera/CameraSettings;

    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget v11, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    .line 3047
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v12

    invoke-direct {v7, v9, v10, v11, v12}, Lcom/android/camera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    .line 3048
    .local v7, "settings":Lcom/android/camera/CameraSettings;
    const/high16 v9, 0x7f060000

    invoke-virtual {v7, v9}, Lcom/android/camera/CameraSettings;->getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 3050
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v6

    .line 3052
    .local v6, "numOfCams":I
    const-string v9, "CAM_PhotoModule"

    const-string v10, "loadCameraPreferences() updating camera_id pref"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v10, "pref_camera_id_key"

    .line 3055
    invoke-virtual {v9, v10}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v8

    check-cast v8, Lcom/android/camera/IconListPreference;

    .line 3059
    .local v8, "switchIconPref":Lcom/android/camera/IconListPreference;
    if-nez v8, :cond_0

    .line 3087
    :goto_0
    return-void

    .line 3062
    :cond_0
    new-array v2, v6, [I

    .line 3063
    .local v2, "iconIds":[I
    new-array v0, v6, [Ljava/lang/String;

    .line 3064
    .local v0, "entries":[Ljava/lang/String;
    new-array v4, v6, [Ljava/lang/String;

    .line 3065
    .local v4, "labels":[Ljava/lang/String;
    new-array v5, v6, [I

    .line 3067
    .local v5, "largeIconIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_2

    .line 3068
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v9

    aget-object v3, v9, v1

    .line 3069
    .local v3, "info":Landroid/hardware/Camera$CameraInfo;
    iget v9, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v9, :cond_1

    .line 3070
    aput v13, v2, v1

    .line 3071
    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0343

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v1

    .line 3072
    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e03be

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v1

    .line 3073
    aput v13, v5, v1

    .line 3067
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3075
    :cond_1
    aput v14, v2, v1

    .line 3076
    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0344

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v1

    .line 3077
    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e03bf

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v1

    .line 3078
    aput v14, v5, v1

    goto :goto_2

    .line 3082
    .end local v3    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_2
    invoke-virtual {v8, v2}, Lcom/android/camera/IconListPreference;->setIconIds([I)V

    .line 3083
    invoke-virtual {v8, v0}, Lcom/android/camera/IconListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 3084
    invoke-virtual {v8, v4}, Lcom/android/camera/IconListPreference;->setLabels([Ljava/lang/CharSequence;)V

    .line 3085
    invoke-virtual {v8, v5}, Lcom/android/camera/IconListPreference;->setLargeIconIds([I)V

    goto :goto_0
.end method

.method private locationFirstRun()V
    .locals 4

    .prologue
    .line 938
    const/4 v1, 0x0

    .line 939
    .local v1, "enableRecordingLocation":Z
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 941
    const/4 v1, 0x1

    .line 945
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_recordlocation_key"

    invoke-static {v2, v3}, Lcom/android/camera/RecordLocationPreference;->isSet(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 947
    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mLocationPromptTriggered:Z

    if-eqz v2, :cond_3

    .line 963
    :cond_2
    :goto_0
    return-void

    .line 951
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 952
    .local v0, "backCameraId":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 957
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mLocationPromptTriggered:Z

    .line 962
    invoke-virtual {p0, v1}, Lcom/android/camera/PhotoModule;->enableRecordingLocation(Z)V

    goto :goto_0
.end method

.method private needRestart()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 4088
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    .line 4089
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_zsl_key"

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e002a

    .line 4090
    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4089
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4091
    .local v0, "zsl":Ljava/lang/String;
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mSnapshotMode:I

    sget v2, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_ZSL:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v1, :cond_0

    .line 4094
    const-string v1, "CAM_PhotoModule"

    const-string v2, "Switching to ZSL Camera Mode. Restart Preview"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4095
    iput-boolean v5, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    .line 4096
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    .line 4105
    :goto_0
    return v1

    .line 4098
    :cond_0
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/PhotoModule;->mSnapshotMode:I

    sget v2, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_NONZSL:I

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v1, :cond_1

    .line 4101
    const-string v1, "CAM_PhotoModule"

    const-string v2, "Switching to Normal Camera Mode. Restart Preview"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4102
    iput-boolean v5, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    .line 4103
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    goto :goto_0

    .line 4105
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    goto :goto_0
.end method

.method private static notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pref"    # Lcom/android/camera/ListPreference;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 5816
    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCameraOpened()V
    .locals 2

    .prologue
    .line 1043
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1050
    :goto_0
    return-void

    .line 1046
    :cond_0
    const-string v0, "CAM_PhotoModule"

    const-string v1, "onCameraOpened"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->openCameraCommon()V

    .line 1048
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->resizeForPreviewAspectRatio()V

    .line 1049
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->updateFocusManager(Lcom/android/camera/PhotoUI;)V

    goto :goto_0
.end method

.method private onPreviewStarted()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 920
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 933
    :goto_0
    return-void

    .line 923
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 924
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStarted()V

    .line 925
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->startFaceDetection()V

    .line 926
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->locationFirstRun()V

    .line 928
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    const-string v1, "hdr"

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsBokehMode:Z

    if-eqz v0, :cond_2

    .line 929
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->showWaitingProgress(Z)V

    .line 932
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/PhotoUI;->enableShutter(Z)V

    goto :goto_0
.end method

.method private onResumeTasks()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 3557
    const-string v2, "CAM_PhotoModule"

    const-string v3, "Executing onResumeTasks."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3558
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mOpenCameraFail:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mCameraDisabled:Z

    if-eqz v2, :cond_1

    .line 3604
    :cond_0
    :goto_0
    return-void

    .line 3560
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    if-nez v2, :cond_2

    .line 3561
    new-instance v2, Lcom/android/camera/PhotoModule$OpenCameraThread;

    invoke-direct {v2, p0, v4}, Lcom/android/camera/PhotoModule$OpenCameraThread;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    .line 3562
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    invoke-virtual {v2}, Lcom/android/camera/PhotoModule$OpenCameraThread;->start()V

    .line 3565
    :cond_2
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    if-nez v2, :cond_3

    .line 3566
    new-instance v2, Lcom/android/camera/PhotoModule$StartPreviewThread;

    invoke-direct {v2, p0, v4}, Lcom/android/camera/PhotoModule$StartPreviewThread;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    .line 3567
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    invoke-virtual {v2}, Lcom/android/camera/PhotoModule$StartPreviewThread;->start()V

    .line 3570
    :cond_3
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    sget-object v3, Lcom/android/camera/PhotoUI$SURFACE_STATUS;->SURFACE_VIEW:Lcom/android/camera/PhotoUI$SURFACE_STATUS;

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->applySurfaceChange(Lcom/android/camera/PhotoUI$SURFACE_STATUS;)V

    .line 3572
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J

    .line 3573
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    .line 3577
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-nez v2, :cond_6

    .line 3578
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3582
    :goto_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->initDisplayChangeListener()V

    .line 3583
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->keepScreenOnAwhile()V

    .line 3584
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/PhotoUI;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;)V

    .line 3587
    const-string v2, "Camera"

    const-string v3, "PhotoModule"

    invoke-static {v2, v3}, Lcom/android/camera/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 3590
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 3591
    .local v0, "gsensor":Landroid/hardware/Sensor;
    if-eqz v0, :cond_4

    .line 3592
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0, v0, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 3595
    :cond_4
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 3596
    .local v1, "msensor":Landroid/hardware/Sensor;
    if-eqz v1, :cond_5

    .line 3597
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0, v1, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 3600
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/PhotoModule;->mOnResumeTime:J

    .line 3601
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->checkDisplayRotation()V

    .line 3603
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->isCaptureAnimationEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mAnimateCapture:Z

    goto :goto_0

    .line 3580
    .end local v0    # "gsensor":Landroid/hardware/Sensor;
    .end local v1    # "msensor":Landroid/hardware/Sensor;
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeSecondTime()V

    goto :goto_1
.end method

.method private openCamera()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3444
    iget-boolean v3, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v3, :cond_0

    .line 3489
    :goto_0
    return-void

    .line 3447
    :cond_0
    const-string v3, "CAM_PhotoModule"

    const-string v4, "Open camera device."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3448
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v4, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 3450
    invoke-virtual {v6}, Lcom/android/camera/CameraActivity;->getCameraOpenErrorCallback()Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

    move-result-object v6

    .line 3448
    invoke-static {v3, v4, v5, v6}, Lcom/android/camera/util/CameraUtil;->openCamera(Landroid/app/Activity;ILandroid/os/Handler;Lcom/android/camera/CameraManager$CameraOpenErrorCallback;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 3451
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v3, :cond_2

    .line 3452
    const-string v1, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open camera:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3454
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mCameraOpened:Z

    .line 3456
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v1, :cond_1

    .line 3457
    const-string v1, "CAM_PhotoModule"

    const-string v2, "camera paused, don\'t send fail message"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3458
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->finish()V

    goto :goto_0

    .line 3462
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3466
    :cond_2
    const/4 v0, 0x0

    .line 3467
    .local v0, "isKeyguardSecure":Z
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "facelock_unlock_device"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_4

    move v0, v1

    .line 3470
    :goto_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 3471
    const-string v2, "CAM_PhotoModule"

    const-string v3, "camera paused, finish activity"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3472
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->finish()V

    .line 3476
    :cond_3
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3477
    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mCameraPreviewParamsReady:Z

    .line 3478
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 3479
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-nez v2, :cond_5

    .line 3480
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeFocusManager()V

    .line 3484
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeCapabilities()V

    .line 3486
    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mCameraOpened:Z

    .line 3488
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 3467
    goto :goto_1

    .line 3482
    :cond_5
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/FocusOverlayManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_2
.end method

.method private openCameraCommon()V
    .locals 6

    .prologue
    .line 1126
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->loadCameraPreferences()V

    .line 1128
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object v4, p0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/PhotoUI;->onCameraOpened(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;Lcom/android/camera/TsMakeupManager$MakeupLevelListener;)V

    .line 1129
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "pref_camera_hdr_plus_key"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e0352

    .line 1131
    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1130
    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 1133
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraSettings()V

    .line 1134
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showTapToFocusToastIfNeeded()V

    .line 1135
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->resetManual3ASettings()V

    .line 1136
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->resetMiscSettings()V

    .line 1137
    return-void
.end method

.method private overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "flashMode"    # Ljava/lang/String;
    .param p2, "whiteBalance"    # Ljava/lang/String;
    .param p3, "focusMode"    # Ljava/lang/String;
    .param p4, "exposureMode"    # Ljava/lang/String;
    .param p5, "touchMode"    # Ljava/lang/String;
    .param p6, "autoExposure"    # Ljava/lang/String;
    .param p7, "saturation"    # Ljava/lang/String;
    .param p8, "contrast"    # Ljava/lang/String;
    .param p9, "sharpness"    # Ljava/lang/String;
    .param p10, "coloreffect"    # Ljava/lang/String;
    .param p11, "sceneMode"    # Ljava/lang/String;
    .param p12, "redeyeReduction"    # Ljava/lang/String;
    .param p13, "aeBracketing"    # Ljava/lang/String;

    .prologue
    .line 3029
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/16 v1, 0x1a

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "pref_camera_flashmode_key"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string v3, "pref_camera_whitebalance_key"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    const/4 v2, 0x4

    const-string v3, "pref_camera_focusmode_key"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p3, v1, v2

    const/4 v2, 0x6

    const-string v3, "pref_camera_exposure_key"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object p4, v1, v2

    const/16 v2, 0x8

    const-string v3, "pref_camera_touchafaec_key"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    aput-object p5, v1, v2

    const/16 v2, 0xa

    const-string v3, "pref_camera_autoexposure_key"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    aput-object p6, v1, v2

    const/16 v2, 0xc

    const-string v3, "pref_camera_saturation_key"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    aput-object p7, v1, v2

    const/16 v2, 0xe

    const-string v3, "pref_camera_contrast_key"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    aput-object p8, v1, v2

    const/16 v2, 0x10

    const-string v3, "pref_camera_sharpness_key"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    aput-object p9, v1, v2

    const/16 v2, 0x12

    const-string v3, "pref_camera_coloreffect_key"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    aput-object p10, v1, v2

    const/16 v2, 0x14

    const-string v3, "pref_camera_scenemode_key"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    aput-object p11, v1, v2

    const/16 v2, 0x16

    const-string v3, "pref_camera_redeyereduction_key"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    aput-object p12, v1, v2

    const/16 v2, 0x18

    const-string v3, "pref_camera_ae_bracket_hdr_key"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    aput-object p13, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 3043
    return-void
.end method

.method private qcomUpdateAdvancedFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ubiFocus"    # Ljava/lang/String;
    .param p2, "chromaFlash"    # Ljava/lang/String;
    .param p3, "reFocus"    # Ljava/lang/String;
    .param p4, "optiZoom"    # Ljava/lang/String;
    .param p5, "fssr"    # Ljava/lang/String;
    .param p6, "truePortrait"    # Ljava/lang/String;
    .param p7, "multiTouchFocus"    # Ljava/lang/String;
    .param p8, "stillMore"    # Ljava/lang/String;

    .prologue
    .line 4127
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4128
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getSupportedAFBracketingModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 4127
    invoke-static {p1, v0}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4129
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "af-bracket"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4131
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4132
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getSupportedChromaFlashModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 4131
    invoke-static {p2, v0}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4133
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "chroma-flash"

    invoke-virtual {v0, v1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4135
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4136
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getSupportedOptiZoomModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 4135
    invoke-static {p4, v0}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4137
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "opti-zoom"

    invoke-virtual {v0, v1, p4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4139
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4140
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getSupportedRefocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 4139
    invoke-static {p3, v0}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4141
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "re-focus"

    invoke-virtual {v0, v1, p3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4143
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4144
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getSupportedFSSRModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 4143
    invoke-static {p5, v0}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4145
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "FSSR"

    invoke-virtual {v0, v1, p5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4147
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4148
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getSupportedTruePortraitModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 4147
    invoke-static {p6, v0}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4149
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "true-portrait"

    invoke-virtual {v0, v1, p6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4151
    :cond_5
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4152
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getSupportedMultiTouchFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 4151
    invoke-static {p7, v0}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4153
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "multi-touch-focus"

    invoke-virtual {v0, v1, p7}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4155
    :cond_6
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4156
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getSupportedStillMoreModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 4155
    invoke-static {p8, v0}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4157
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "still-more"

    invoke-virtual {v0, v1, p8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4159
    :cond_7
    return-void
.end method

.method private qcomUpdateCameraParametersPreference()V
    .locals 64

    .prologue
    .line 4165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "luma-adaptation"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/PhotoModule;->mbrightness:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v12, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4167
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_longshot_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e01fd

    .line 4169
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4167
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 4170
    .local v46, "longshot_enable":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "long-shot"

    move-object/from16 v0, v46

    invoke-virtual {v3, v12, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e0044

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v47

    .line 4174
    .local v47, "optizoomOn":Ljava/lang/String;
    const-string v3, "auto"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "hdr"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 4175
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "sports"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 4177
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "flowers"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 4178
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 4180
    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 4182
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_touchafaec_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e0112

    .line 4184
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4182
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    .line 4185
    .local v62, "touchAfAec":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4186
    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedTouchAfAec(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    .line 4185
    move-object/from16 v0, v62

    invoke-static {v0, v3}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4187
    move-object/from16 v0, v62

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mCurrTouchAfAec:Ljava/lang/String;

    .line 4188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, v62

    invoke-static {v3, v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setTouchAfAec(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4195
    .end local v62    # "touchAfAec":Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getTouchAfAec(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v3

    sget-object v12, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->TOUCH_AF_AEC_ON:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 4196
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/PhotoModule;->mTouchAfAecFlag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4206
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_pictureformat_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e0144

    .line 4208
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4206
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 4211
    .local v49, "pictureFormat":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v3, :cond_2

    const-string v3, "jpeg"

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4212
    const-string v49, "jpeg"

    .line 4213
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v3}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v35

    .line 4214
    .local v35, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_camera_pictureformat_key"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v14, 0x7f0e018d

    .line 4215
    invoke-virtual {v12, v14}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 4214
    move-object/from16 v0, v35

    invoke-interface {v0, v3, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4216
    invoke-interface/range {v35 .. v35}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4218
    .end local v35    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    const-string v3, "CAM_PhotoModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Picture format value ="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v49

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "picture-format"

    move-object/from16 v0, v49

    invoke-virtual {v3, v12, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4222
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_jpegquality_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e0143

    .line 4224
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4222
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 4226
    .local v45, "jpegQuality":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v48

    .line 4227
    .local v48, "pic_size":Landroid/hardware/Camera$Size;
    if-nez v48, :cond_2b

    .line 4228
    const-string v3, "CAM_PhotoModule"

    const-string v12, "error getPictureSize: size is null"

    invoke-static {v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4261
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_selectablezoneaf_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e002b

    .line 4263
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4261
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 4264
    .local v54, "selectableZoneAf":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedSelectableZoneAf(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v59

    .line 4265
    .local v59, "str":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4266
    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedSelectableZoneAf(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    .line 4265
    move-object/from16 v0, v54

    invoke-static {v0, v3}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4267
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, v54

    invoke-static {v3, v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setSelectableZoneAf(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4271
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedDenoiseModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 4272
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_denoise_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e00e5

    .line 4273
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4272
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 4274
    .local v21, "Denoise":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setDenoise(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4277
    .end local v21    # "Denoise":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_redeyereduction_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e00a3

    .line 4279
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4277
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 4280
    .local v51, "redeyeReduction":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4281
    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedRedeyeReductionModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    .line 4280
    move-object/from16 v0, v51

    invoke-static {v0, v3}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4282
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, v51

    invoke-static {v3, v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setRedeyeReductionMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4285
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_7

    .line 4286
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_iso_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e00e8

    .line 4288
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4286
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 4289
    .local v43, "iso":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4290
    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    .line 4289
    move-object/from16 v0, v43

    invoke-static {v0, v3}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4291
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, v43

    invoke-static {v3, v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4295
    .end local v43    # "iso":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_coloreffect_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e00fe

    .line 4297
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4295
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 4298
    .local v31, "colorEffect":Ljava/lang/String;
    const-string v3, "CAM_PhotoModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Color effect value ="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4299
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-static {v0, v3}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 4304
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_saturation_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e0141

    .line 4306
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4304
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 4307
    .local v53, "saturationStr":Ljava/lang/String;
    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v52

    .line 4308
    .local v52, "saturation":I
    const-string v3, "CAM_PhotoModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Saturation value ="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v52

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4309
    if-ltz v52, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getMaxSaturation(Landroid/hardware/Camera$Parameters;)I

    move-result v3

    move/from16 v0, v52

    if-gt v0, v3, :cond_9

    .line 4310
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move/from16 v0, v52

    invoke-static {v3, v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setSaturation(Landroid/hardware/Camera$Parameters;I)V

    .line 4313
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_contrast_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e013f

    .line 4315
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4313
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 4316
    .local v33, "contrastStr":Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    .line 4317
    .local v32, "contrast":I
    const-string v3, "CAM_PhotoModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Contrast value ="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4318
    if-ltz v32, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getMaxContrast(Landroid/hardware/Camera$Parameters;)I

    move-result v3

    move/from16 v0, v32

    if-gt v0, v3, :cond_a

    .line 4319
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move/from16 v0, v32

    invoke-static {v3, v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setContrast(Landroid/hardware/Camera$Parameters;I)V

    .line 4322
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_sharpness_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e013d

    .line 4324
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4322
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 4325
    .local v56, "sharpnessStr":Ljava/lang/String;
    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4326
    invoke-static {v12}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getMaxSharpness(Landroid/hardware/Camera$Parameters;)I

    move-result v12

    div-int/lit8 v12, v12, 0x6

    mul-int v55, v3, v12

    .line 4327
    .local v55, "sharpness":I
    const-string v3, "CAM_PhotoModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Sharpness value ="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v55

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4328
    if-ltz v55, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getMaxSharpness(Landroid/hardware/Camera$Parameters;)I

    move-result v3

    move/from16 v0, v55

    if-gt v0, v3, :cond_b

    .line 4329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move/from16 v0, v55

    invoke-static {v3, v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setSharpness(Landroid/hardware/Camera$Parameters;I)V

    .line 4332
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_facerc_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e011d

    .line 4334
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4332
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 4335
    .local v38, "faceRC":Ljava/lang/String;
    const-string v3, "CAM_PhotoModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Face Recognition value = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4336
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4337
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getSupportedFaceRecognitionModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    .line 4336
    move-object/from16 v0, v38

    invoke-static {v0, v3}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 4338
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "face-recognition"

    move-object/from16 v0, v38

    invoke-virtual {v3, v12, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4341
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_ae_bracket_hdr_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e00bb

    .line 4343
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4341
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 4344
    .local v23, "aeBracketing":Ljava/lang/String;
    const-string v3, "CAM_PhotoModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "AE Bracketing value ="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4346
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getSupportedAEBracketingModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    .line 4345
    move-object/from16 v0, v23

    invoke-static {v0, v3}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 4347
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "ae-bracket-hdr"

    move-object/from16 v0, v23

    invoke-virtual {v3, v12, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4351
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_cds_mode_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e0095

    .line 4353
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4351
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 4354
    .local v30, "cds":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPrevSavedCDS:Ljava/lang/String;

    if-nez v3, :cond_e

    if-eqz v30, :cond_e

    .line 4355
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mPrevSavedCDS:Ljava/lang/String;

    .line 4357
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4358
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getSupportedCDSModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    .line 4357
    move-object/from16 v0, v30

    invoke-static {v0, v3}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 4359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "cds-mode"

    move-object/from16 v0, v30

    invoke-virtual {v3, v12, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4363
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_tnr_mode_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e0099

    .line 4365
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4363
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    .line 4366
    .local v61, "tnr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4367
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getSupportedTNRModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    .line 4366
    move-object/from16 v0, v61

    invoke-static {v0, v3}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 4368
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e008b

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v61

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 4370
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "cds-mode"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e0080

    .line 4371
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4370
    invoke-virtual {v3, v12, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4372
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v12, Lcom/android/camera/PhotoModule$14;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/camera/PhotoModule$14;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4379
    if-eqz v30, :cond_10

    .line 4380
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mPrevSavedCDS:Ljava/lang/String;

    .line 4382
    :cond_10
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/PhotoModule;->isTNREnabled:Z

    .line 4394
    :cond_11
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "tnr-mode"

    move-object/from16 v0, v61

    invoke-virtual {v3, v12, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4398
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_hdr_mode_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e0208

    .line 4400
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4398
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 4401
    .local v39, "hdrMode":Ljava/lang/String;
    const-string v3, "CAM_PhotoModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "HDR Mode value ="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v39

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4402
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4403
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getSupportedHDRModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    .line 4402
    move-object/from16 v0, v39

    invoke-static {v0, v3}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 4404
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "hdr-mode"

    move-object/from16 v0, v39

    invoke-virtual {v3, v12, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4408
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_hdr_need_1x_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e020e

    .line 4410
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4408
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 4411
    .local v40, "hdrNeed1x":Ljava/lang/String;
    const-string v3, "CAM_PhotoModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "HDR need 1x value ="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v40

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4412
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4413
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getSupportedHDRNeed1x(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    .line 4412
    move-object/from16 v0, v40

    invoke-static {v0, v3}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 4414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "hdr-need-1x"

    move-object/from16 v0, v40

    invoke-virtual {v3, v12, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4418
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_advanced_features_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e0035

    .line 4420
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4418
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4421
    .local v4, "advancedFeature":Ljava/lang/String;
    const-string v3, "CAM_PhotoModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " advancedFeature value ="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4423
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/PhotoModule;->mRefocus:Z

    .line 4424
    if-eqz v4, :cond_15

    .line 4425
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e0049

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 4427
    .local v13, "ubiFocusOff":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e004b

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4429
    .local v5, "chromaFlashOff":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e004c

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 4431
    .local v7, "optiZoomOff":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e004a

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 4433
    .local v6, "reFocusOff":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e004d

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 4435
    .local v8, "fssrOff":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e004e

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4437
    .local v9, "truePortraitOff":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e004f

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 4439
    .local v10, "multiTouchFocusOff":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e0050

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 4442
    .local v11, "stillMoreOff":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e0041

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    move-object/from16 v3, p0

    .line 4444
    invoke-direct/range {v3 .. v11}, Lcom/android/camera/PhotoModule;->qcomUpdateAdvancedFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4535
    .end local v5    # "chromaFlashOff":Ljava/lang/String;
    .end local v6    # "reFocusOff":Ljava/lang/String;
    .end local v7    # "optiZoomOff":Ljava/lang/String;
    .end local v8    # "fssrOff":Ljava/lang/String;
    .end local v9    # "truePortraitOff":Ljava/lang/String;
    .end local v10    # "multiTouchFocusOff":Ljava/lang/String;
    .end local v11    # "stillMoreOff":Ljava/lang/String;
    .end local v13    # "ubiFocusOff":Ljava/lang/String;
    :cond_15
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e0046

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4536
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 4538
    sget-object v3, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->FACE_DETECTION_ON:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4539
    invoke-static {v12}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedFaceDetectionModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v12

    .line 4538
    invoke-static {v3, v12}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 4540
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v12, Lcom/android/camera/PhotoModule$16;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/camera/PhotoModule$16;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4548
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v12, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->FACE_DETECTION_ON:Ljava/lang/String;

    invoke-static {v3, v12}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setFaceDetectionMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4550
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/PhotoModule;->mFaceDetectionEnabled:Z

    if-nez v3, :cond_16

    .line 4551
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/PhotoModule;->mFaceDetectionEnabled:Z

    .line 4552
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->startFaceDetection()V

    .line 4584
    :cond_16
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_autoexposure_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e000a

    .line 4586
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4584
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 4587
    .local v25, "autoExposure":Ljava/lang/String;
    const-string v3, "CAM_PhotoModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "autoExposure value ="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4588
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4589
    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedAutoexposure(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    .line 4588
    move-object/from16 v0, v25

    invoke-static {v0, v3}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 4590
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4594
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_antibanding_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e00f9

    .line 4596
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4594
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 4597
    .local v24, "antiBanding":Ljava/lang/String;
    const-string v3, "CAM_PhotoModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "antiBanding value ="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4598
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-static {v0, v3}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4599
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 4602
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_zsl_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e002a

    .line 4603
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4602
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    .line 4604
    .local v63, "zsl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_auto_hdr_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e03bb

    .line 4605
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4604
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 4606
    .local v26, "auto_hdr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3}, Lcom/android/camera/util/CameraUtil;->isAutoHDRSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 4607
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "auto-hdr-enable"

    move-object/from16 v0, v26

    invoke-virtual {v3, v12, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4608
    const-string v3, "enable"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 4609
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v12, Lcom/android/camera/PhotoModule$18;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/camera/PhotoModule$18;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4616
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "asd"

    invoke-virtual {v3, v12}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 4617
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mMetaDataCallback:Lcom/android/camera/PhotoModule$MetaDataCallback;

    invoke-interface {v3, v12}, Lcom/android/camera/CameraManager$CameraProxy;->setMetadataCb(Landroid/hardware/Camera$CameraMetaDataCallback;)V

    .line 4630
    :cond_19
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, v63

    invoke-static {v3, v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4631
    const-string v3, "on"

    move-object/from16 v0, v63

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedZSLModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3b

    .line 4633
    sget v3, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_ZSL:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/PhotoModule;->mSnapshotMode:I

    .line 4634
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x1

    invoke-static {v3, v12}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setCameraMode(Landroid/hardware/Camera$Parameters;I)V

    .line 4635
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Lcom/android/camera/FocusOverlayManager;->setZslEnable(Z)V

    .line 4638
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "picture-format"

    const-string v14, "jpeg"

    invoke-virtual {v3, v12, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4641
    const-string v3, "continuous-picture"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4642
    invoke-virtual {v12}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v12

    .line 4641
    invoke-static {v3, v12}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_39

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 4642
    invoke-virtual {v3}, Lcom/android/camera/FocusOverlayManager;->isTouch()Z

    move-result v3

    if-nez v3, :cond_39

    .line 4643
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const-string v12, "continuous-picture"

    invoke-virtual {v3, v12}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 4644
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "continuous-picture"

    invoke-virtual {v3, v12}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 4653
    :goto_7
    const-string v3, "jpeg"

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 4654
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v12, Lcom/android/camera/PhotoModule$20;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/camera/PhotoModule$20;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4672
    :cond_1a
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_instant_capture_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e006f

    .line 4674
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4672
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 4676
    .local v42, "instantCapture":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e0072

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 4678
    const-string v3, "on"

    move-object/from16 v0, v63

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e0040

    .line 4679
    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 4680
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/PhotoModule;->mInstantCaptureSnapShot:Z

    if-nez v3, :cond_1b

    .line 4682
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e0072

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 4699
    :cond_1b
    :goto_9
    const-string v3, "CAM_PhotoModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Instant capture = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v42

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ", mInstantCaptureSnapShot = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/PhotoModule;->mInstantCaptureSnapShot:Z

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4701
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "instant-capture"

    move-object/from16 v0, v42

    invoke-virtual {v3, v12, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4704
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_histogram_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e01d8

    .line 4706
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4704
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 4707
    .local v41, "histogram":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4708
    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedHistogramModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    .line 4707
    move-object/from16 v0, v41

    invoke-static {v0, v3}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v3, :cond_1c

    .line 4710
    const-string v3, "enable"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 4711
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v12, Lcom/android/camera/PhotoModule$22;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/camera/PhotoModule$22;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4719
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mStatsCallback:Lcom/android/camera/PhotoModule$StatsCallback;

    invoke-interface {v3, v12}, Lcom/android/camera/CameraManager$CameraProxy;->setHistogramMode(Landroid/hardware/Camera$CameraDataCallback;)V

    .line 4720
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/PhotoModule;->mHiston:Z

    .line 4733
    :cond_1c
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->setFlipValue()V

    .line 4736
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "ae-bracket-hdr"

    invoke-virtual {v3, v12}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 4737
    .local v22, "aeBracket":Ljava/lang/String;
    if-eqz v22, :cond_1d

    const-string v3, "off"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 4738
    const-string v36, "off"

    .line 4739
    .local v36, "fMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 4742
    .end local v36    # "fMode":Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v3}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    const-string v12, "continuous-picture"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 4743
    invoke-virtual {v3}, Lcom/android/camera/FocusOverlayManager;->isFocusCompleted()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 4744
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v3}, Lcom/android/camera/PhotoUI;->clearFocus()V

    .line 4747
    :cond_1e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v14, "pref_camera_bokeh_mode_key"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/PhotoModule;->mCameraId:I

    const/4 v15, 0x3

    if-ne v3, v15, :cond_3e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e02d8

    .line 4752
    invoke-virtual {v3, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4747
    :goto_b
    invoke-virtual {v12, v14, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 4755
    .local v28, "bokehMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_bokeh_mpo_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e02da

    .line 4757
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4755
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 4758
    .local v29, "bokehMpo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v50

    .line 4759
    .local v50, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "pref_camera_bokeh_blur_degree_key"

    const/16 v12, 0x32

    move-object/from16 v0, v50

    invoke-interface {v0, v3, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v27

    .line 4760
    .local v27, "bokehBlurDegree":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isBokehModeSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v60

    .line 4761
    .local v60, "supportBokeh":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v12, Lcom/android/camera/PhotoModule$24;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/camera/PhotoModule$24;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4770
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e02d9

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 4772
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/PhotoModule;->mIsBokehMode:Z

    .line 4773
    const-string v3, "on"

    move-object/from16 v0, v63

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 4774
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "on"

    invoke-static {v3, v12}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4776
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v3

    const-string v12, "auto"

    if-eq v3, v12, :cond_20

    .line 4777
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "auto"

    invoke-virtual {v3, v12}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 4779
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v3

    const-string v12, "off"

    if-eq v3, v12, :cond_21

    .line 4780
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "off"

    invoke-virtual {v3, v12}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 4782
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "long-shot"

    invoke-virtual {v3, v12}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v14, 0x7f0e0353

    invoke-virtual {v12, v14}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 4783
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "long-shot"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e0352

    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v12, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4785
    :cond_22
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    if-eqz v3, :cond_23

    .line 4786
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    .line 4791
    :cond_23
    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "bokeh-mode"

    move-object/from16 v0, v28

    invoke-virtual {v3, v12, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4792
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "bokeh-mpo-mode"

    move-object/from16 v0, v29

    invoke-virtual {v3, v12, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4793
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "bokeh-blur-value"

    move/from16 v0, v27

    invoke-virtual {v3, v12, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 4796
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_asus_single_bokeh_mode_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e02d4

    .line 4798
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4796
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 4800
    .local v58, "singleBokehMode":Ljava/lang/String;
    const-string v3, "pref_asus_single_bokeh_blur_degree_key"

    const/16 v12, 0x32

    move-object/from16 v0, v50

    invoke-interface {v0, v3, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v57

    .line 4810
    .local v57, "singleBokehBlurDegree":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e02d9

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 4812
    const-string v3, "on"

    move-object/from16 v0, v63

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 4813
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "on"

    invoke-static {v3, v12}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4815
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v3

    const-string v12, "auto"

    if-eq v3, v12, :cond_25

    .line 4816
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "auto"

    invoke-virtual {v3, v12}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 4818
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v3

    const-string v12, "off"

    if-eq v3, v12, :cond_26

    .line 4819
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "off"

    invoke-virtual {v3, v12}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 4821
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "long-shot"

    invoke-virtual {v3, v12}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v14, 0x7f0e0353

    invoke-virtual {v12, v14}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 4822
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "long-shot"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e0352

    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v12, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4824
    :cond_27
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    if-eqz v3, :cond_28

    .line 4825
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    .line 4828
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "asus_bokeh"

    move-object/from16 v0, v58

    invoke-virtual {v3, v12, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4829
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "asus_bokeh_value"

    move/from16 v0, v57

    invoke-virtual {v3, v12, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 4831
    const-string v3, "CAM_PhotoModule"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Bokeh Mode = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " bokehMpo = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " bokehBlurDegree = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4833
    return-void

    .line 4191
    .end local v4    # "advancedFeature":Ljava/lang/String;
    .end local v22    # "aeBracket":Ljava/lang/String;
    .end local v23    # "aeBracketing":Ljava/lang/String;
    .end local v24    # "antiBanding":Ljava/lang/String;
    .end local v25    # "autoExposure":Ljava/lang/String;
    .end local v26    # "auto_hdr":Ljava/lang/String;
    .end local v27    # "bokehBlurDegree":I
    .end local v28    # "bokehMode":Ljava/lang/String;
    .end local v29    # "bokehMpo":Ljava/lang/String;
    .end local v30    # "cds":Ljava/lang/String;
    .end local v31    # "colorEffect":Ljava/lang/String;
    .end local v32    # "contrast":I
    .end local v33    # "contrastStr":Ljava/lang/String;
    .end local v38    # "faceRC":Ljava/lang/String;
    .end local v39    # "hdrMode":Ljava/lang/String;
    .end local v40    # "hdrNeed1x":Ljava/lang/String;
    .end local v41    # "histogram":Ljava/lang/String;
    .end local v42    # "instantCapture":Ljava/lang/String;
    .end local v45    # "jpegQuality":Ljava/lang/String;
    .end local v48    # "pic_size":Landroid/hardware/Camera$Size;
    .end local v49    # "pictureFormat":Ljava/lang/String;
    .end local v50    # "prefs":Landroid/content/SharedPreferences;
    .end local v51    # "redeyeReduction":Ljava/lang/String;
    .end local v52    # "saturation":I
    .end local v53    # "saturationStr":Ljava/lang/String;
    .end local v54    # "selectableZoneAf":Ljava/lang/String;
    .end local v55    # "sharpness":I
    .end local v56    # "sharpnessStr":Ljava/lang/String;
    .end local v57    # "singleBokehBlurDegree":I
    .end local v58    # "singleBokehMode":Ljava/lang/String;
    .end local v59    # "str":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v60    # "supportBokeh":Z
    .end local v61    # "tnr":Ljava/lang/String;
    .end local v63    # "zsl":Ljava/lang/String;
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v12, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->TOUCH_AF_AEC_OFF:Ljava/lang/String;

    invoke-static {v3, v12}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setTouchAfAec(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4192
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v3}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    goto/16 :goto_0

    .line 4198
    :cond_2a
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/PhotoModule;->mTouchAfAecFlag:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 4199
    :catch_0
    move-exception v34

    .line 4200
    .local v34, "e":Ljava/lang/Exception;
    const-string v3, "CAM_PhotoModule"

    const-string v12, "Handled NULL pointer Exception"

    invoke-static {v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4231
    .end local v34    # "e":Ljava/lang/Exception;
    .restart local v45    # "jpegQuality":Ljava/lang/String;
    .restart local v48    # "pic_size":Landroid/hardware/Camera$Size;
    .restart local v49    # "pictureFormat":Ljava/lang/String;
    :cond_2b
    const-string v3, "100"

    move-object/from16 v0, v45

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    move-object/from16 v0, v48

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    const/16 v12, 0xc80

    if-lt v3, v12, :cond_2c

    .line 4233
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/camera/PhotoModule$11;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/camera/PhotoModule$11;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v3, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 4240
    :cond_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/camera/PhotoModule$12;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/camera/PhotoModule$12;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v3, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static/range {v45 .. v45}, Lcom/android/camera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v3, v12}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 4247
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoModule;->estimateJpegFileSize(Landroid/hardware/Camera$Size;Ljava/lang/String;)I

    move-result v44

    .line 4248
    .local v44, "jpegFileSize":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/PhotoModule;->mJpegFileSizeEstimation:I

    move/from16 v0, v44

    if-eq v0, v3, :cond_3

    .line 4249
    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/PhotoModule;->mJpegFileSizeEstimation:I

    .line 4250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/camera/PhotoModule$13;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/camera/PhotoModule$13;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v3, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 4383
    .end local v44    # "jpegFileSize":I
    .restart local v23    # "aeBracketing":Ljava/lang/String;
    .restart local v30    # "cds":Ljava/lang/String;
    .restart local v31    # "colorEffect":Ljava/lang/String;
    .restart local v32    # "contrast":I
    .restart local v33    # "contrastStr":Ljava/lang/String;
    .restart local v38    # "faceRC":Ljava/lang/String;
    .restart local v51    # "redeyeReduction":Ljava/lang/String;
    .restart local v52    # "saturation":I
    .restart local v53    # "saturationStr":Ljava/lang/String;
    .restart local v54    # "selectableZoneAf":Ljava/lang/String;
    .restart local v55    # "sharpness":I
    .restart local v56    # "sharpnessStr":Ljava/lang/String;
    .restart local v59    # "str":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v61    # "tnr":Ljava/lang/String;
    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/PhotoModule;->isTNREnabled:Z

    if-eqz v3, :cond_11

    .line 4384
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "cds-mode"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mPrevSavedCDS:Ljava/lang/String;

    invoke-virtual {v3, v12, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4385
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v12, Lcom/android/camera/PhotoModule$15;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/camera/PhotoModule$15;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4392
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/PhotoModule;->isTNREnabled:Z

    goto/16 :goto_3

    .line 4452
    .restart local v4    # "advancedFeature":Ljava/lang/String;
    .restart local v5    # "chromaFlashOff":Ljava/lang/String;
    .restart local v6    # "reFocusOff":Ljava/lang/String;
    .restart local v7    # "optiZoomOff":Ljava/lang/String;
    .restart local v8    # "fssrOff":Ljava/lang/String;
    .restart local v9    # "truePortraitOff":Ljava/lang/String;
    .restart local v10    # "multiTouchFocusOff":Ljava/lang/String;
    .restart local v11    # "stillMoreOff":Ljava/lang/String;
    .restart local v13    # "ubiFocusOff":Ljava/lang/String;
    .restart local v39    # "hdrMode":Ljava/lang/String;
    .restart local v40    # "hdrNeed1x":Ljava/lang/String;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e0043

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    move-object/from16 v12, p0

    move-object v14, v4

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    .line 4454
    invoke-direct/range {v12 .. v20}, Lcom/android/camera/PhotoModule;->qcomUpdateAdvancedFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4462
    :cond_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e0042

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    move-object/from16 v12, p0

    move-object v14, v5

    move-object v15, v4

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    .line 4464
    invoke-direct/range {v12 .. v20}, Lcom/android/camera/PhotoModule;->qcomUpdateAdvancedFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4472
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/PhotoModule;->mRefocus:Z

    goto/16 :goto_4

    .line 4473
    :cond_30
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e0044

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    move-object/from16 v12, p0

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v4

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    .line 4475
    invoke-direct/range {v12 .. v20}, Lcom/android/camera/PhotoModule;->qcomUpdateAdvancedFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4483
    :cond_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e0045

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    move-object/from16 v12, p0

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v4

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    .line 4485
    invoke-direct/range {v12 .. v20}, Lcom/android/camera/PhotoModule;->qcomUpdateAdvancedFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4493
    :cond_32
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e0046

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    move-object/from16 v12, p0

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v4

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    .line 4495
    invoke-direct/range {v12 .. v20}, Lcom/android/camera/PhotoModule;->qcomUpdateAdvancedFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4503
    :cond_33
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e0047

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    move-object/from16 v12, p0

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v4

    move-object/from16 v20, v11

    .line 4505
    invoke-direct/range {v12 .. v20}, Lcom/android/camera/PhotoModule;->qcomUpdateAdvancedFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4513
    :cond_34
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e0048

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    move-object/from16 v12, p0

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v4

    .line 4515
    invoke-direct/range {v12 .. v20}, Lcom/android/camera/PhotoModule;->qcomUpdateAdvancedFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_35
    move-object/from16 v12, p0

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    .line 4524
    invoke-direct/range {v12 .. v20}, Lcom/android/camera/PhotoModule;->qcomUpdateAdvancedFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4558
    .end local v5    # "chromaFlashOff":Ljava/lang/String;
    .end local v6    # "reFocusOff":Ljava/lang/String;
    .end local v7    # "optiZoomOff":Ljava/lang/String;
    .end local v8    # "fssrOff":Ljava/lang/String;
    .end local v9    # "truePortraitOff":Ljava/lang/String;
    .end local v10    # "multiTouchFocusOff":Ljava/lang/String;
    .end local v11    # "stillMoreOff":Ljava/lang/String;
    .end local v13    # "ubiFocusOff":Ljava/lang/String;
    :cond_36
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v12, Lcom/android/camera/PhotoModule$17;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/camera/PhotoModule$17;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4565
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v12, "pref_camera_facedetection_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e009b

    .line 4567
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4565
    invoke-virtual {v3, v12, v14}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 4569
    .local v37, "faceDetection":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4570
    invoke-static {v3}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedFaceDetectionModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    .line 4569
    move-object/from16 v0, v37

    invoke-static {v0, v3}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 4571
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, v37

    invoke-static {v3, v0}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setFaceDetectionMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4572
    const-string v3, "on"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/PhotoModule;->mFaceDetectionEnabled:Z

    if-nez v3, :cond_37

    .line 4573
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/PhotoModule;->mFaceDetectionEnabled:Z

    .line 4574
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->startFaceDetection()V

    .line 4576
    :cond_37
    const-string v3, "off"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/PhotoModule;->mFaceDetectionEnabled:Z

    const/4 v12, 0x1

    if-ne v3, v12, :cond_16

    .line 4577
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->stopFaceDetection()V

    .line 4578
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/PhotoModule;->mFaceDetectionEnabled:Z

    goto/16 :goto_5

    .line 4620
    .end local v37    # "faceDetection":Ljava/lang/String;
    .restart local v24    # "antiBanding":Ljava/lang/String;
    .restart local v25    # "autoExposure":Ljava/lang/String;
    .restart local v26    # "auto_hdr":Ljava/lang/String;
    .restart local v63    # "zsl":Ljava/lang/String;
    :cond_38
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/PhotoModule;->mAutoHdrEnable:Z

    .line 4621
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v12, Lcom/android/camera/PhotoModule$19;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/camera/PhotoModule$19;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 4645
    :cond_39
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v3}, Lcom/android/camera/FocusOverlayManager;->isTouch()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 4646
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 4647
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v12}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 4650
    :cond_3a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v12}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 4661
    :cond_3b
    const-string v3, "off"

    move-object/from16 v0, v63

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 4662
    sget v3, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_NONZSL:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/PhotoModule;->mSnapshotMode:I

    .line 4663
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x0

    invoke-static {v3, v12}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setCameraMode(Landroid/hardware/Camera$Parameters;I)V

    .line 4664
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/android/camera/FocusOverlayManager;->setZslEnable(Z)V

    .line 4665
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1a

    .line 4666
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 4667
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v12}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 4686
    .restart local v42    # "instantCapture":Ljava/lang/String;
    :cond_3c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "instant-capture"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e0072

    .line 4687
    invoke-virtual {v14, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4686
    invoke-virtual {v3, v12, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4688
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e0072

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 4690
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v12, Lcom/android/camera/PhotoModule$21;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/camera/PhotoModule$21;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_9

    .line 4722
    .restart local v41    # "histogram":Ljava/lang/String;
    :cond_3d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/PhotoModule;->mHiston:Z

    .line 4723
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v12, Lcom/android/camera/PhotoModule$23;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/camera/PhotoModule$23;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v3, v12}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4729
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v12, 0x0

    invoke-interface {v3, v12}, Lcom/android/camera/CameraManager$CameraProxy;->setHistogramMode(Landroid/hardware/Camera$CameraDataCallback;)V

    goto/16 :goto_a

    .line 4752
    .restart local v22    # "aeBracket":Ljava/lang/String;
    :cond_3e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v15, 0x7f0e02d4

    .line 4753
    invoke-virtual {v3, v15}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_b

    .line 4789
    .restart local v27    # "bokehBlurDegree":I
    .restart local v28    # "bokehMode":Ljava/lang/String;
    .restart local v29    # "bokehMpo":Ljava/lang/String;
    .restart local v50    # "prefs":Landroid/content/SharedPreferences;
    .restart local v60    # "supportBokeh":Z
    :cond_3f
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/PhotoModule;->mIsBokehMode:Z

    goto/16 :goto_c
.end method

.method private registerMediaButtonReceiver()V
    .locals 3

    .prologue
    .line 6273
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 6274
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6275
    return-void
.end method

.method private removeIdleHandler()V
    .locals 2

    .prologue
    .line 1323
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    if-eqz v1, :cond_0

    .line 1324
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 1325
    .local v0, "queue":Landroid/os/MessageQueue;
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1326
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 1328
    .end local v0    # "queue":Landroid/os/MessageQueue;
    :cond_0
    return-void
.end method

.method private resetExposureCompensation()V
    .locals 5

    .prologue
    .line 1150
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_exposure_key"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1152
    .local v1, "value":Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1153
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1154
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_exposure_key"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1155
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1157
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private resetManual3ASettings()V
    .locals 8

    .prologue
    .line 1160
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e0056

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1162
    .local v0, "manualExposureDefault":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v7, "pref_camera_manual_exp_key"

    invoke-virtual {v6, v7, v0}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1164
    .local v1, "manualExposureMode":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1165
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v7, "pref_camera_manual_exp_key"

    invoke-virtual {v6, v7, v0}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->UpdateManualExposureSettings()V

    .line 1169
    :cond_0
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e0067

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1171
    .local v2, "manualFocusDefault":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v7, "pref_camera_manual_focus_key"

    invoke-virtual {v6, v7, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1173
    .local v3, "manualFocusMode":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1174
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v7, "pref_camera_manual_focus_key"

    invoke-virtual {v6, v7, v2}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->UpdateManualFocusSettings()V

    .line 1178
    :cond_1
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e005f

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1180
    .local v4, "manualWBDefault":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v7, "pref_camera_manual_wb_key"

    invoke-virtual {v6, v7, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1182
    .local v5, "manualWBMode":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1183
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v7, "pref_camera_manual_wb_key"

    invoke-virtual {v6, v7, v4}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->UpdateManualWBSettings()V

    .line 1187
    :cond_2
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    .line 1188
    return-void
.end method

.method private resetMiscSettings()V
    .locals 4

    .prologue
    .line 1191
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->isDisableQcomMiscSetting()Z

    move-result v0

    .line 1192
    .local v0, "disableQcomMiscSetting":Z
    if-eqz v0, :cond_0

    .line 1193
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v2, "pref_camera_zsl_key"

    sget-object v3, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->ZSL_OFF:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v2, "pref_camera_facedetection_key"

    sget-object v3, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->FACE_DETECTION_OFF:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v2, "pref_camera_touchafaec_key"

    sget-object v3, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->TOUCH_AF_AEC_OFF:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v2, "pref_camera_focusmode_key"

    const-string v3, "auto"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v2, "pref_camera_flashmode_key"

    const-string v3, "off"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v2, "pref_camera_denoise_key"

    sget-object v3, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->DENOISE_OFF:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    .line 1206
    :cond_0
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 5963
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5964
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 5965
    return-void
.end method

.method private savePPPic([B)V
    .locals 2
    .param p1, "result"    # [B

    .prologue
    .line 6378
    new-instance v0, Lcom/android/camera/PhotoModule$SavingThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$SavingThread;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSavingThread:Lcom/android/camera/PhotoModule$SavingThread;

    .line 6379
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSavingThread:Lcom/android/camera/PhotoModule$SavingThread;

    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoModule$SavingThread;->setYUVData([B)V

    .line 6380
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSavingThread:Lcom/android/camera/PhotoModule$SavingThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$SavingThread;->start()V

    .line 6381
    return-void
.end method

.method private saveToDebugUri([B)V
    .locals 4
    .param p1, "data"    # [B

    .prologue
    .line 6109
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mDebugUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 6110
    const/4 v1, 0x0

    .line 6112
    .local v1, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mDebugUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 6113
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 6114
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6118
    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 6121
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    return-void

    .line 6115
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 6116
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "CAM_PhotoModule"

    const-string v3, "Exception while writing debug jpeg file"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6118
    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v2
.end method

.method private setAutoExposureLockIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 4899
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAeLockSupported:Z

    if-eqz v0, :cond_0

    .line 4900
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 4902
    :cond_0
    return-void
.end method

.method private setAutoWhiteBalanceLockIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 4906
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAwbLockSupported:Z

    if-eqz v0, :cond_0

    .line 4907
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 4909
    :cond_0
    return-void
.end method

.method private setCameraParameters(I)V
    .locals 5
    .param p1, "updateSet"    # I

    .prologue
    .line 5269
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_0

    .line 5298
    :goto_0
    return-void

    .line 5272
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v2

    .line 5273
    const/4 v0, 0x0

    .line 5275
    .local v0, "doModeSwitch":Z
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    .line 5276
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraParametersInitialize()V

    .line 5279
    :cond_1
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_2

    .line 5280
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraParametersZoom()V

    .line 5283
    :cond_2
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_3

    .line 5284
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraParametersPreference()Z

    move-result v0

    .line 5288
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "3d_nr_is_applied"

    const-string v4, "enable"

    invoke-virtual {v1, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5291
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v1, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 5294
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_4

    .line 5295
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5297
    :cond_4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setCameraParametersWhenIdle(I)V
    .locals 4
    .param p1, "additionalUpdateSet"    # I

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 5303
    iget v0, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    .line 5304
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 5307
    iput v2, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    .line 5327
    :cond_0
    :goto_0
    return-void

    .line 5309
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5310
    iget v0, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 5311
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v0, :cond_2

    .line 5312
    const-string v0, "CAM_PhotoModule"

    const-string v1, "Restarting Preview..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5313
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 5314
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->resizeForPreviewAspectRatio()V

    .line 5315
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->startPreview()V

    .line 5316
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 5318
    :cond_2
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    .line 5319
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraSettings()V

    .line 5320
    iput v2, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    goto :goto_0

    .line 5322
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5323
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setCameraState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 2338
    iput p1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    .line 2339
    packed-switch p1, :pswitch_data_0

    .line 2350
    :goto_0
    :pswitch_0
    return-void

    .line 2344
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->enableGestures(Z)V

    goto :goto_0

    .line 2347
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->enableGestures(Z)V

    goto :goto_0

    .line 2339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setDisplayOrientation()V
    .locals 2

    .prologue
    .line 3963
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    .line 3964
    iget v0, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    .line 3965
    iget v0, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    iput v0, p0, Lcom/android/camera/PhotoModule;->mCameraDisplayOrientation:I

    .line 3968
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    if-eqz v0, :cond_0

    .line 3969
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->setDisplayOrientation(I)V

    .line 3971
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_1

    .line 3972
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setDisplayOrientation(I)V

    .line 3975
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_2

    .line 3976
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraDisplayOrientation:I

    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 3978
    :cond_2
    return-void
.end method

.method private setFlipValue()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 4860
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getPreviewFlip()I

    move-result v3

    .line 4861
    .local v3, "preview_flip_value":I
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getVideoFlip()I

    move-result v6

    .line 4862
    .local v6, "video_flip_value":I
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getPictureFlip()I

    move-result v1

    .line 4863
    .local v1, "picture_flip_value":I
    iget v7, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    iget v8, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    invoke-static {v7, v8}, Lcom/android/camera/util/CameraUtil;->getJpegRotation(II)I

    move-result v4

    .line 4864
    .local v4, "rotation":I
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7, v4}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 4865
    const/16 v7, 0x5a

    if-eq v4, v7, :cond_0

    const/16 v7, 0x10e

    if-ne v4, v7, :cond_3

    .line 4867
    :cond_0
    if-ne v3, v9, :cond_7

    .line 4868
    const/4 v3, 0x2

    .line 4872
    :cond_1
    :goto_0
    if-ne v6, v9, :cond_8

    .line 4873
    const/4 v6, 0x2

    .line 4877
    :cond_2
    :goto_1
    if-ne v1, v9, :cond_9

    .line 4878
    const/4 v1, 0x2

    .line 4883
    :cond_3
    :goto_2
    invoke-static {v3}, Lcom/android/camera/util/CameraUtil;->getFilpModeString(I)Ljava/lang/String;

    move-result-object v2

    .line 4884
    .local v2, "preview_flip":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/camera/util/CameraUtil;->getFilpModeString(I)Ljava/lang/String;

    move-result-object v5

    .line 4885
    .local v5, "video_flip":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->getFilpModeString(I)Ljava/lang/String;

    move-result-object v0

    .line 4886
    .local v0, "picture_flip":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->getSupportedFlipMode(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4887
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "preview-flip"

    invoke-virtual {v7, v8, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4889
    :cond_4
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->getSupportedFlipMode(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 4890
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "video-flip"

    invoke-virtual {v7, v8, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4892
    :cond_5
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->getSupportedFlipMode(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 4893
    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "snapshot-picture-flip"

    invoke-virtual {v7, v8, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4895
    :cond_6
    return-void

    .line 4869
    .end local v0    # "picture_flip":Ljava/lang/String;
    .end local v2    # "preview_flip":Ljava/lang/String;
    .end local v5    # "video_flip":Ljava/lang/String;
    :cond_7
    if-ne v3, v10, :cond_1

    .line 4870
    const/4 v3, 0x1

    goto :goto_0

    .line 4874
    :cond_8
    if-ne v6, v10, :cond_2

    .line 4875
    const/4 v6, 0x1

    goto :goto_1

    .line 4879
    :cond_9
    if-ne v1, v10, :cond_3

    .line 4880
    const/4 v1, 0x1

    goto :goto_2
.end method

.method private setFocusAreasIfSupported()V
    .locals 2

    .prologue
    .line 4912
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    .line 4913
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getFocusAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 4915
    :cond_0
    return-void
.end method

.method private setLocationPreference(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_recordlocation_key"

    .line 1033
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1034
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1037
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget-boolean v0, v0, Lcom/android/camera/PhotoUI;->mMenuInitialized:Z

    if-eqz v0, :cond_0

    .line 1038
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    .line 1040
    :cond_0
    return-void
.end method

.method private setMeteringAreasIfSupported()V
    .locals 2

    .prologue
    .line 4918
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 4919
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 4921
    :cond_0
    return-void
.end method

.method private setNSParam(I[I[[I)V
    .locals 12
    .param p1, "lux"    # I
    .param p2, "lux_table"    # [I
    .param p3, "ns_params_table"    # [[I

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 6337
    const/4 v1, 0x5

    .line 6338
    .local v1, "intensity":I
    const/4 v2, 0x0

    .line 6339
    .local v2, "light":I
    const/16 v3, 0x20

    .line 6340
    .local v3, "saturation":I
    const/4 v4, 0x0

    .line 6341
    .local v4, "sharpness":I
    array-length v5, p2

    .line 6342
    .local v5, "size":I
    aget v6, p2, v8

    if-ge p1, v6, :cond_2

    .line 6343
    const/4 v1, 0x1

    .line 6344
    const/16 v2, 0xa

    .line 6345
    const/16 v3, 0x20

    .line 6346
    const/4 v4, 0x1

    .line 6350
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v6, p2

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_3

    .line 6351
    aget v6, p2, v0

    if-lt p1, v6, :cond_1

    add-int/lit8 v6, v0, 0x1

    aget v6, p2, v6

    if-ge p1, v6, :cond_1

    .line 6352
    aget-object v6, p3, v0

    aget v1, v6, v8

    .line 6353
    aget-object v6, p3, v0

    aget v2, v6, v10

    .line 6354
    aget-object v6, p3, v0

    aget v3, v6, v9

    .line 6355
    aget-object v6, p3, v0

    aget v4, v6, v11

    .line 6350
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6347
    .end local v0    # "i":I
    :cond_2
    add-int/lit8 v6, v5, -0x1

    aget v6, p2, v6

    if-le p1, v6, :cond_0

    .line 6348
    const/4 v2, 0x0

    goto :goto_0

    .line 6358
    .restart local v0    # "i":I
    :cond_3
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    if-eqz v6, :cond_4

    .line 6359
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    const/4 v7, 0x4

    new-array v7, v7, [I

    aput v1, v7, v8

    aput v2, v7, v10

    aput v3, v7, v9

    aput v4, v7, v11

    invoke-virtual {v6, v9, v7}, Lcom/android/camera/MultiPPManager;->setParams(I[I)Z

    .line 6361
    :cond_4
    return-void
.end method

.method private setZoomMenuValue()V
    .locals 14

    .prologue
    const/4 v13, -0x1

    .line 4923
    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v10, "pref_camera_zoom_key"

    iget-object v11, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e02e2

    .line 4924
    invoke-virtual {v11, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 4923
    invoke-virtual {v9, v10, v11}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4925
    .local v6, "zoomMenuValue":Ljava/lang/String;
    const-string v9, "0"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 4926
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 4927
    .local v8, "zoomValue":I
    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mZoomIdxTbl:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    if-ne v9, v13, :cond_2

    .line 4929
    const-string v9, "CAM_PhotoModule"

    const-string v10, "Update the zoom index table."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4930
    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v7

    .line 4931
    .local v7, "zoomRatios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 4932
    .local v1, "lastZoomIdx":I
    const/4 v4, 0x1

    .local v4, "zoom":I
    :goto_0
    const/16 v9, 0xa

    if-gt v4, v9, :cond_2

    .line 4933
    mul-int/lit8 v9, v4, 0x64

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 4934
    .local v5, "zoomIdx":I
    if-ne v5, v13, :cond_1

    .line 4935
    const-string v9, "CAM_PhotoModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can\'t find matching zoom value "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4936
    const/4 v2, 0x0

    .line 4937
    .local v2, "nextZoom":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_0

    mul-int/lit8 v9, v4, 0x64

    if-ge v2, v9, :cond_0

    .line 4939
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4940
    move v5, v1

    goto :goto_1

    .line 4942
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_2

    .line 4943
    add-int/lit8 v5, v1, -0x1

    .line 4948
    .end local v2    # "nextZoom":I
    :cond_1
    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mZoomIdxTbl:[I

    add-int/lit8 v10, v4, -0x1

    aput v5, v9, v10

    .line 4949
    move v1, v5

    .line 4932
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4953
    .end local v1    # "lastZoomIdx":I
    .end local v4    # "zoom":I
    .end local v5    # "zoomIdx":I
    .end local v7    # "zoomRatios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mZoomIdxTbl:[I

    array-length v9, v9

    if-gt v8, v9, :cond_6

    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mZoomIdxTbl:[I

    add-int/lit8 v10, v8, -0x1

    aget v9, v9, v10

    if-eq v9, v13, :cond_6

    .line 4955
    const/4 v3, 0x1

    .line 4956
    .local v3, "step":I
    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    .line 4957
    .local v0, "cur_zoom":I
    const-string v9, "CAM_PhotoModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "zoom index = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/PhotoModule;->mZoomIdxTbl:[I

    add-int/lit8 v12, v8, -0x1

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", cur index = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4958
    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mZoomIdxTbl:[I

    add-int/lit8 v10, v8, -0x1

    aget v9, v9, v10

    if-le v0, v9, :cond_3

    .line 4959
    const/4 v3, -0x1

    .line 4963
    :cond_3
    :goto_2
    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mZoomIdxTbl:[I

    add-int/lit8 v10, v8, -0x1

    aget v9, v9, v10

    if-eq v0, v9, :cond_4

    .line 4964
    add-int/2addr v0, v3

    .line 4965
    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9, v0}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 4967
    const-wide/16 v10, 0x19

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 4968
    :catch_0
    move-exception v9

    goto :goto_2

    .line 4971
    :cond_4
    iget-object v9, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mZoomIdxTbl:[I

    add-int/lit8 v11, v8, -0x1

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 4976
    .end local v0    # "cur_zoom":I
    .end local v3    # "step":I
    .end local v8    # "zoomValue":I
    :cond_5
    :goto_3
    return-void

    .line 4973
    .restart local v8    # "zoomValue":I
    :cond_6
    const-string v9, "CAM_PhotoModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Zoom value "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not supported!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private setupCaptureParams()V
    .locals 2

    .prologue
    .line 5345
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 5346
    .local v0, "myExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 5347
    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    .line 5348
    const-string v1, "crop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mCropValue:Ljava/lang/String;

    .line 5350
    :cond_0
    return-void
.end method

.method private setupPreview()V
    .locals 1

    .prologue
    .line 3982
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    .line 3983
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->startPreview()V

    .line 3984
    return-void
.end method

.method private showTapToFocusToast()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5981
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e03ce

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 5983
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5984
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_first_use_hint_shown_key"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5985
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5986
    return-void
.end method

.method private showTapToFocusToastIfNeeded()V
    .locals 4

    .prologue
    .line 1300
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_first_use_hint_shown_key"

    const/4 v2, 0x1

    .line 1301
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1303
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1305
    :cond_0
    return-void
.end method

.method private startPreview()V
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 3989
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_1

    .line 4045
    :cond_0
    :goto_0
    return-void

    .line 3993
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v2

    .line 3994
    const/4 v0, 0x0

    .line 3995
    .local v0, "sh":Landroid/view/SurfaceHolder;
    :try_start_0
    const-string v1, "CAM_PhotoModule"

    const-string v3, "startPreview: SurfaceHolder (MDP path)"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3996
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    if-eqz v1, :cond_2

    .line 3997
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 4001
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 4002
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4004
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mCameraPreviewParamsReady:Z

    if-nez v1, :cond_3

    .line 4005
    const-string v1, "CAM_PhotoModule"

    const-string v2, "startPreview: parameters for preview are not ready."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4002
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 4008
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraErrorCallback;->setActivity(Lcom/android/camera/CameraActivity;)V

    .line 4009
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-interface {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 4013
    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eq v1, v4, :cond_4

    .line 4014
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 4017
    :cond_4
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    if-nez v1, :cond_5

    .line 4018
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->setAeAwbLock(Z)V

    .line 4021
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 4022
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/camera/PhotoModule$10;

    invoke-direct {v3, p0}, Lcom/android/camera/PhotoModule$10;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-interface {v1, v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraPreviewDataCallback;)V

    .line 4029
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V

    .line 4031
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4033
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setDisplayOrientation()V

    .line 4035
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mInstantCaptureSnapShot:Z

    if-nez v1, :cond_6

    .line 4038
    const-string v1, "continuous-picture"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eq v1, v4, :cond_0

    .line 4039
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    goto/16 :goto_0

    .line 4042
    :cond_6
    const-string v1, "CAM_PhotoModule"

    const-string v2, "Trigger snapshot from start preview."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4043
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    const-wide/16 v4, 0x5dc

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method private switchCamera()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1053
    iget-boolean v3, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v3, :cond_0

    .line 1117
    :goto_0
    return-void

    .line 1055
    :cond_0
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    sget-object v4, Lcom/android/camera/PhotoUI$SURFACE_STATUS;->HIDE:Lcom/android/camera/PhotoUI$SURFACE_STATUS;

    invoke-virtual {v3, v4}, Lcom/android/camera/PhotoUI;->applySurfaceChange(Lcom/android/camera/PhotoUI$SURFACE_STATUS;)V

    .line 1056
    const-string v3, "CAM_PhotoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start to switch camera. id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    iget v3, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    iput v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    .line 1058
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 1059
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 1060
    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-virtual {p0, v3}, Lcom/android/camera/PhotoModule;->setCameraId(I)V

    .line 1064
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    if-eqz v3, :cond_1

    .line 1065
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    invoke-virtual {v3}, Lcom/android/camera/PhotoModule$OpenCameraThread;->join()V

    .line 1066
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    .line 1069
    :cond_1
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    if-eqz v3, :cond_2

    .line 1070
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    invoke-virtual {v3}, Lcom/android/camera/PhotoModule$StartPreviewThread;->join()V

    .line 1071
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    .line 1075
    :cond_2
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mSavingThread:Lcom/android/camera/PhotoModule$SavingThread;

    if-eqz v3, :cond_3

    .line 1076
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mSavingThread:Lcom/android/camera/PhotoModule$SavingThread;

    invoke-virtual {v3}, Lcom/android/camera/PhotoModule$SavingThread;->join()V

    .line 1077
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/PhotoModule;->mSavingThread:Lcom/android/camera/PhotoModule$SavingThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1083
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->closeCamera()V

    .line 1084
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v3}, Lcom/android/camera/PhotoUI;->collapseCameraControls()Z

    .line 1085
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v3}, Lcom/android/camera/PhotoUI;->clearFaces()V

    .line 1086
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v3}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 1089
    :cond_4
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v5, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 1090
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v3}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 1091
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v4, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1093
    invoke-virtual {v6}, Lcom/android/camera/CameraActivity;->getCameraOpenErrorCallback()Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

    move-result-object v6

    .line 1091
    invoke-static {v3, v4, v5, v6}, Lcom/android/camera/util/CameraUtil;->openCamera(Landroid/app/Activity;ILandroid/os/Handler;Lcom/android/camera/CameraManager$CameraOpenErrorCallback;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 1095
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v3, :cond_5

    .line 1096
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open camera:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1099
    :cond_5
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v3}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1100
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v3}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 1101
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeCapabilities()V

    .line 1102
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    aget-object v0, v3, v4

    .line 1103
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, v1, :cond_6

    :goto_2
    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mMirror:Z

    .line 1104
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-boolean v3, p0, Lcom/android/camera/PhotoModule;->mMirror:Z

    invoke-virtual {v1, v3}, Lcom/android/camera/FocusOverlayManager;->setMirror(Z)V

    .line 1105
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v3}, Lcom/android/camera/FocusOverlayManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1106
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupPreview()V

    .line 1108
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    sget-object v3, Lcom/android/camera/PhotoUI$SURFACE_STATUS;->SURFACE_VIEW:Lcom/android/camera/PhotoUI$SURFACE_STATUS;

    invoke-virtual {v1, v3}, Lcom/android/camera/PhotoUI;->applySurfaceChange(Lcom/android/camera/PhotoUI$SURFACE_STATUS;)V

    .line 1110
    iput v2, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    .line 1111
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->resizeForPreviewAspectRatio()V

    .line 1112
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->openCameraCommon()V

    .line 1116
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_6
    move v1, v2

    .line 1103
    goto :goto_2

    .line 1080
    .end local v0    # "info":Landroid/hardware/Camera$CameraInfo;
    :catch_0
    move-exception v3

    goto/16 :goto_1
.end method

.method private updateAutoFocusMoveCallback()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5257
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5258
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/CameraManager$CameraAFMoveCallback;

    invoke-interface {v1, v2, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraAFMoveCallback;)V

    .line 5263
    :goto_0
    return-void

    .line 5261
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0, v2, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraAFMoveCallback;)V

    goto :goto_0
.end method

.method private updateCameraParametersInitialize()V
    .locals 5

    .prologue
    .line 4062
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->getPhotoPreviewFpsRange(Landroid/hardware/Camera$Parameters;)[I

    move-result-object v0

    .line 4063
    .local v0, "fpsRange":[I
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 4064
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 4069
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "recording-hint"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4073
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "video-stabilization-supported"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4074
    .local v1, "vstabSupported":Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4075
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "video-stabilization"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4077
    :cond_1
    return-void
.end method

.method private updateCameraParametersPreference()Z
    .locals 36

    .prologue
    .line 4980
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->setAutoExposureLockIfSupported()V

    .line 4981
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->setAutoWhiteBalanceLockIfSupported()V

    .line 4982
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->setFocusAreasIfSupported()V

    .line 4983
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->setMeteringAreasIfSupported()V

    .line 4986
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    move/from16 v31, v0

    and-int/lit8 v31, v31, 0x1

    if-nez v31, :cond_0

    .line 4987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 4988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 4992
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v31, v0

    const-string v32, "pref_camera_picturesize_key"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 4994
    .local v21, "pictureSize":Ljava/lang/String;
    if-nez v21, :cond_e

    .line 4995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v32, v0

    invoke-static/range {v31 .. v32}, Lcom/android/camera/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 5011
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v25

    .line 5015
    .local v25, "size":Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v26

    .line 5016
    .local v26, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v31, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v34, v0

    div-double v32, v32, v34

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    move-wide/from16 v2, v32

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/util/CameraUtil;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v18

    .line 5019
    .local v18, "optimalSize":Landroid/hardware/Camera$Size;
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCameraPreviewSize()Landroid/graphics/Point;

    move-result-object v22

    .line 5020
    .local v22, "previewSize":Landroid/graphics/Point;
    if-eqz v22, :cond_2

    .line 5021
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, v18

    iput v0, v1, Landroid/hardware/Camera$Size;->width:I

    .line 5022
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, v18

    iput v0, v1, Landroid/hardware/Camera$Size;->height:I

    .line 5025
    :cond_2
    const-string v31, "CAM_PhotoModule"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "updateCameraParametersPreference final preview size = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v18

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v18

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v31, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/android/camera/PhotoUI;->setlocationy(I)V

    .line 5030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v20

    .line 5031
    .local v20, "original":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_3

    .line 5032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v32, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 5036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v31

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_f

    .line 5038
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->setupPreview()V

    .line 5042
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5043
    const-string v31, "CAM_PhotoModule"

    const-string v32, "Preview Size changed. Restart Preview"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5044
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    .line 5047
    :cond_3
    const-string v31, "CAM_PhotoModule"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Preview size is "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v18

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "x"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v18

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v25

    .line 5053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v27

    .line 5054
    .local v27, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, v25

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v32, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v34, v0

    div-double v32, v32, v34

    move-object/from16 v0, v27

    move-wide/from16 v1, v32

    invoke-static {v0, v1, v2}, Lcom/android/camera/util/CameraUtil;->getOptimalJpegThumbnailSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v18

    .line 5056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getJpegThumbnailSize()Landroid/hardware/Camera$Size;

    move-result-object v20

    .line 5057
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_4

    .line 5058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v32, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 5061
    :cond_4
    const-string v31, "CAM_PhotoModule"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Thumbnail size is "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v18

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "x"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v18

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v31, v0

    const v32, 0x7f0e0353

    invoke-virtual/range {v31 .. v32}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 5067
    .local v17, "onValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v31, v0

    const-string v32, "pref_camera_hdr_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v33, v0

    const v34, 0x7f0e03bb

    .line 5068
    invoke-virtual/range {v33 .. v34}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 5067
    invoke-virtual/range {v31 .. v33}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5069
    .local v6, "hdr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v31, v0

    const-string v32, "pref_camera_hdr_plus_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v33, v0

    const v34, 0x7f0e03bc

    .line 5070
    invoke-virtual/range {v33 .. v34}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 5069
    invoke-virtual/range {v31 .. v33}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 5071
    .local v8, "hdrPlus":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 5072
    .local v7, "hdrOn":Z
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 5074
    .local v9, "hdrPlusOn":Z
    const/4 v4, 0x0

    .line 5075
    .local v4, "doGcamModeSwitch":Z
    if-eqz v9, :cond_10

    invoke-static {}, Lcom/android/camera/util/GcamHelper;->hasGcamCapture()Z

    move-result v31

    if-eqz v31, :cond_10

    .line 5077
    const/4 v4, 0x1

    .line 5094
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v31, v0

    const v32, 0x7f0e0042

    invoke-virtual/range {v31 .. v32}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 5096
    .local v23, "refocusOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v31, v0

    const v32, 0x7f0e0044

    invoke-virtual/range {v31 .. v32}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 5098
    .local v19, "optizoomOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 5099
    .local v24, "scenModeStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_12

    .line 5101
    :try_start_0
    const-string v31, "auto"

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 5102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v31

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_6

    .line 5103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v31, v0

    const-string v32, "pref_camera_advanced_features_key"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 5104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/camera/PhotoUI;->showRefocusDialog()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5120
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v31

    if-eqz v31, :cond_8

    .line 5121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_8

    .line 5122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v31

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_7

    .line 5123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v31, v0

    const-string v32, "pref_camera_advanced_features_key"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 5125
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 5130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v32, v0

    invoke-interface/range {v31 .. v32}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 5131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5137
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/PhotoModule;->mCameraId:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_14

    .line 5138
    const/16 v10, 0x5f

    .line 5144
    .local v10, "jpegQuality":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 5150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/ComboPreferences;)I

    move-result v29

    .line 5151
    .local v29, "value":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v14

    .line 5152
    .local v14, "max":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v15

    .line 5153
    .local v15, "min":I
    move/from16 v0, v29

    if-lt v0, v15, :cond_15

    move/from16 v0, v29

    if-gt v0, v14, :cond_15

    .line 5154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 5159
    :goto_5
    const-string v31, "auto"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1a

    .line 5162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mSavedFlashMode:Ljava/lang/String;

    move-object/from16 v31, v0

    if-nez v31, :cond_16

    .line 5163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v31, v0

    const-string v32, "pref_camera_flashmode_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v33, v0

    const v34, 0x7f0e037d

    .line 5165
    invoke-virtual/range {v33 .. v34}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 5163
    invoke-virtual/range {v31 .. v33}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5170
    .local v5, "flashMode":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v28

    .line 5171
    .local v28, "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v28

    invoke-static {v5, v0}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v31

    if-eqz v31, :cond_17

    .line 5172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 5182
    :cond_9
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    move/from16 v31, v0

    and-int/lit8 v31, v31, 0x2

    if-nez v31, :cond_a

    .line 5183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v31, v0

    const-string v32, "pref_camera_whitebalance_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v33, v0

    const v34, 0x7f0e0387

    .line 5185
    invoke-virtual/range {v33 .. v34}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 5183
    invoke-virtual/range {v31 .. v33}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 5186
    .local v30, "whiteBalance":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    .line 5187
    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v31

    .line 5186
    invoke-static/range {v30 .. v31}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v31

    if-eqz v31, :cond_18

    .line 5188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 5198
    .end local v30    # "whiteBalance":Ljava/lang/String;
    :cond_a
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/PhotoModule;->mInstantCaptureSnapShot:Z

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_19

    .line 5199
    const-string v31, "CAM_PhotoModule"

    const-string v32, "Change the focuse mode to infinity"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    move-object/from16 v31, v0

    const-string v32, "infinity"

    invoke-virtual/range {v31 .. v32}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 5201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    const-string v32, "infinity"

    invoke-virtual/range {v31 .. v32}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 5218
    .end local v5    # "flashMode":Ljava/lang/String;
    .end local v28    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/PhotoModule;->mContinuousFocusSupported:Z

    move/from16 v31, v0

    if-eqz v31, :cond_c

    sget-boolean v31, Lcom/android/camera/util/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v31, :cond_c

    .line 5219
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->updateAutoFocusMoveCallback()V

    .line 5222
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v31, v0

    const-string v32, "pref_camera_tsmakeup_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v33, v0

    const v34, 0x7f0e0225

    .line 5223
    invoke-virtual/range {v33 .. v34}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 5222
    invoke-virtual/range {v31 .. v33}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 5224
    .local v12, "makeupParamValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    const-string v32, "tsmakeup"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v12}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5225
    const-string v31, "CAM_PhotoModule"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "updateCameraParametersPreference(): TSMakeup tsmakeup value = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5227
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/PhotoModule;->mCameraId:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1c

    const-string v31, "On"

    .line 5228
    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_1c

    .line 5229
    const-string v31, "CAM_PhotoModule"

    const-string v32, "set low cost fb on."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    const-string v32, "asus_beauty"

    const-string v33, "on"

    invoke-virtual/range {v31 .. v33}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5231
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/PhotoModule;->mLowCostBeauty:Z

    .line 5239
    :goto_a
    const-string v31, "On"

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_d

    .line 5240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v31, v0

    const-string v32, "pref_camera_tsmakeup_whiten"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v33, v0

    const v34, 0x7f0e0226

    .line 5241
    invoke-virtual/range {v33 .. v34}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 5240
    invoke-virtual/range {v31 .. v33}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 5242
    .local v13, "makeupWhitenValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v31, v0

    const-string v32, "pref_camera_tsmakeup_clean"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v33, v0

    const v34, 0x7f0e0226

    .line 5243
    invoke-virtual/range {v33 .. v34}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 5242
    invoke-virtual/range {v31 .. v33}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5244
    .local v11, "makeupCleanValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    const-string v32, "tsmakeup_whiten"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v13}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    const-string v32, "tsmakeup_clean"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5248
    .end local v11    # "makeupCleanValue":Ljava/lang/String;
    .end local v13    # "makeupWhitenValue":Ljava/lang/String;
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->setZoomMenuValue()V

    .line 5251
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->qcomUpdateCameraParametersPreference()V

    .line 5252
    return v4

    .line 4997
    .end local v4    # "doGcamModeSwitch":Z
    .end local v6    # "hdr":Ljava/lang/String;
    .end local v7    # "hdrOn":Z
    .end local v8    # "hdrPlus":Ljava/lang/String;
    .end local v9    # "hdrPlusOn":Z
    .end local v10    # "jpegQuality":I
    .end local v12    # "makeupParamValue":Ljava/lang/String;
    .end local v14    # "max":I
    .end local v15    # "min":I
    .end local v17    # "onValue":Ljava/lang/String;
    .end local v18    # "optimalSize":Landroid/hardware/Camera$Size;
    .end local v19    # "optizoomOn":Ljava/lang/String;
    .end local v20    # "original":Landroid/hardware/Camera$Size;
    .end local v22    # "previewSize":Landroid/graphics/Point;
    .end local v23    # "refocusOn":Ljava/lang/String;
    .end local v24    # "scenModeStr":Ljava/lang/String;
    .end local v25    # "size":Landroid/hardware/Camera$Size;
    .end local v26    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v27    # "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v29    # "value":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v16

    .line 4998
    .local v16, "old_size":Landroid/hardware/Camera$Size;
    const-string v31, "CAM_PhotoModule"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "old picture_size = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " x "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v27

    .line 5000
    .restart local v27    # "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/android/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    .line 5002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v25

    .line 5003
    .restart local v25    # "size":Landroid/hardware/Camera$Size;
    const-string v31, "CAM_PhotoModule"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "new picture_size = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v25

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " x "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v25

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5004
    if-eqz v16, :cond_1

    if-eqz v25, :cond_1

    .line 5005
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/PhotoModule;->mCameraState:I

    move/from16 v31, v0

    if-eqz v31, :cond_1

    .line 5006
    const-string v31, "CAM_PhotoModule"

    const-string v32, "Picture Size changed. Restart Preview"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5007
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    goto/16 :goto_0

    .line 5040
    .end local v16    # "old_size":Landroid/hardware/Camera$Size;
    .end local v27    # "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v18    # "optimalSize":Landroid/hardware/Camera$Size;
    .restart local v20    # "original":Landroid/hardware/Camera$Size;
    .restart local v22    # "previewSize":Landroid/graphics/Point;
    .restart local v26    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v32, v0

    invoke-interface/range {v31 .. v32}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_1

    .line 5079
    .restart local v4    # "doGcamModeSwitch":Z
    .restart local v6    # "hdr":Ljava/lang/String;
    .restart local v7    # "hdrOn":Z
    .restart local v8    # "hdrPlus":Ljava/lang/String;
    .restart local v9    # "hdrPlusOn":Z
    .restart local v17    # "onValue":Ljava/lang/String;
    .restart local v27    # "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_10
    if-eqz v7, :cond_11

    .line 5080
    const-string v31, "hdr"

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 5081
    const-string v31, "auto"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_5

    const-string v31, "hdr"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v32, v0

    .line 5082
    invoke-virtual/range {v32 .. v32}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_5

    .line 5083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    const-string v32, "auto"

    invoke-virtual/range {v31 .. v32}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 5084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v32, v0

    invoke-interface/range {v31 .. v32}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 5085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    goto/16 :goto_2

    .line 5088
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v31, v0

    const-string v32, "pref_camera_scenemode_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v33, v0

    const v34, 0x7f0e0394

    .line 5090
    invoke-virtual/range {v33 .. v34}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 5088
    invoke-virtual/range {v31 .. v33}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_2

    .line 5108
    .restart local v19    # "optizoomOn":Ljava/lang/String;
    .restart local v23    # "refocusOn":Ljava/lang/String;
    .restart local v24    # "scenModeStr":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_13

    .line 5110
    :try_start_1
    const-string v31, "auto"

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 5111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v31

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_6

    .line 5112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    move-object/from16 v31, v0

    const-string v32, "pref_camera_advanced_features_key"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 5114
    :catch_0
    move-exception v31

    goto/16 :goto_3

    .line 5116
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v31, v0

    if-nez v31, :cond_6

    .line 5117
    const-string v31, "auto"

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_3

    .line 5140
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/PhotoModule;->mCameraId:I

    move/from16 v31, v0

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v10

    .restart local v10    # "jpegQuality":I
    goto/16 :goto_4

    .line 5156
    .restart local v14    # "max":I
    .restart local v15    # "min":I
    .restart local v29    # "value":I
    :cond_15
    const-string v31, "CAM_PhotoModule"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "invalid exposure range: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 5167
    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mSavedFlashMode:Ljava/lang/String;

    .restart local v5    # "flashMode":Ljava/lang/String;
    goto/16 :goto_6

    .line 5174
    .restart local v28    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v5

    .line 5175
    if-nez v5, :cond_9

    .line 5176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v31, v0

    const v32, 0x7f0e037e

    invoke-virtual/range {v31 .. v32}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_7

    .line 5190
    .restart local v30    # "whiteBalance":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v30

    .line 5191
    if-nez v30, :cond_a

    .line 5192
    const-string v31, "auto"

    goto/16 :goto_8

    .line 5202
    .end local v30    # "whiteBalance":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    move/from16 v31, v0

    and-int/lit8 v31, v31, 0x1

    if-nez v31, :cond_b

    .line 5203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 5204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 5207
    .end local v5    # "flashMode":Ljava/lang/String;
    .end local v28    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 5208
    const-string v31, "off"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v32, v0

    .line 5209
    invoke-virtual/range {v32 .. v32}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v32

    .line 5208
    invoke-static/range {v31 .. v32}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v31

    if-eqz v31, :cond_1b

    .line 5210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    const-string v32, "off"

    invoke-virtual/range {v31 .. v32}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 5212
    :cond_1b
    const-string v31, "auto"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v32, v0

    .line 5213
    invoke-virtual/range {v32 .. v32}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v32

    .line 5212
    invoke-static/range {v31 .. v32}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v31

    if-eqz v31, :cond_b

    .line 5214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    const-string v32, "auto"

    invoke-virtual/range {v31 .. v32}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 5233
    .restart local v12    # "makeupParamValue":Ljava/lang/String;
    :cond_1c
    const-string v31, "CAM_PhotoModule"

    const-string v32, "set low cost fb off."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    const-string v32, "asus_beauty"

    const-string v33, "off"

    invoke-virtual/range {v31 .. v33}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5235
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/PhotoModule;->mLowCostBeauty:Z

    goto/16 :goto_a

    .line 5106
    .end local v10    # "jpegQuality":I
    .end local v12    # "makeupParamValue":Ljava/lang/String;
    .end local v14    # "max":I
    .end local v15    # "min":I
    .end local v29    # "value":I
    :catch_1
    move-exception v31

    goto/16 :goto_3
.end method

.method private updateCameraParametersZoom()V
    .locals 3

    .prologue
    .line 4081
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4082
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 4083
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    iput v1, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    .line 4084
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 4086
    .end local v0    # "p":Landroid/hardware/Camera$Parameters;
    :cond_0
    return-void
.end method

.method private updateCameraSettings()V
    .locals 59

    .prologue
    .line 2701
    const/4 v13, 0x0

    .line 2702
    .local v13, "sceneMode":Ljava/lang/String;
    const/16 v39, 0x0

    .line 2703
    .local v39, "flashMode":Ljava/lang/String;
    const/4 v14, 0x0

    .line 2704
    .local v14, "redeyeReduction":Ljava/lang/String;
    const/4 v15, 0x0

    .line 2705
    .local v15, "aeBracketing":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2706
    .local v5, "focusMode":Ljava/lang/String;
    const/4 v12, 0x0

    .line 2707
    .local v12, "colorEffect":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2708
    .local v6, "exposureCompensation":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2709
    .local v7, "touchAfAec":Ljava/lang/String;
    const/16 v38, 0x0

    .line 2711
    .local v38, "disableLongShot":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0041

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v58

    .line 2713
    .local v58, "ubiFocusOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0353

    .line 2714
    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 2715
    .local v35, "continuousShotOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0042

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v50

    .line 2717
    .local v50, "reFocusOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0043

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 2719
    .local v33, "chromaFlashOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0044

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v45

    .line 2721
    .local v45, "optiZoomOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0045

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 2723
    .local v41, "fssrOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0046

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v54

    .line 2725
    .local v54, "truPortraitOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0047

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 2727
    .local v43, "multiTouchFocusOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "opti-zoom"

    .line 2728
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 2729
    .local v44, "optiZoom":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "chroma-flash"

    .line 2730
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 2731
    .local v32, "chromaFlash":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "af-bracket"

    .line 2732
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 2733
    .local v57, "ubiFocus":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "FSSR"

    .line 2734
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 2735
    .local v40, "fssr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "true-portrait"

    .line 2736
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 2737
    .local v55, "truePortrait":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "multi-touch-focus"

    .line 2738
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 2739
    .local v42, "multiTouchFocus":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0048

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v53

    .line 2741
    .local v53, "stillMoreOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "still-more"

    .line 2742
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 2743
    .local v52, "stillMore":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "long-shot"

    .line 2744
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 2746
    .local v34, "continuousShot":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    if-lez v2, :cond_0

    .line 2747
    const/16 v38, 0x1

    .line 2750
    :cond_0
    if-eqz v34, :cond_14

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e018d

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v46

    .line 2753
    .local v46, "pictureFormat":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "pref_camera_pictureformat_key"

    aput-object v9, v3, v8

    const/4 v8, 0x1

    aput-object v46, v3, v8

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2757
    .end local v46    # "pictureFormat":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "re-focus"

    .line 2758
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 2760
    .local v49, "reFocus":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusOverlayManager;->isZslEnabled()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e018d

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v46

    .line 2763
    .restart local v46    # "pictureFormat":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "pref_camera_pictureformat_key"

    aput-object v9, v3, v8

    const/4 v8, 0x1

    aput-object v46, v3, v8

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2767
    .end local v46    # "pictureFormat":Ljava/lang/String;
    :goto_1
    if-eqz v42, :cond_1

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_1
    if-eqz v32, :cond_2

    .line 2768
    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_2
    if-eqz v44, :cond_3

    .line 2769
    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_3
    if-eqz v49, :cond_4

    .line 2770
    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_4
    if-eqz v40, :cond_5

    .line 2771
    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    if-eqz v55, :cond_6

    .line 2772
    move-object/from16 v0, v55

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    if-eqz v52, :cond_a

    .line 2773
    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2774
    :cond_7
    if-eqz v44, :cond_8

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    if-eqz v49, :cond_16

    .line 2775
    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2776
    :cond_9
    const/4 v13, 0x0

    .line 2780
    :goto_2
    const-string v39, "off"

    .line 2781
    const-string v5, "infinity"

    .line 2782
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e00a3

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2784
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e00bb

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e00fe

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2788
    const-string v6, "0"

    .line 2790
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v15}, Lcom/android/camera/PhotoModule;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2794
    const/16 v38, 0x1

    .line 2799
    :cond_a
    const-string v2, "auto"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 2800
    const-string v39, "off"

    .line 2801
    const-string v4, "auto"

    .line 2802
    .local v4, "whiteBalance":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v5

    .line 2803
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v12

    .line 2804
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e00fe

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 2805
    .local v36, "defaultEffect":Ljava/lang/String;
    const-string v2, "hdr"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2806
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->isZzhdrEnabled()Z

    move-result v2

    if-nez v2, :cond_b

    .line 2807
    const/16 v38, 0x1

    .line 2809
    :cond_b
    if-eqz v12, :cond_17

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, v36

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    const/4 v3, 0x1

    :goto_4
    and-int/2addr v2, v3

    if-eqz v2, :cond_c

    .line 2811
    move-object/from16 v12, v36

    .line 2812
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v3, "pref_camera_coloreffect_key"

    invoke-virtual {v2, v3, v12}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 2813
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v12}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 2814
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2815
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2818
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2819
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 2820
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/PhotoModule;->mCurrTouchAfAec:Ljava/lang/String;

    .line 2822
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2824
    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getAutoExposure(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2825
    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSaturation(Landroid/hardware/Camera$Parameters;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2826
    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getContrast(Landroid/hardware/Camera$Parameters;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2827
    invoke-static {v2}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSharpness(Landroid/hardware/Camera$Parameters;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v2, p0

    .line 2822
    invoke-direct/range {v2 .. v15}, Lcom/android/camera/PhotoModule;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2847
    .end local v4    # "whiteBalance":Ljava/lang/String;
    .end local v36    # "defaultEffect":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "ae-bracket-hdr"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 2848
    .local v30, "aeBracket":Ljava/lang/String;
    if-eqz v30, :cond_d

    const-string v2, "off"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 2849
    const-string v39, "off"

    .line 2850
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2852
    :cond_d
    if-nez v38, :cond_e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIsBokehMode:Z

    if-eqz v2, :cond_1c

    .line 2853
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "pref_camera_longshot_key"

    aput-object v9, v3, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v10, 0x7f0e0352

    .line 2854
    invoke-virtual {v9, v10}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v8

    .line 2853
    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2859
    :goto_6
    sget-boolean v2, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v2, :cond_f

    .line 2860
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_tsmakeup_level_key"

    .line 2861
    invoke-virtual {v2, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v56

    check-cast v56, Lcom/android/camera/IconListPreference;

    .line 2863
    .local v56, "tsMakeupLevelPref":Lcom/android/camera/IconListPreference;
    if-eqz v56, :cond_1f

    .line 2864
    invoke-virtual/range {v56 .. v56}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 2865
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mBeauty:Z

    .line 2866
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mDualBokeh:Z

    if-eqz v2, :cond_1d

    .line 2868
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 2869
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 2877
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "pref_camera_facedetection_key"

    aput-object v9, v3, v8

    const/4 v8, 0x1

    sget-object v9, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->FACE_DETECTION_ON:Ljava/lang/String;

    aput-object v9, v3, v8

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2885
    .end local v56    # "tsMakeupLevelPref":Lcom/android/camera/IconListPreference;
    :cond_f
    :goto_8
    if-nez v39, :cond_20

    .line 2887
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mSavedFlashMode:Ljava/lang/String;

    if-nez v2, :cond_10

    .line 2888
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_flashmode_key"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v9, 0x7f0e037d

    .line 2890
    invoke-virtual {v8, v9}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2888
    invoke-virtual {v2, v3, v8}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/PhotoModule;->mSavedFlashMode:Ljava/lang/String;

    .line 2892
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v3, "pref_camera_flashmode_key"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/PhotoModule;->mSavedFlashMode:Ljava/lang/String;

    invoke-virtual {v2, v3, v8}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 2893
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/PhotoModule;->mSavedFlashMode:Ljava/lang/String;

    .line 2904
    :goto_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v3

    if-eq v2, v3, :cond_22

    .line 2908
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_selfiemirror_key"

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 2918
    :cond_11
    :goto_a
    const-string v2, "ro.config.versatility"

    const-string v3, "WW"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "JP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2919
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_shuttersound_key"

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 2923
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v8, "pref_camera_bokeh_mode_key"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mCameraId:I

    const/4 v9, 0x3

    if-ne v2, v9, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v9, 0x7f0e02d8

    .line 2928
    invoke-virtual {v2, v9}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2923
    :goto_b
    invoke-virtual {v3, v8, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 2932
    .local v31, "bokehMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_asus_single_bokeh_mode_key"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v9, 0x7f0e02d4

    .line 2934
    invoke-virtual {v8, v9}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2932
    invoke-virtual {v2, v3, v8}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 2935
    .local v51, "singleBokehMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e02d9

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 2937
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIsBokehMode:Z

    .line 2939
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mDualBokeh:Z

    .line 2940
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mSingleBokeh:Z

    .line 2942
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 2945
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mBeauty:Z

    if-eqz v2, :cond_24

    .line 2947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 2953
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_13

    .line 2954
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mMetaDataCallback:Lcom/android/camera/PhotoModule$MetaDataCallback;

    invoke-interface {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setMetadataCb(Landroid/hardware/Camera$CameraMetaDataCallback;)V

    .line 2956
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "pref_camera_flashmode_key"

    aput-object v9, v3, v8

    const/4 v8, 0x1

    const-string v9, "off"

    aput-object v9, v3, v8

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2957
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "pref_camera_scenemode_key"

    aput-object v9, v3, v8

    const/4 v8, 0x1

    const-string v9, "auto"

    aput-object v9, v3, v8

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2958
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v48

    .line 2959
    .local v48, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "pref_camera_bokeh_blur_degree_key"

    const/16 v3, 0x32

    move-object/from16 v0, v48

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v37

    .line 2960
    .local v37, "degree":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->getBokehDegreeBar()Landroid/widget/SeekBar;

    move-result-object v2

    move/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2961
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->getBokehDegreeBar()Landroid/widget/SeekBar;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mBlurDegreeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 2962
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->enableBokehRender(Z)V

    .line 2963
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    move/from16 v0, v37

    invoke-virtual {v2, v0}, Lcom/android/camera/PhotoUI;->setBokehRenderDegree(I)V

    .line 3020
    .end local v37    # "degree":I
    .end local v48    # "prefs":Landroid/content/SharedPreferences;
    :goto_d
    return-void

    .line 2755
    .end local v30    # "aeBracket":Ljava/lang/String;
    .end local v31    # "bokehMode":Ljava/lang/String;
    .end local v49    # "reFocus":Ljava/lang/String;
    .end local v51    # "singleBokehMode":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "pref_camera_pictureformat_key"

    aput-object v9, v3, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput-object v9, v3, v8

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2765
    .restart local v49    # "reFocus":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "pref_camera_pictureformat_key"

    aput-object v9, v3, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput-object v9, v3, v8

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2778
    :cond_16
    const-string v13, "auto"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_2

    .line 2809
    .restart local v4    # "whiteBalance":Ljava/lang/String;
    .restart local v36    # "defaultEffect":Ljava/lang/String;
    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_18
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 2830
    .end local v4    # "whiteBalance":Ljava/lang/String;
    .end local v36    # "defaultEffect":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusOverlayManager;->isZslEnabled()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2831
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v5

    .line 2832
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v16, p0

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move-object/from16 v28, v14

    move-object/from16 v29, v15

    invoke-direct/range {v16 .. v29}, Lcom/android/camera/PhotoModule;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2837
    :cond_1a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    if-lez v2, :cond_1b

    .line 2838
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->updateCommonManual3ASettings()V

    goto/16 :goto_5

    .line 2840
    :cond_1b
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v16, p0

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move-object/from16 v28, v14

    move-object/from16 v29, v15

    invoke-direct/range {v16 .. v29}, Lcom/android/camera/PhotoModule;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2856
    .restart local v30    # "aeBracket":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "pref_camera_longshot_key"

    aput-object v9, v3, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput-object v9, v3, v8

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2870
    .restart local v56    # "tsMakeupLevelPref":Lcom/android/camera/IconListPreference;
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mSingleBokeh:Z

    if-eqz v2, :cond_1e

    .line 2871
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 2872
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->showText(I)V

    goto/16 :goto_7

    .line 2874
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 2875
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->showText(I)V

    goto/16 :goto_7

    .line 2880
    :cond_1f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mBeauty:Z

    goto/16 :goto_8

    .line 2896
    .end local v56    # "tsMakeupLevelPref":Lcom/android/camera/IconListPreference;
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mSavedFlashMode:Ljava/lang/String;

    if-nez v2, :cond_21

    .line 2897
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_flashmode_key"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v9, 0x7f0e037d

    .line 2899
    invoke-virtual {v8, v9}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2897
    invoke-virtual {v2, v3, v8}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/PhotoModule;->mSavedFlashMode:Ljava/lang/String;

    .line 2901
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "pref_camera_flashmode_key"

    aput-object v9, v3, v8

    const/4 v8, 0x1

    aput-object v39, v3, v8

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 2910
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_selfiemirror_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v47

    .line 2911
    .local v47, "prefSelfieMirror":Lcom/android/camera/ListPreference;
    if-eqz v47, :cond_11

    invoke-virtual/range {v47 .. v47}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 2912
    invoke-virtual/range {v47 .. v47}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2913
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "pref_camera_longshot_key"

    aput-object v9, v3, v8

    const/4 v8, 0x1

    const-string v9, "off"

    aput-object v9, v3, v8

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    goto/16 :goto_a

    .line 2928
    .end local v47    # "prefSelfieMirror":Lcom/android/camera/ListPreference;
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v9, 0x7f0e02d4

    .line 2929
    invoke-virtual {v2, v9}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_b

    .line 2949
    .restart local v31    # "bokehMode":Ljava/lang/String;
    .restart local v51    # "singleBokehMode":Ljava/lang/String;
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->showText(I)V

    goto/16 :goto_c

    .line 2967
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e02d9

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v51

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 2969
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_26

    .line 2970
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mMetaDataCallback:Lcom/android/camera/PhotoModule$MetaDataCallback;

    invoke-interface {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setMetadataCb(Landroid/hardware/Camera$CameraMetaDataCallback;)V

    .line 2973
    :cond_26
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mDualBokeh:Z

    .line 2974
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mSingleBokeh:Z

    .line 2976
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 2979
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mBeauty:Z

    if-eqz v2, :cond_27

    .line 2981
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 2987
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "pref_camera_flashmode_key"

    aput-object v9, v3, v8

    const/4 v8, 0x1

    const-string v9, "off"

    aput-object v9, v3, v8

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2988
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "pref_camera_scenemode_key"

    aput-object v9, v3, v8

    const/4 v8, 0x1

    const-string v9, "auto"

    aput-object v9, v3, v8

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2989
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v48

    .line 2990
    .restart local v48    # "prefs":Landroid/content/SharedPreferences;
    const-string v2, "pref_asus_single_bokeh_blur_degree_key"

    const/16 v3, 0x50

    move-object/from16 v0, v48

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v37

    .line 2991
    .restart local v37    # "degree":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->getBokehDegreeBar()Landroid/widget/SeekBar;

    move-result-object v2

    move/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2992
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->getBokehDegreeBar()Landroid/widget/SeekBar;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mSingleBlurDegreeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto/16 :goto_d

    .line 2983
    .end local v37    # "degree":I
    .end local v48    # "prefs":Landroid/content/SharedPreferences;
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->showText(I)V

    goto :goto_e

    .line 2996
    :cond_28
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIsBokehMode:Z

    .line 2998
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mDualBokeh:Z

    .line 2999
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mSingleBokeh:Z

    .line 3001
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mBeauty:Z

    if-nez v2, :cond_29

    .line 3003
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 3007
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_2a

    .line 3008
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setMetadataCb(Landroid/hardware/Camera$CameraMetaDataCallback;)V

    .line 3010
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "pref_camera_bokeh_mpo_key"

    aput-object v9, v3, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v10, 0x7f0e02da

    .line 3011
    invoke-virtual {v9, v10}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v8

    .line 3010
    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 3012
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "pref_camera_bokeh_blur_degree_key"

    aput-object v9, v3, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v10, 0x7f0e02e0

    .line 3013
    invoke-virtual {v9, v10}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v8

    .line 3012
    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 3014
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->getBokehDegreeBar()Landroid/widget/SeekBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 3015
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->getBokehDegreeBar()Landroid/widget/SeekBar;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 3016
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->enableBokehRender(Z)V

    .line 3017
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mBokehTipText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_d
.end method

.method private updateCommonManual3ASettings()V
    .locals 33

    .prologue
    .line 2648
    sget-object v6, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->TOUCH_AF_AEC_OFF:Ljava/lang/String;

    .line 2649
    .local v6, "touchAfAec":Ljava/lang/String;
    const-string v1, "auto"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 2650
    const-string v2, "off"

    .line 2651
    .local v2, "flashMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e00a3

    invoke-virtual {v1, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2653
    .local v13, "redeyeReduction":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e00bb

    invoke-virtual {v1, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2655
    .local v14, "aeBracketing":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e00fe

    invoke-virtual {v1, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2657
    .local v11, "colorEffect":Ljava/lang/String;
    const-string v5, "0"

    .line 2658
    .local v5, "exposureCompensation":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    if-lez v1, :cond_3

    .line 2659
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2661
    invoke-static {v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getAutoExposure(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2662
    invoke-static {v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSaturation(Landroid/hardware/Camera$Parameters;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2663
    invoke-static {v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getContrast(Landroid/hardware/Camera$Parameters;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2664
    invoke-static {v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSharpness(Landroid/hardware/Camera$Parameters;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v1, p0

    .line 2659
    invoke-direct/range {v1 .. v14}, Lcom/android/camera/PhotoModule;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2667
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "pref_camera_longshot_key"

    aput-object v7, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v8, 0x7f0e0352

    .line 2668
    invoke-virtual {v7, v8}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    .line 2667
    invoke-virtual {v1, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2680
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getISOValue(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v30

    .line 2681
    .local v30, "isoMode":Ljava/lang/String;
    const-string v29, "manual"

    .line 2682
    .local v29, "isoManual":Ljava/lang/String;
    const-string v1, "manual"

    move-object/from16 v0, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2683
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_iso_key"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e00e8

    .line 2685
    invoke-virtual {v4, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2683
    invoke-virtual {v1, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 2686
    .local v31, "isoPref":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "pref_camera_iso_key"

    aput-object v7, v3, v4

    const/4 v4, 0x1

    aput-object v31, v3, v4

    invoke-virtual {v1, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2688
    .end local v31    # "isoPref":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2689
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_whitebalance_key"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e0387

    .line 2691
    invoke-virtual {v4, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2689
    invoke-virtual {v1, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 2692
    .local v32, "whiteBalance":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "pref_camera_whitebalance_key"

    aput-object v7, v3, v4

    const/4 v4, 0x1

    aput-object v32, v3, v4

    invoke-virtual {v1, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2694
    .end local v32    # "whiteBalance":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/PhotoModule;->mManual3AEnabled:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 2695
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "pref_camera_focusmode_key"

    aput-object v7, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 2696
    invoke-virtual {v7}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    .line 2695
    invoke-virtual {v1, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2698
    :cond_2
    return-void

    .line 2671
    .end local v29    # "isoManual":Ljava/lang/String;
    .end local v30    # "isoMode":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e0112

    invoke-virtual {v1, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2673
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v15, p0

    move-object/from16 v20, v6

    invoke-direct/range {v15 .. v28}, Lcom/android/camera/PhotoModule;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2677
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "pref_camera_longshot_key"

    aput-object v7, v3, v4

    const/4 v4, 0x1

    const/4 v7, 0x0

    aput-object v7, v3, v4

    invoke-virtual {v1, v3}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private updateFocusManager(Lcom/android/camera/PhotoUI;)V
    .locals 4
    .param p1, "mUI"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 3732
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 3733
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v3, p1}, Lcom/android/camera/FocusOverlayManager;->setPhotoUI(Lcom/android/camera/FocusOverlayManager$FocusUI;)V

    .line 3735
    invoke-virtual {p1}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 3737
    .local v1, "root":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 3738
    .local v2, "width":I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 3739
    .local v0, "height":I
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v3, v2, v0}, Lcom/android/camera/FocusOverlayManager;->setPreviewSize(II)V

    .line 3741
    .end local v0    # "height":I
    .end local v1    # "root":Landroid/view/View;
    .end local v2    # "width":I
    :cond_0
    return-void
.end method

.method private updateRemainingPhotos()V
    .locals 4

    .prologue
    .line 3546
    iget v0, p0, Lcom/android/camera/PhotoModule;->mJpegFileSizeEstimation:I

    if-eqz v0, :cond_0

    .line 3547
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 3548
    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v0

    const-wide/32 v2, 0x3c00000

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/android/camera/PhotoModule;->mJpegFileSizeEstimation:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mRemainingPhotos:I

    .line 3553
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mRemainingPhotos:I

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->updateRemainingPhotos(I)V

    .line 3554
    return-void

    .line 3551
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/PhotoModule;->mRemainingPhotos:I

    goto :goto_0
.end method


# virtual methods
.method public arePreviewControlsVisible()Z
    .locals 1

    .prologue
    .line 6099
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->arePreviewControlsVisible()Z

    move-result v0

    return v0
.end method

.method public autoFocus()V
    .locals 3

    .prologue
    .line 3790
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/PhotoModule;->mFocusStartTime:J

    .line 3791
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mAutoFocusCallback:Lcom/android/camera/PhotoModule$AutoFocusCallback;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraAFCallback;)V

    .line 3792
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 3793
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 2

    .prologue
    .line 3798
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 3800
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 3801
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 3802
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 3804
    :cond_0
    return-void
.end method

.method public capture()Z
    .locals 26

    .prologue
    .line 2365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2368
    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2369
    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/MediaSaveService;->isQueueFull()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2370
    :cond_0
    const/4 v2, 0x0

    .line 2620
    :goto_0
    return v2

    .line 2372
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    .line 2373
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J

    .line 2374
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    .line 2376
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    .line 2377
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mNSBufferCount:I

    .line 2378
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/PhotoModule;->exifraw:Lcom/android/camera/exif/ExifInterface;

    .line 2379
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mNSExifGot:Z

    .line 2382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    const-string v3, "hdr"

    if-ne v2, v3, :cond_d

    const/4 v9, 0x1

    .line 2383
    .local v9, "animateBefore":Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mHiston:Z

    if-eqz v2, :cond_3

    .line 2384
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mSnapshotMode:I

    sget v3, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_ZSL:I

    if-eq v2, v3, :cond_2

    .line 2385
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mHiston:Z

    .line 2386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setHistogramMode(Landroid/hardware/Camera$CameraDataCallback;)V

    .line 2388
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v3, Lcom/android/camera/PhotoModule$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/camera/PhotoModule$7;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2396
    :cond_3
    if-nez v9, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIsBokehMode:Z

    if-eqz v2, :cond_5

    .line 2397
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->showWaitingProgress(Z)V

    .line 2400
    :cond_5
    if-eqz v9, :cond_6

    .line 2401
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->animateAfterShutter()V

    .line 2404
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "picture-format"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2406
    .local v13, "format":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_e

    .line 2407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setLongshot(Z)V

    .line 2408
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIs3dnrMode:Z

    .line 2410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "3d_nr_is_applied"

    const-string v4, "disable"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2489
    :cond_7
    :goto_2
    const-string v2, "On"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_tsmakeup_key"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v6, 0x7f0e0225

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mLowCostBeauty:Z

    if-eqz v2, :cond_19

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_19

    .line 2491
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mBeautyShotEnable:Z

    .line 2492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v21

    .line 2493
    .local v21, "pic_size":Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    or-int/lit8 v2, v2, 0x8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    .line 2494
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIs3dnrMode:Z

    if-eqz v2, :cond_16

    .line 2506
    .end local v21    # "pic_size":Landroid/hardware/Camera$Size;
    :goto_3
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFeatureMask = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    if-eqz v2, :cond_9

    .line 2508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    invoke-virtual {v2}, Lcom/android/camera/MultiPPManager;->isInited()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/PhotoModule;->mNSWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/PhotoModule;->mNSHeight:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/MultiPPManager;->reset(III)Z

    .line 2513
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mMultiPPCallback:Lcom/android/camera/PhotoModule$MultiPPCallback;

    invoke-virtual {v2, v3}, Lcom/android/camera/MultiPPManager;->setPostProcCallback(Lcom/android/camera/MultiPPManager$PostProcCallback;)V

    .line 2515
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mBeautyShotEnable:Z

    if-eqz v2, :cond_a

    .line 2516
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mLowCostBeauty:Z

    if-eqz v2, :cond_1b

    .line 2517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    const/16 v3, 0x8

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/MultiPPManager;->setParams(I[I)Z

    .line 2532
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/PhotoModule;->mOrientation:I

    move/from16 v20, v0

    .line 2533
    .local v20, "orientation":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mCameraId:I

    move/from16 v0, v20

    invoke-static {v2, v0}, Lcom/android/camera/util/CameraUtil;->getJpegRotation(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    .line 2534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "picture-format"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2535
    .local v22, "pictureFormat":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/camera/PhotoModule;->getLocationAccordPictureFormat(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v17

    .line 2537
    .local v17, "loc":Landroid/location/Location;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v3

    .line 2538
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 2539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/android/camera/util/CameraUtil;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 2541
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mRefocus:Z

    if-eqz v2, :cond_1c

    .line 2542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "snapshot-burst-num"

    const/4 v5, 0x7

    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 2552
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/camera/FocusOverlayManager;->setAeAwbLock(Z)V

    .line 2553
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->setAutoExposureLockIfSupported()V

    .line 2554
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->setAutoWhiteBalanceLockIfSupported()V

    .line 2556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v2, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2558
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2561
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "num-snaps-per-shutter"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mBurstSnapNum:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2565
    :goto_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mReceivedSnapNum:I

    .line 2566
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->isPreviewRestartEnabled()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mPreviewRestartSupport:Z

    .line 2567
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mPreviewRestartSupport:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isInternalPreviewSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v3

    and-int/2addr v2, v3

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mPreviewRestartSupport:Z

    .line 2569
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/PhotoModule;->mPreviewRestartSupport:Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mBurstSnapNum:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1d

    const/4 v2, 0x1

    :goto_8
    and-int/2addr v2, v3

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mPreviewRestartSupport:Z

    .line 2571
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/PhotoModule;->mPreviewRestartSupport:Z

    const-string v2, "hdr"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    const/4 v2, 0x1

    :goto_9
    and-int/2addr v2, v3

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mPreviewRestartSupport:Z

    .line 2572
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mPreviewRestartSupport:Z

    const-string v3, "jpeg"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v2, v3

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mPreviewRestartSupport:Z

    .line 2577
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_b

    .line 2578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->enableShutter(Z)V

    .line 2581
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->isShutterSoundOn()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 2582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->enableShutterSound(Z)V

    .line 2587
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIsBokehMode:Z

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mDepthSuccess:Z

    if-eqz v2, :cond_21

    const/4 v2, 0x1

    :goto_b
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mSaveBokehXmp:Z

    .line 2589
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_23

    .line 2590
    const-string v2, "persist.sys.camera.longshot.shotnum"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mLongShotCaptureCountLimit:I

    .line 2592
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mLongShotCaptureCount:I

    .line 2593
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mLongshotSave:Z

    if-eqz v2, :cond_22

    .line 2594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/camera/PhotoModule$LongshotShutterCallback;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/camera/PhotoModule$LongshotShutterCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mRawPictureCallback:Lcom/android/camera/PhotoModule$RawPictureCallback;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallback:Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    new-instance v7, Lcom/android/camera/PhotoModule$LongshotPictureCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v7, v0, v1}, Lcom/android/camera/PhotoModule$LongshotPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Landroid/location/Location;)V

    invoke-interface/range {v2 .. v7}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraShutterCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;)V

    .line 2612
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/PhotoModule;->mRefocus:Z

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(JZ)V

    .line 2614
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mSnapshotMode:I

    sget v3, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_ZSL:I

    if-eq v2, v3, :cond_c

    .line 2615
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 2617
    :cond_c
    const-string v3, "Camera"

    const-string v4, "CaptureDone"

    const-string v5, "Photo"

    const-wide/16 v6, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 2619
    invoke-static {v2}, Lcom/android/camera/PhotoModule$NamedImages;->access$10200(Lcom/android/camera/PhotoModule$NamedImages;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    iget-object v2, v2, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ".jpg"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/util/UsageStatistics;->hashFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2617
    invoke-static/range {v3 .. v8}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 2620
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2382
    .end local v9    # "animateBefore":Z
    .end local v13    # "format":Ljava/lang/String;
    .end local v17    # "loc":Landroid/location/Location;
    .end local v20    # "orientation":I
    .end local v22    # "pictureFormat":Ljava/lang/String;
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 2412
    .restart local v9    # "animateBefore":Z
    .restart local v13    # "format":Ljava/lang/String;
    :cond_e
    const-string v2, "hdr"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2413
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_f
    const-string v2, "jpeg"

    .line 2418
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mDualBokeh:Z

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mSingleBokeh:Z

    if-eqz v2, :cond_11

    .line 2421
    :cond_10
    const-string v2, "CAM_PhotoModule"

    const-string v3, "mode conflict, don\'t open 3dnr"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIs3dnrMode:Z

    .line 2423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "3d_nr_is_applied"

    const-string v4, "disable"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2425
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mDualBokeh:Z

    if-eqz v2, :cond_7

    .line 2426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->hideRender()V

    goto/16 :goto_2

    .line 2430
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2431
    const/16 v16, 0x0

    .line 2432
    .local v16, "iso":I
    const-wide/16 v14, 0x0

    .line 2433
    .local v14, "exp_time":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getISOValue()Ljava/lang/String;

    move-result-object v23

    .line 2434
    .local v23, "set_iso":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "cur-iso"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2435
    .local v11, "currentISO":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "cur-exposure-time"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2436
    .local v10, "currentExpTime":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 2437
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current set_iso = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", current exp time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v21

    .line 2439
    .restart local v21    # "pic_size":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v21

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mNSWidth:I

    .line 2440
    move-object/from16 v0, v21

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mNSHeight:I

    .line 2441
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mNSWidth:I

    rem-int/lit8 v2, v2, 0x40

    if-nez v2, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mNSWidth:I

    :goto_d
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mNSStrideW:I

    .line 2442
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mNSHeight:I

    rem-int/lit8 v2, v2, 0x40

    if-nez v2, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mNSHeight:I

    :goto_e
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mNSStrideH:I

    .line 2443
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mNSFlashFired:Z

    .line 2444
    const/4 v2, -0x1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_12
    :goto_f
    packed-switch v2, :pswitch_data_0

    .line 2483
    const-string v2, "CAM_PhotoModule"

    const-string v3, "ISO read fail!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIs3dnrMode:Z

    goto/16 :goto_2

    .line 2441
    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mNSWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/PhotoModule;->mNSWidth:I

    rem-int/lit8 v3, v3, 0x40

    rsub-int/lit8 v3, v3, 0x40

    add-int/2addr v2, v3

    goto :goto_d

    .line 2442
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mNSHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/PhotoModule;->mNSHeight:I

    rem-int/lit8 v3, v3, 0x40

    rsub-int/lit8 v3, v3, 0x40

    add-int/2addr v2, v3

    goto :goto_e

    .line 2444
    :sswitch_0
    const-string v3, "auto"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v2, 0x0

    goto :goto_f

    :sswitch_1
    const-string v3, "ISO_HJR"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v2, 0x1

    goto :goto_f

    :sswitch_2
    const-string v3, "ISO100"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v2, 0x2

    goto :goto_f

    :sswitch_3
    const-string v3, "ISO200"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v2, 0x3

    goto :goto_f

    :sswitch_4
    const-string v3, "ISO400"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v2, 0x4

    goto :goto_f

    :sswitch_5
    const-string v3, "ISO800"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v2, 0x5

    goto :goto_f

    :sswitch_6
    const-string v3, "ISO1600"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v2, 0x6

    goto :goto_f

    :sswitch_7
    const-string v3, "ISO3200"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v2, 0x7

    goto/16 :goto_f

    .line 2447
    :pswitch_0
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "auto iso, current iso = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    :try_start_2
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v16

    .line 2453
    :goto_10
    const/16 v2, 0x320

    move/from16 v0, v16

    if-lt v0, v2, :cond_15

    .line 2454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "3d_nr_is_applied"

    const-string v4, "enable"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2455
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    .line 2456
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->addNSCallbackBuffer()V

    .line 2457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mMetaDataCallback:Lcom/android/camera/PhotoModule$MetaDataCallback;

    invoke-interface {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setMetadataCb(Landroid/hardware/Camera$CameraMetaDataCallback;)V

    .line 2458
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIs3dnrMode:Z

    goto/16 :goto_2

    .line 2460
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "3d_nr_is_applied"

    const-string v4, "disable"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2461
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIs3dnrMode:Z

    goto/16 :goto_2

    .line 2467
    :pswitch_1
    const-string v2, "CAM_PhotoModule"

    const-string v3, "No need to use 3dnr"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "3d_nr_is_applied"

    const-string v4, "disable"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2469
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIs3dnrMode:Z

    goto/16 :goto_2

    .line 2474
    :pswitch_2
    const-string v2, "CAM_PhotoModule"

    const-string v3, "need 3dnr"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "3d_nr_is_applied"

    const-string v4, "enable"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2476
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    .line 2477
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->addNSCallbackBuffer()V

    .line 2478
    const-string v2, "CAM_PhotoModule"

    const-string v3, "set metadata cb"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mMetaDataCallback:Lcom/android/camera/PhotoModule$MetaDataCallback;

    invoke-interface {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setMetadataCb(Landroid/hardware/Camera$CameraMetaDataCallback;)V

    .line 2480
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mIs3dnrMode:Z

    goto/16 :goto_2

    .line 2497
    .end local v10    # "currentExpTime":Ljava/lang/String;
    .end local v11    # "currentISO":Ljava/lang/String;
    .end local v14    # "exp_time":D
    .end local v16    # "iso":I
    .end local v23    # "set_iso":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, v21

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mNSWidth:I

    .line 2498
    move-object/from16 v0, v21

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mNSHeight:I

    .line 2499
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mNSWidth:I

    rem-int/lit8 v2, v2, 0x40

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mNSWidth:I

    :goto_11
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mNSStrideW:I

    .line 2500
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mNSHeight:I

    rem-int/lit8 v2, v2, 0x40

    if-nez v2, :cond_18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mNSHeight:I

    :goto_12
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mNSStrideH:I

    .line 2501
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->addNSCallbackBuffer()V

    goto/16 :goto_3

    .line 2499
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mNSWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/PhotoModule;->mNSWidth:I

    rem-int/lit8 v3, v3, 0x40

    rsub-int/lit8 v3, v3, 0x40

    add-int/2addr v2, v3

    goto :goto_11

    .line 2500
    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/PhotoModule;->mNSHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/PhotoModule;->mNSHeight:I

    rem-int/lit8 v3, v3, 0x40

    rsub-int/lit8 v3, v3, 0x40

    add-int/2addr v2, v3

    goto :goto_12

    .line 2504
    .end local v21    # "pic_size":Landroid/hardware/Camera$Size;
    :cond_19
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule;->mBeautyShotEnable:Z

    goto/16 :goto_3

    .line 2511
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/PhotoModule;->mFeatureMask:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/PhotoModule;->mNSWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/PhotoModule;->mNSHeight:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/camera/MultiPPManager;->init(Lcom/android/camera/CameraActivity;III)Z

    goto/16 :goto_4

    .line 2519
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_tsmakeup_whiten"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e0226

    .line 2520
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2519
    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2521
    .local v19, "makeupWhitenValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_tsmakeup_clean"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e0226

    .line 2522
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2521
    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2523
    .local v18, "makeupCleanValue":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 2524
    .local v25, "whiten":I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 2526
    .local v24, "soften":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    const/16 v3, 0x8

    const/4 v4, 0x4

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v25, v4, v5

    const/4 v5, 0x1

    aput v24, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    aput v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/MultiPPManager;->setParams(I[I)Z

    goto/16 :goto_5

    .line 2545
    .end local v18    # "makeupCleanValue":Ljava/lang/String;
    .end local v19    # "makeupWhitenValue":Ljava/lang/String;
    .end local v24    # "soften":I
    .end local v25    # "whiten":I
    .restart local v17    # "loc":Landroid/location/Location;
    .restart local v20    # "orientation":I
    .restart local v22    # "pictureFormat":Ljava/lang/String;
    :cond_1c
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "snapshot-burst-num"

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2558
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2562
    :catch_0
    move-exception v12

    .line 2563
    .local v12, "ex":Ljava/lang/NumberFormatException;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/PhotoModule;->mBurstSnapNum:I

    goto/16 :goto_7

    .line 2569
    .end local v12    # "ex":Ljava/lang/NumberFormatException;
    :cond_1d
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 2571
    :cond_1e
    const/4 v2, 0x0

    goto/16 :goto_9

    .line 2584
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/PhotoModule;->mRefocus:Z

    if-nez v2, :cond_20

    const/4 v2, 0x1

    :goto_13
    invoke-interface {v3, v2}, Lcom/android/camera/CameraManager$CameraProxy;->enableShutterSound(Z)V

    goto/16 :goto_a

    :cond_20
    const/4 v2, 0x0

    goto :goto_13

    .line 2587
    :cond_21
    const/4 v2, 0x0

    goto/16 :goto_b

    .line 2599
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/camera/PhotoModule$LongshotShutterCallback;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/camera/PhotoModule$LongshotShutterCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mRawPictureCallback:Lcom/android/camera/PhotoModule$RawPictureCallback;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallback:Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    new-instance v7, Lcom/android/camera/PhotoModule$JpegPictureCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v7, v0, v1}, Lcom/android/camera/PhotoModule$JpegPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Landroid/location/Location;)V

    invoke-interface/range {v2 .. v7}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraShutterCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;)V

    goto/16 :goto_c

    .line 2605
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/camera/PhotoModule$ShutterCallback;

    if-nez v9, :cond_24

    const/4 v5, 0x1

    :goto_14
    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/camera/PhotoModule$ShutterCallback;-><init>(Lcom/android/camera/PhotoModule;Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mRawPictureCallback:Lcom/android/camera/PhotoModule$RawPictureCallback;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallback:Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    new-instance v7, Lcom/android/camera/PhotoModule$JpegPictureCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v7, v0, v1}, Lcom/android/camera/PhotoModule$JpegPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Landroid/location/Location;)V

    invoke-interface/range {v2 .. v7}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraShutterCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;)V

    .line 2609
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    goto/16 :goto_c

    .line 2605
    :cond_24
    const/4 v5, 0x0

    goto :goto_14

    .line 2451
    .end local v17    # "loc":Landroid/location/Location;
    .end local v20    # "orientation":I
    .end local v22    # "pictureFormat":Ljava/lang/String;
    .restart local v10    # "currentExpTime":Ljava/lang/String;
    .restart local v11    # "currentISO":Ljava/lang/String;
    .restart local v14    # "exp_time":D
    .restart local v16    # "iso":I
    .restart local v21    # "pic_size":Landroid/hardware/Camera$Size;
    .restart local v23    # "set_iso":Ljava/lang/String;
    :catch_1
    move-exception v2

    goto/16 :goto_10

    .line 2517
    :array_0
    .array-data 4
        0x14
        0x14
        0x0
        0x0
    .end array-data

    .line 2444
    :sswitch_data_0
    .sparse-switch
        -0x7eb7f494 -> :sswitch_2
        -0x7eb7f0d3 -> :sswitch_3
        -0x7eb7e951 -> :sswitch_4
        -0x7eb7da4d -> :sswitch_5
        -0x58468736 -> :sswitch_6
        -0x5845ad7c -> :sswitch_7
        -0x5831574a -> :sswitch_1
        0x2dddaf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public enableRecordingLocation(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 972
    if-eqz p1, :cond_0

    const-string v0, "on"

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setLocationPreference(Ljava/lang/String;)V

    .line 974
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 975
    return-void

    .line 972
    :cond_0
    const-string v0, "off"

    goto :goto_0
.end method

.method protected getCamera()Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1

    .prologue
    .line 3781
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method public getCameraState()I
    .locals 1

    .prologue
    .line 6041
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    return v0
.end method

.method public getCurrentCameraId()I
    .locals 1

    .prologue
    .line 6245
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    return v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method public init(Lcom/android/camera/CameraActivity;Landroid/view/View;)V
    .locals 5
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 855
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 856
    iput-object p2, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    .line 857
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 858
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-nez v1, :cond_0

    .line 859
    new-instance v1, Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v1, v2}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 862
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    .line 863
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v1}, Lcom/android/camera/PhotoModule;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    .line 865
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    if-nez v1, :cond_1

    .line 866
    new-instance v1, Lcom/android/camera/PhotoModule$OpenCameraThread;

    invoke-direct {v1, p0, v4}, Lcom/android/camera/PhotoModule$OpenCameraThread;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    .line 867
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule$OpenCameraThread;->start()V

    .line 870
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 874
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->isImageCaptureIntent()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    .line 876
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 877
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 879
    new-instance v1, Lcom/android/camera/PhotoUI;

    invoke-direct {v1, p1, p0, p2}, Lcom/android/camera/PhotoUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PhotoController;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    .line 881
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    if-nez v1, :cond_2

    .line 882
    new-instance v1, Lcom/android/camera/PhotoModule$StartPreviewThread;

    invoke-direct {v1, p0, v4}, Lcom/android/camera/PhotoModule$StartPreviewThread;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    .line 883
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule$StartPreviewThread;->start()V

    .line 886
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeControlByIntent()V

    .line 887
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.quickCapture"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mQuickCapture:Z

    .line 888
    new-instance v1, Lcom/android/camera/LocationManager;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v1, v2, p0}, Lcom/android/camera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/camera/LocationManager$Listener;)V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 889
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    .line 891
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v2, 0x7f0d00a4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->brightnessProgressBar:Landroid/widget/ProgressBar;

    .line 893
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v2, 0x7f0d00ac

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mBokehTipText:Landroid/widget/TextView;

    .line 895
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->brightnessProgressBar:Landroid/widget/ProgressBar;

    instance-of v1, v1, Landroid/widget/SeekBar;

    if-eqz v1, :cond_3

    .line 896
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->brightnessProgressBar:Landroid/widget/ProgressBar;

    check-cast v0, Landroid/widget/SeekBar;

    .line 897
    .local v0, "seeker":Landroid/widget/SeekBar;
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 899
    .end local v0    # "seeker":Landroid/widget/SeekBar;
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->brightnessProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 900
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_brightness_key"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    .line 903
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->brightnessProgressBar:Landroid/widget/ProgressBar;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 904
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->brightnessProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 905
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_savepath_key"

    const-string v3, "0"

    .line 906
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 905
    invoke-static {v1}, Lcom/android/camera/Storage;->setSaveSDCard(Z)V

    .line 908
    new-instance v1, Lcom/android/camera/MultiPPManager;

    invoke-direct {v1}, Lcom/android/camera/MultiPPManager;-><init>()V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    .line 910
    return-void
.end method

.method public installIntentFilter()V
    .locals 0

    .prologue
    .line 3429
    return-void
.end method

.method public isCameraIdle()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 5331
    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 5333
    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->isFocusCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 5339
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5340
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 5341
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRefocus()Z
    .locals 1

    .prologue
    .line 6124
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mLastPhotoTakenWithRefocus:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 6060
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 3760
    packed-switch p1, :pswitch_data_0

    .line 3778
    :goto_0
    return-void

    .line 3762
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3763
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 3764
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 3765
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 3766
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3769
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3, p2, v1}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 3770
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->finish()V

    .line 3772
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v4, "crop-temp"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 3773
    .local v2, "path":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 3760
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 3827
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCameraPickerClicked(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 5935
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 5944
    :cond_0
    :goto_0
    return-void

    .line 5937
    :cond_1
    iput p1, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 5939
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start to switch camera. cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5943
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->switchCamera()V

    goto :goto_0
.end method

.method public onCaptureCancelled()V
    .locals 3

    .prologue
    .line 3139
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 3140
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->finish()V

    .line 3141
    return-void
.end method

.method public onCaptureDone()V
    .locals 17

    .prologue
    .line 3153
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v13, :cond_0

    .line 3232
    :goto_0
    return-void

    .line 3157
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    .line 3159
    .local v4, "data":[B
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mCropValue:Ljava/lang/String;

    if-nez v13, :cond_2

    .line 3164
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v13, :cond_1

    .line 3165
    const/4 v9, 0x0

    .line 3167
    .local v9, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v13, v14}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v9

    .line 3168
    invoke-virtual {v9, v4}, Ljava/io/OutputStream;->write([B)V

    .line 3169
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 3171
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 3172
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3176
    invoke-static {v9}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 3173
    :catch_0
    move-exception v13

    .line 3176
    invoke-static {v9}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v13

    invoke-static {v9}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v13

    .line 3179
    .end local v9    # "outputStream":Ljava/io/OutputStream;
    :cond_1
    invoke-static {v4}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v6

    .line 3180
    .local v6, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-static {v6}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v8

    .line 3181
    .local v8, "orientation":I
    const v13, 0xc800

    invoke-static {v4, v13}, Lcom/android/camera/util/CameraUtil;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3182
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v2, v8}, Lcom/android/camera/util/CameraUtil;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3183
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v14, -0x1

    new-instance v15, Landroid/content/Intent;

    const-string v16, "inline-data"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v16, "data"

    .line 3184
    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v15

    .line 3183
    invoke-virtual {v13, v14, v15}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 3185
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->finish()V

    goto :goto_0

    .line 3189
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v8    # "orientation":I
    :cond_2
    const/4 v12, 0x0

    .line 3190
    .local v12, "tempUri":Landroid/net/Uri;
    const/4 v11, 0x0

    .line 3192
    .local v11, "tempStream":Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v14, "crop-temp"

    invoke-virtual {v13, v14}, Lcom/android/camera/CameraActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 3193
    .local v10, "path":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 3194
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v14, "crop-temp"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/CameraActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v11

    .line 3195
    invoke-virtual {v11, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 3196
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 3197
    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v12

    .line 3207
    invoke-static {v11}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 3210
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 3211
    .local v7, "newExtras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mCropValue:Ljava/lang/String;

    const-string v14, "circle"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 3212
    const-string v13, "circleCrop"

    const-string v14, "true"

    invoke-virtual {v7, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3214
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v13, :cond_5

    .line 3215
    const-string v13, "output"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v7, v13, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3219
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 3220
    const-string v13, "showWhenLocked"

    const/4 v14, 0x1

    invoke-virtual {v7, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3224
    :cond_4
    const-string v1, "com.android.camera.action.CROP"

    .line 3225
    .local v1, "CROP_ACTION":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v13, "com.android.camera.action.CROP"

    invoke-direct {v3, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3227
    .local v3, "cropIntent":Landroid/content/Intent;
    invoke-virtual {v3, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3228
    invoke-virtual {v3, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3230
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/16 v14, 0x3e8

    invoke-virtual {v13, v3, v14}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3198
    .end local v1    # "CROP_ACTION":Ljava/lang/String;
    .end local v3    # "cropIntent":Landroid/content/Intent;
    .end local v7    # "newExtras":Landroid/os/Bundle;
    .end local v10    # "path":Ljava/io/File;
    :catch_1
    move-exception v5

    .line 3199
    .local v5, "ex":Ljava/io/FileNotFoundException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 3200
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3207
    invoke-static {v11}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 3202
    .end local v5    # "ex":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v5

    .line 3203
    .local v5, "ex":Ljava/io/IOException;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 3204
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3207
    invoke-static {v11}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .end local v5    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v13

    invoke-static {v11}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v13

    .line 3217
    .restart local v7    # "newExtras":Landroid/os/Bundle;
    .restart local v10    # "path":Ljava/io/File;
    :cond_5
    const-string v13, "return-data"

    const/4 v14, 0x1

    invoke-virtual {v7, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public onCaptureRetake()V
    .locals 1

    .prologue
    .line 3145
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 3149
    :goto_0
    return-void

    .line 3147
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->hidePostCaptureAlert()V

    .line 3148
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupPreview()V

    goto :goto_0
.end method

.method public onCaptureTextureCopied()V
    .locals 0

    .prologue
    .line 5955
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 3745
    const-string v0, "CAM_PhotoModule"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3746
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setDisplayOrientation()V

    .line 3747
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->resizeForPreviewAspectRatio()V

    .line 3748
    return-void
.end method

.method public onCountDownFinished()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5999
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 6000
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initiateSnap()V

    .line 6001
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onShutterUp()V

    .line 6002
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "pref_camera_zsl_key"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 6003
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->showUIAfterCountDown()V

    .line 6004
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 3133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 3135
    return-void
.end method

.method public onErrorListener(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 6240
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoModule;->enableRecordingLocation(Z)V

    .line 6241
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3832
    sparse-switch p1, :sswitch_data_0

    .line 3908
    :cond_0
    :goto_0
    return v1

    .line 3835
    :sswitch_0
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/android/camera/util/CameraUtil;->volumeKeyShutterDisable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3842
    :sswitch_1
    iget-boolean v3, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v3, :cond_0

    .line 3843
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 3844
    invoke-virtual {p0, v2}, Lcom/android/camera/PhotoModule;->onShutterButtonFocus(Z)V

    :cond_1
    move v1, v2

    .line 3846
    goto :goto_0

    .line 3850
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 3851
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onShutterButtonClick()V

    :cond_2
    move v1, v2

    .line 3853
    goto :goto_0

    .line 3855
    :sswitch_3
    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 3856
    invoke-virtual {v3}, Lcom/android/camera/FocusOverlayManager;->getCurrentFocusState()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eq v3, v2, :cond_0

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 3857
    invoke-virtual {v3}, Lcom/android/camera/FocusOverlayManager;->getCurrentFocusState()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eq v3, v5, :cond_0

    .line 3858
    iget v3, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    if-lez v3, :cond_3

    .line 3859
    iget v3, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    iget v4, p0, Lcom/android/camera/PhotoModule;->mbrightness_step:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    .line 3860
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v3

    .line 3862
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v4}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3863
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "luma-adaptation"

    iget v6, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3864
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v4, v5}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3865
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3867
    :cond_3
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->brightnessProgressBar:Landroid/widget/ProgressBar;

    iget v4, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3868
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v3}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3869
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_camera_brightness_key"

    iget v4, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3870
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3871
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->brightnessProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3872
    sput-boolean v2, Lcom/android/camera/PhotoModule;->mBrightnessVisible:Z

    goto/16 :goto_0

    .line 3865
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 3876
    :sswitch_4
    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 3877
    invoke-virtual {v3}, Lcom/android/camera/FocusOverlayManager;->getCurrentFocusState()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eq v3, v2, :cond_0

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 3878
    invoke-virtual {v3}, Lcom/android/camera/FocusOverlayManager;->getCurrentFocusState()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eq v3, v5, :cond_0

    .line 3879
    iget v3, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    const/4 v4, 0x6

    if-ge v3, v4, :cond_4

    .line 3880
    iget v3, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    iget v4, p0, Lcom/android/camera/PhotoModule;->mbrightness_step:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    .line 3881
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v3

    .line 3883
    :try_start_2
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v4}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3884
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "luma-adaptation"

    iget v6, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3885
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v4, v5}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3886
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3888
    :cond_4
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->brightnessProgressBar:Landroid/widget/ProgressBar;

    iget v4, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3889
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v3}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3890
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_camera_brightness_key"

    iget v4, p0, Lcom/android/camera/PhotoModule;->mbrightness:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3891
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3892
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->brightnessProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3893
    sput-boolean v2, Lcom/android/camera/PhotoModule;->mBrightnessVisible:Z

    goto/16 :goto_0

    .line 3886
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 3899
    :sswitch_5
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_5

    .line 3903
    invoke-virtual {p0, v2}, Lcom/android/camera/PhotoModule;->onShutterButtonFocus(Z)V

    .line 3904
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->pressShutterButton()V

    :cond_5
    move v1, v2

    .line 3906
    goto/16 :goto_0

    .line 3832
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x17 -> :sswitch_5
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_2
        0x4f -> :sswitch_1
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3913
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 3933
    :cond_0
    :goto_0
    return v0

    .line 3916
    :sswitch_0
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 3917
    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->volumeKeyShutterDisable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3918
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onShutterButtonClick()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 3921
    goto :goto_0

    .line 3924
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onShutterButtonClick()V

    goto :goto_0

    .line 3928
    :sswitch_2
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_0

    .line 3929
    invoke-virtual {p0, v1}, Lcom/android/camera/PhotoModule;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 3913
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x4f -> :sswitch_1
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method public onMakeupLevel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 6129
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 6130
    const-string v0, "CAM_PhotoModule"

    const-string v1, "MakeupLevel failed CameraDevice not yet initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6136
    :goto_0
    return-void

    .line 6133
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v1

    .line 6134
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/PhotoModule;->onMakeupLevelSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 6135
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onMakeupLevelSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const v9, 0x7f0e0226

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 6139
    const-string v4, "CAM_PhotoModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PhotoModule.onMakeupLevel(): key is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6141
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6236
    :goto_0
    return-void

    .line 6145
    :cond_0
    const-string v2, "On"

    .line 6147
    .local v2, "prefValue":Ljava/lang/String;
    const-string v4, "Off"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 6148
    const-string v2, "Off"

    .line 6149
    iget-boolean v4, p0, Lcom/android/camera/PhotoModule;->mDualBokeh:Z

    if-eqz v4, :cond_5

    .line 6151
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v4, v7}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 6152
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 6159
    :goto_1
    iput-boolean v8, p0, Lcom/android/camera/PhotoModule;->mBeauty:Z

    .line 6173
    :goto_2
    const-string v4, "CAM_PhotoModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMakeupLevel(): prefValue is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6174
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "tsmakeup"

    invoke-virtual {v4, v5, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6176
    invoke-static {p2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 6177
    const-string v4, "none"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 6178
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v5, "pref_camera_tsmakeup_whiten"

    invoke-virtual {v4, v5}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 6179
    .local v1, "pref":Lcom/android/camera/ListPreference;
    if-eqz v1, :cond_2

    .line 6180
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 6181
    .local v3, "whitenValue":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6182
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4, v9}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 6184
    :cond_1
    invoke-virtual {v1, v3}, Lcom/android/camera/ListPreference;->setMakeupSeekBarValue(Ljava/lang/String;)V

    .line 6185
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "tsmakeup_whiten"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 6188
    .end local v3    # "whitenValue":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v5, "pref_camera_tsmakeup_clean"

    invoke-virtual {v4, v5}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 6189
    if-eqz v1, :cond_4

    .line 6190
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 6191
    .local v0, "cleanValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6192
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4, v9}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6194
    :cond_3
    invoke-virtual {v1, v0}, Lcom/android/camera/ListPreference;->setMakeupSeekBarValue(Ljava/lang/String;)V

    .line 6195
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "tsmakeup_clean"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 6223
    .end local v0    # "cleanValue":Ljava/lang/String;
    .end local v1    # "pref":Lcom/android/camera/ListPreference;
    :cond_4
    :goto_3
    iget v4, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    if-ne v4, v7, :cond_f

    iget-boolean v4, p0, Lcom/android/camera/PhotoModule;->mBeauty:Z

    if-nez v4, :cond_f

    .line 6224
    const-string v4, "CAM_PhotoModule"

    const-string v5, "set low cost fb on."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6225
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "asus_beauty"

    const-string v6, "on"

    invoke-virtual {v4, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6226
    iput-boolean v7, p0, Lcom/android/camera/PhotoModule;->mLowCostBeauty:Z

    .line 6234
    :goto_4
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v4, v5}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 6235
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v4}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    goto/16 :goto_0

    .line 6153
    :cond_5
    iget-boolean v4, p0, Lcom/android/camera/PhotoModule;->mSingleBokeh:Z

    if-eqz v4, :cond_6

    .line 6154
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v4, v7}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 6155
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/camera/PhotoUI;->showText(I)V

    goto/16 :goto_1

    .line 6157
    :cond_6
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v4, v8}, Lcom/android/camera/PhotoUI;->showText(I)V

    goto/16 :goto_1

    .line 6161
    :cond_7
    iput-boolean v7, p0, Lcom/android/camera/PhotoModule;->mBeauty:Z

    .line 6162
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v4, v7}, Lcom/android/camera/PhotoUI;->showText(I)V

    .line 6163
    iget-boolean v4, p0, Lcom/android/camera/PhotoModule;->mDualBokeh:Z

    if-eqz v4, :cond_8

    .line 6165
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/android/camera/PhotoUI;->showText(I)V

    goto/16 :goto_2

    .line 6166
    :cond_8
    iget-boolean v4, p0, Lcom/android/camera/PhotoModule;->mSingleBokeh:Z

    if-eqz v4, :cond_9

    .line 6167
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lcom/android/camera/PhotoUI;->showText(I)V

    goto/16 :goto_2

    .line 6169
    :cond_9
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/camera/PhotoUI;->showText(I)V

    goto/16 :goto_2

    .line 6199
    :cond_a
    const-string v4, "pref_camera_tsmakeup_level_key"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 6200
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v4, :cond_b

    .line 6201
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "tsmakeup_whiten"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 6202
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "tsmakeup_clean"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 6204
    :cond_b
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v5, "pref_camera_tsmakeup_whiten"

    invoke-virtual {v4, v5}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 6205
    .restart local v1    # "pref":Lcom/android/camera/ListPreference;
    if-eqz v1, :cond_c

    .line 6206
    invoke-virtual {v1, p2}, Lcom/android/camera/ListPreference;->setMakeupSeekBarValue(Ljava/lang/String;)V

    .line 6208
    :cond_c
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v5, "pref_camera_tsmakeup_clean"

    invoke-virtual {v4, v5}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 6209
    if-eqz v1, :cond_4

    .line 6210
    invoke-virtual {v1, p2}, Lcom/android/camera/ListPreference;->setMakeupSeekBarValue(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 6212
    .end local v1    # "pref":Lcom/android/camera/ListPreference;
    :cond_d
    const-string v4, "pref_camera_tsmakeup_whiten"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 6213
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v4, :cond_4

    .line 6214
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "tsmakeup_whiten"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 6216
    :cond_e
    const-string v4, "pref_camera_tsmakeup_clean"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 6217
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v4, :cond_4

    .line 6218
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "tsmakeup_clean"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 6228
    :cond_f
    const-string v4, "CAM_PhotoModule"

    const-string v5, "set low cost fb off."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6229
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "asus_beauty"

    const-string v6, "off"

    invoke-virtual {v4, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6230
    iput-boolean v8, p0, Lcom/android/camera/PhotoModule;->mLowCostBeauty:Z

    goto/16 :goto_4
.end method

.method public onMediaSaveServiceConnected(Lcom/android/camera/MediaSaveService;)V
    .locals 1
    .param p1, "s"    # Lcom/android/camera/MediaSaveService;

    .prologue
    .line 6053
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 6054
    invoke-virtual {p1, p0}, Lcom/android/camera/MediaSaveService;->setListener(Lcom/android/camera/MediaSaveService$Listener;)V

    .line 6056
    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 3094
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 3125
    :cond_0
    :goto_0
    return-void

    .line 3095
    :cond_1
    iget v0, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    .line 3096
    .local v0, "oldOrientation":I
    iget v1, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    invoke-static {p1, v1}, Lcom/android/camera/util/CameraUtil;->roundOrientation(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    .line 3097
    iget v1, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    if-eq v0, v1, :cond_3

    .line 3098
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-ne v1, v4, :cond_2

    .line 3099
    const-string v1, "CAM_PhotoModule"

    const-string v2, "onOrientationChanged, update parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v2

    .line 3101
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setFlipValue()V

    .line 3102
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v1, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3103
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3105
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->tryToCloseSubList()V

    .line 3106
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/PhotoUI;->setOrientation(IZ)V

    .line 3107
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mGraphView:Lcom/android/camera/GraphView;

    if-eqz v1, :cond_3

    .line 3108
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mGraphView:Lcom/android/camera/GraphView;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/camera/GraphView;->setRotation(F)V

    .line 3113
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3114
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 3115
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showTapToFocusToast()V

    .line 3119
    :cond_4
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mRootView:Landroid/view/View;

    const v2, 0x7f0d00a5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/GraphView;

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mGraphView:Lcom/android/camera/GraphView;

    .line 3120
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mGraphView:Lcom/android/camera/GraphView;

    if-eqz v1, :cond_0

    .line 3121
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mGraphView:Lcom/android/camera/GraphView;

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {v1, v2}, Lcom/android/camera/GraphView;->setAlpha(F)V

    .line 3122
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mGraphView:Lcom/android/camera/GraphView;

    invoke-virtual {v1, p0}, Lcom/android/camera/GraphView;->setPhotoModuleObject(Lcom/android/camera/PhotoModule;)V

    .line 3123
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mGraphView:Lcom/android/camera/GraphView;

    invoke-virtual {v1}, Lcom/android/camera/GraphView;->PreviewChanged()V

    goto :goto_0

    .line 3103
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onOverriddenPreferencesClicked()V
    .locals 1

    .prologue
    .line 5975
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 5977
    :goto_0
    return-void

    .line 5976
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->showPreferencesToast()V

    goto :goto_0
.end method

.method public onPauseAfterSuper()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3644
    const-string v1, "CAM_PhotoModule"

    const-string v2, "On pause."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3645
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->showPreviewCover()V

    .line 3646
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->hideSurfaceView()V

    .line 3650
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    if-eqz v1, :cond_0

    .line 3651
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule$OpenCameraThread;->join()V

    .line 3653
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    if-eqz v1, :cond_1

    .line 3654
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule$StartPreviewThread;->join()V

    .line 3657
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSavingThread:Lcom/android/camera/PhotoModule$SavingThread;

    if-eqz v1, :cond_2

    .line 3658
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSavingThread:Lcom/android/camera/PhotoModule$SavingThread;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule$SavingThread;->join()V

    .line 3659
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mSavingThread:Lcom/android/camera/PhotoModule$SavingThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3665
    :cond_2
    :goto_0
    iput-object v3, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    .line 3666
    iput-object v3, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    .line 3670
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v1, :cond_3

    .line 3671
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 3673
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->resetManual3ASettings()V

    .line 3677
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 3683
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 3687
    :cond_4
    iput-object v3, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    .line 3690
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3692
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->closeCamera()V

    .line 3694
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->resetScreenOn()V

    .line 3695
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->onPause()V

    .line 3697
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 3698
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 3699
    :cond_5
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v0

    .line 3700
    .local v0, "s":Lcom/android/camera/MediaSaveService;
    if-eqz v0, :cond_6

    .line 3701
    invoke-virtual {v0, v3}, Lcom/android/camera/MediaSaveService;->setListener(Lcom/android/camera/MediaSaveService$Listener;)V

    .line 3703
    :cond_6
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->removeDisplayChangeListener()V

    .line 3704
    return-void

    .line 3662
    .end local v0    # "s":Lcom/android/camera/MediaSaveService;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onPauseBeforeSuper()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3608
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    .line 3609
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    sget-object v3, Lcom/android/camera/PhotoUI$SURFACE_STATUS;->HIDE:Lcom/android/camera/PhotoUI$SURFACE_STATUS;

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->applySurfaceChange(Lcom/android/camera/PhotoUI$SURFACE_STATUS;)V

    .line 3611
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3614
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 3615
    .local v0, "gsensor":Landroid/hardware/Sensor;
    if-eqz v0, :cond_0

    .line 3616
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 3619
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 3620
    .local v1, "msensor":Landroid/hardware/Sensor;
    if-eqz v1, :cond_1

    .line 3621
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 3624
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v2, :cond_2

    .line 3625
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v2}, Landroid/media/SoundPool;->release()V

    .line 3626
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mSoundPool:Landroid/media/SoundPool;

    .line 3629
    :cond_2
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->selfieThread:Lcom/android/camera/PhotoModule$SelfieThread;

    if-eqz v2, :cond_3

    .line 3630
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->selfieThread:Lcom/android/camera/PhotoModule$SelfieThread;

    invoke-virtual {v2}, Lcom/android/camera/PhotoModule$SelfieThread;->interrupt()V

    .line 3633
    :cond_3
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    if-eqz v2, :cond_4

    .line 3634
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    invoke-virtual {v2}, Lcom/android/camera/MultiPPManager;->deinit()V

    .line 3636
    :cond_4
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->stopSelfieFlash()V

    .line 3638
    const-string v2, "CAM_PhotoModule"

    const-string v3, "remove idle handleer in onPause"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3639
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->removeIdleHandler()V

    .line 3640
    return-void
.end method

.method public onPreviewFocusChanged(Z)V
    .locals 1
    .param p1, "previewFocused"    # Z

    .prologue
    .line 6087
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoUI;->onPreviewFocusChanged(Z)V

    .line 6088
    return-void
.end method

.method public onPreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "previewRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/FocusOverlayManager;->setPreviewRect(Landroid/graphics/Rect;)V

    .line 1147
    :cond_0
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 5950
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5951
    return-void
.end method

.method public onPreviewUIDestroyed()V
    .locals 1

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 1029
    :goto_0
    return-void

    .line 1009
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    if-eqz v0, :cond_1

    .line 1010
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$OpenCameraThread;->join()V

    .line 1011
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mOpenCameraThread:Lcom/android/camera/PhotoModule$OpenCameraThread;

    .line 1014
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    if-eqz v0, :cond_2

    .line 1015
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$StartPreviewThread;->join()V

    .line 1016
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mStartPreviewThread:Lcom/android/camera/PhotoModule$StartPreviewThread;

    .line 1020
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSavingThread:Lcom/android/camera/PhotoModule$SavingThread;

    if-eqz v0, :cond_3

    .line 1021
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSavingThread:Lcom/android/camera/PhotoModule$SavingThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$SavingThread;->join()V

    .line 1022
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSavingThread:Lcom/android/camera/PhotoModule$SavingThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1028
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    goto :goto_0

    .line 1025
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onPreviewUIReady()V
    .locals 4

    .prologue
    .line 985
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_1

    .line 1001
    :cond_0
    :goto_0
    return-void

    .line 988
    :cond_1
    const-string v1, "CAM_PhotoModule"

    const-string v2, "onPreviewUIReady"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-nez v1, :cond_2

    .line 990
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->startPreview()V

    goto :goto_0

    .line 992
    :cond_2
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v2

    .line 993
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 994
    .local v0, "sh":Landroid/view/SurfaceHolder;
    if-nez v0, :cond_3

    .line 995
    const-string v1, "CAM_PhotoModule"

    const-string v3, "startPreview: holder for preview are not ready."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    monitor-exit v2

    goto :goto_0

    .line 999
    .end local v0    # "sh":Landroid/view/SurfaceHolder;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 998
    .restart local v0    # "sh":Landroid/view/SurfaceHolder;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 999
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onQueueStatus(Z)V
    .locals 2
    .param p1, "full"    # Z

    .prologue
    .line 6046
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/PhotoUI;->enableShutter(Z)V

    .line 6047
    return-void

    .line 6046
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestorePreferencesClicked()V
    .locals 0

    .prologue
    .line 6091
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3494
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mLastPhotoTakenWithRefocus:Z

    .line 3495
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->showSurfaceView()V

    .line 3499
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3500
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 3501
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3502
    :cond_0
    const-string v1, "CAM_PhotoModule"

    const-string v2, "On resume, from lock screen."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3506
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isInstantCaptureEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3507
    iput-boolean v7, p0, Lcom/android/camera/PhotoModule;->mInstantCaptureSnapShot:Z

    .line 3512
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/PhotoModule$8;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoModule$8;-><init>(Lcom/android/camera/PhotoModule;)V

    const-wide/16 v4, 0x14

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3522
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->registerMediaButtonReceiver()V

    .line 3525
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->setSwitcherIndex()V

    .line 3526
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_2

    .line 3527
    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x5

    invoke-direct {v1, v7, v2, v6}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mSoundPool:Landroid/media/SoundPool;

    .line 3528
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f070004

    invoke-virtual {v1, v2, v3, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/PhotoModule;->mRefocusSound:I

    .line 3531
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/PhotoModule$9;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoModule$9;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3540
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    if-eqz v1, :cond_3

    .line 3541
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHQAlgoManager:Lcom/android/camera/MultiPPManager;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v2, v6, v6, v6}, Lcom/android/camera/MultiPPManager;->init(Lcom/android/camera/CameraActivity;III)Z

    .line 3543
    :cond_3
    return-void

    .line 3518
    :cond_4
    const-string v1, "CAM_PhotoModule"

    const-string v2, "On resume."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3519
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->onResumeTasks()V

    goto :goto_0
.end method

.method public onResumeBeforeSuper()V
    .locals 1

    .prologue
    .line 3438
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    .line 3439
    return-void
.end method

.method public onScreenSizeChanged(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/FocusOverlayManager;->setPreviewSize(II)V

    .line 1142
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v5, 0x3

    .line 6064
    iget-object v4, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    .line 6066
    .local v3, "type":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 6067
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGData:[F

    .line 6074
    .local v0, "data":[F
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_1

    .line 6075
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v1

    aput v4, v0, v1

    .line 6074
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6068
    .end local v0    # "data":[F
    .end local v1    # "i":I
    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 6069
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMData:[F

    .restart local v0    # "data":[F
    goto :goto_0

    .line 6077
    .restart local v1    # "i":I
    :cond_1
    new-array v2, v5, [F

    .line 6078
    .local v2, "orientation":[F
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mR:[F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mGData:[F

    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mMData:[F

    invoke-static {v4, v5, v6, v7}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 6079
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mR:[F

    invoke-static {v4, v2}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 6080
    const/4 v4, 0x0

    aget v4, v2, v4

    const/high16 v5, 0x43340000    # 180.0f

    mul-float/2addr v4, v5

    float-to-double v4, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    double-to-int v4, v4

    rem-int/lit16 v4, v4, 0x168

    iput v4, p0, Lcom/android/camera/PhotoModule;->mHeading:I

    .line 6081
    iget v4, p0, Lcom/android/camera/PhotoModule;->mHeading:I

    if-gez v4, :cond_2

    .line 6082
    iget v4, p0, Lcom/android/camera/PhotoModule;->mHeading:I

    add-int/lit16 v4, v4, 0x168

    iput v4, p0, Lcom/android/camera/PhotoModule;->mHeading:I

    .line 6084
    .end local v0    # "data":[F
    .end local v1    # "i":I
    .end local v2    # "orientation":[F
    :cond_2
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 5

    .prologue
    .line 5906
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 5931
    :goto_0
    return-void

    .line 5908
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_recordlocation_key"

    invoke-static {v1, v2}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 5910
    .local v0, "recordLocation":Z
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 5911
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->needRestart()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5912
    const-string v1, "CAM_PhotoModule"

    const-string v2, "Restarting Preview... Camera Mode Changed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5913
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 5914
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->startPreview()V

    .line 5915
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 5916
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mRestartPreview:Z

    .line 5923
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget-boolean v1, v1, Lcom/android/camera/PhotoUI;->mMenuInitialized:Z

    if-eqz v1, :cond_2

    .line 5924
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/camera/PhotoModule;->setCameraParametersWhenIdle(I)V

    .line 5925
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/PhotoUI;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;)V

    .line 5930
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->resizeForPreviewAspectRatio()V

    goto :goto_0

    .line 5928
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method public onSharedPreferenceChanged(Lcom/android/camera/ListPreference;)V
    .locals 13
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 5822
    iget-boolean v10, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v10, :cond_0

    .line 5901
    :goto_0
    return-void

    .line 5825
    :cond_0
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e0352

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 5826
    .local v6, "settingOff":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v10}, Lcom/android/camera/CameraSettings;->isZSLHDRSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 5828
    const-string v10, "pref_camera_hdr_key"

    invoke-static {p1, v10, v6}, Lcom/android/camera/PhotoModule;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "pref_camera_ae_bracket_hdr_key"

    .line 5829
    invoke-static {p1, v10, v6}, Lcom/android/camera/PhotoModule;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 5830
    :cond_1
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v11, "pref_camera_zsl_key"

    invoke-virtual {v10, v11, v6}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 5837
    :cond_2
    :goto_1
    const-string v10, "pref_camera_manual_exp_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 5838
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->UpdateManualExposureSettings()V

    goto :goto_0

    .line 5831
    :cond_3
    const-string v10, "pref_camera_zsl_key"

    invoke-static {p1, v10, v6}, Lcom/android/camera/PhotoModule;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 5832
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v11, "pref_camera_hdr_key"

    invoke-virtual {v10, v11, v6}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 5833
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v11, "pref_camera_ae_bracket_hdr_key"

    invoke-virtual {v10, v11, v6}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5841
    :cond_4
    const-string v10, "pref_camera_manual_wb_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 5842
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->UpdateManualWBSettings()V

    goto :goto_0

    .line 5845
    :cond_5
    const-string v10, "pref_camera_manual_focus_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 5846
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->UpdateManualFocusSettings()V

    goto :goto_0

    .line 5850
    :cond_6
    const-string v10, "pref_camera_savepath_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 5851
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v11, "pref_camera_savepath_key"

    const-string v12, "0"

    .line 5852
    invoke-virtual {v10, v11, v12}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 5851
    invoke-static {v10}, Lcom/android/camera/Storage;->setSaveSDCard(Z)V

    .line 5853
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v10}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 5854
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateRemainingPhotos()V

    .line 5857
    :cond_7
    const-string v10, "chroma-flash"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 5858
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v11, "pref_camera_advanced_features_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 5861
    :cond_8
    const-string v10, "pref_camera_advanced_features_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 5862
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v11, "chroma-flash"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 5863
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v11, "pref_camera_scenemode_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 5866
    :cond_9
    const-string v10, "pref_camera_hdr_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 5867
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v11, "pref_camera_advanced_features_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 5870
    :cond_a
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e0049

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 5872
    .local v9, "ubiFocusOff":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e004b

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5874
    .local v1, "chromaFlashOff":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e004c

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 5876
    .local v4, "optiZoomOff":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e004a

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 5878
    .local v5, "reFocusOff":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e004d

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5880
    .local v2, "fssrOff":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e004e

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 5882
    .local v8, "truePortraitOff":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e004f

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5884
    .local v3, "multiTouchFocusOff":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e0050

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 5886
    .local v7, "stillMoreOff":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e0040

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5888
    .local v0, "advancedFeatureOff":Ljava/lang/String;
    const-string v10, "opti-zoom"

    invoke-static {p1, v10, v4}, Lcom/android/camera/PhotoModule;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "af-bracket"

    .line 5889
    invoke-static {p1, v10, v9}, Lcom/android/camera/PhotoModule;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "FSSR"

    .line 5890
    invoke-static {p1, v10, v2}, Lcom/android/camera/PhotoModule;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "true-portrait"

    .line 5891
    invoke-static {p1, v10, v8}, Lcom/android/camera/PhotoModule;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "multi-touch-focus"

    .line 5892
    invoke-static {p1, v10, v3}, Lcom/android/camera/PhotoModule;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "still-more"

    .line 5893
    invoke-static {p1, v10, v7}, Lcom/android/camera/PhotoModule;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "re-focus"

    .line 5894
    invoke-static {p1, v10, v5}, Lcom/android/camera/PhotoModule;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "pref_camera_advanced_features_key"

    .line 5895
    invoke-static {p1, v10, v0}, Lcom/android/camera/PhotoModule;->notSame(Lcom/android/camera/ListPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 5896
    :cond_b
    iget-object v10, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e03b0

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v10

    .line 5897
    invoke-virtual {v10}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 5900
    :cond_c
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    goto/16 :goto_0
.end method

.method public onShowSwitcherPopup()V
    .locals 1

    .prologue
    .line 6008
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->onShowSwitcherPopup()V

    .line 6009
    return-void
.end method

.method public declared-synchronized onShutterButtonClick()V
    .locals 8

    .prologue
    .line 3288
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    .line 3289
    invoke-virtual {v4}, Lcom/android/camera/PhotoUI;->collapseCameraControls()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget-boolean v4, v4, Lcom/android/camera/PhotoUI;->mMenuInitialized:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 3358
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 3297
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v4

    const-wide/32 v6, 0x3c00000

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    .line 3298
    const-string v4, "CAM_PhotoModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not enough space or storage not ready. remaining="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 3299
    invoke-virtual {v6}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3298
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3288
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 3302
    :cond_2
    :try_start_2
    const-string v4, "CAM_PhotoModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onShutterButtonClick: mCameraState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3304
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    const-string v5, "hdr"

    if-ne v4, v5, :cond_3

    .line 3305
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v4}, Lcom/android/camera/PhotoUI;->hideSwitcher()V

    .line 3306
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/camera/PhotoUI;->setSwipingEnabled(Z)V

    .line 3310
    :cond_3
    sget-boolean v4, Lcom/android/camera/TsMakeupManager;->HAS_TS_MAKEUP:Z

    if-eqz v4, :cond_4

    .line 3311
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v4}, Lcom/android/camera/PhotoUI;->hideTSMakeUp()V

    .line 3316
    :cond_4
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v4, :cond_5

    .line 3317
    iget v4, p0, Lcom/android/camera/PhotoModule;->mSnapshotMode:I

    sget v5, Lorg/codeaurora/snapcam/wrapper/CameraInfoWrapper;->CAMERA_SUPPORT_MODE_ZSL:I

    if-ne v4, v5, :cond_8

    .line 3318
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/camera/FocusOverlayManager;->setZslEnable(Z)V

    .line 3329
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v4}, Lcom/android/camera/FocusOverlayManager;->isFocusingSnapOnFinish()Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    iget v4, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_9

    :cond_7
    iget-boolean v4, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v4, :cond_9

    .line 3332
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    goto/16 :goto_0

    .line 3320
    :cond_8
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/camera/FocusOverlayManager;->setZslEnable(Z)V

    goto :goto_1

    .line 3336
    :cond_9
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_camera_timer_key"

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e0349

    .line 3338
    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3336
    invoke-virtual {v4, v5, v6}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3339
    .local v2, "timer":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_camera_timer_sound_key"

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e034a

    .line 3340
    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3339
    invoke-virtual {v4, v5, v6}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v6, 0x7f0e0353

    .line 3341
    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3343
    .local v0, "playSound":Z
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3346
    .local v1, "seconds":I
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v4}, Lcom/android/camera/PhotoUI;->isCountingDown()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3347
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v4}, Lcom/android/camera/PhotoUI;->cancelCountDown()V

    .line 3349
    :cond_a
    if-lez v1, :cond_b

    .line 3350
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v5, "pref_camera_zsl_key"

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f0e002a

    .line 3351
    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3350
    invoke-virtual {v4, v5, v6}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3352
    .local v3, "zsl":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "pref_camera_zsl_key"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-virtual {v4, v5}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 3353
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v4, v1, v0}, Lcom/android/camera/PhotoUI;->startCountDown(IZ)V

    goto/16 :goto_0

    .line 3355
    .end local v3    # "zsl":Ljava/lang/String;
    :cond_b
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 3356
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initiateSnap()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 4
    .param p1, "pressed"    # Z

    .prologue
    const/4 v3, 0x1

    .line 3236
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    .line 3237
    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-nez v0, :cond_2

    .line 3241
    :cond_0
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterButtonFocus error case mCameraState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mCameraDevice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mPaused ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3284
    :cond_1
    :goto_0
    return-void

    .line 3246
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v1

    .line 3247
    :try_start_0
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_7

    .line 3248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mLongshotActive:Z

    .line 3249
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setLongshot(Z)V

    .line 3250
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mLastJpegData:[B

    invoke-virtual {v0, v2}, Lcom/android/camera/PhotoUI;->animateCapture([B)V

    .line 3251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mLastJpegData:[B

    .line 3252
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->isZslEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3253
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupPreview()V

    .line 3271
    :cond_3
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3273
    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->canTakePicture()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3275
    :cond_4
    if-eqz p1, :cond_8

    .line 3276
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onShutterDown()V

    goto :goto_0

    .line 3255
    :cond_5
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 3256
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    .line 3257
    const-string v0, "continuous-picture"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 3258
    invoke-virtual {v2}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    .line 3257
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3259
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 3261
    :cond_6
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->resumeFaceDetection()V

    goto :goto_1

    .line 3271
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3265
    :cond_7
    :try_start_2
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mLongPressWithoutSnap:Z

    if-ne v0, v3, :cond_3

    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->canTakePicture()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3266
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/PhotoUI;->enableShutter(Z)V

    .line 3267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mLongPressWithoutSnap:Z

    .line 3268
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->capture()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 3280
    :cond_8
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->isCountingDown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3281
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onShutterUp()V

    goto/16 :goto_0
.end method

.method public onShutterButtonLongClick()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 3389
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v2

    const-wide/32 v4, 0x3c00000

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 3390
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not enough space or storage not ready. remaining="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 3391
    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3390
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3424
    :cond_0
    :goto_0
    return-void

    .line 3395
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eq v2, v6, :cond_2

    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 3397
    :cond_2
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_longshot_key"

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e01fd

    .line 3399
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3397
    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3401
    .local v1, "longshot_enable":Ljava/lang/String;
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "longshot_enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3402
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3403
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->isLongSaveEnabled()Z

    move-result v0

    .line 3404
    .local v0, "enable":Z
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mLongshotSave:Z

    .line 3407
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->isCountingDown()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3408
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->cancelCountDown()V

    .line 3411
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isLongshotNeedCancel()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3414
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mLongshotActive:Z

    .line 3415
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 3416
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusOverlayManager;->doSnap()V

    goto :goto_0

    .line 3420
    .end local v0    # "enable":Z
    :cond_4
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mLongPressWithoutSnap:Z

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 3809
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-nez v0, :cond_1

    .line 3823
    :cond_0
    :goto_0
    return-void

    .line 3816
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mTouchAfAecFlag:Z

    if-eqz v0, :cond_0

    .line 3820
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 3821
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3822
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/FocusOverlayManager;->onSingleTapUp(II)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 3128
    return-void
.end method

.method public onSwitchSavePath()V
    .locals 3

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget-boolean v0, v0, Lcom/android/camera/PhotoUI;->mMenuInitialized:Z

    if-eqz v0, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v1, "pref_camera_savepath_key"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e0207

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    .line 1240
    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1241
    return-void

    .line 1235
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_savepath_key"

    const-string v2, "1"

    .line 1236
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1237
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 5959
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->keepScreenOnAwhile()V

    .line 5960
    :cond_0
    return-void
.end method

.method public onZoomChanged(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 6014
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v1, :cond_1

    .line 6028
    .end local p1    # "index":I
    :cond_0
    :goto_0
    return p1

    .line 6015
    .restart local p1    # "index":I
    :cond_1
    iput p1, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    .line 6016
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    .line 6017
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 6018
    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getCurrentFocusState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 6019
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->cancelAutoFocus()V

    .line 6022
    :cond_2
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v2

    .line 6023
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 6024
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v1, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 6025
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 6026
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result p1

    .end local p1    # "index":I
    monitor-exit v2

    goto :goto_0

    .line 6027
    .end local v0    # "p":Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "p":Landroid/hardware/Camera$Parameters;
    .restart local p1    # "index":I
    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onZoomChanged(F)V
    .locals 2
    .param p1, "requestedZoom"    # F

    .prologue
    .line 6033
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 6034
    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->getCurrentFocusState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6035
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->cancelAutoFocus()V

    .line 6037
    :cond_0
    return-void
.end method

.method public reinit()V
    .locals 3

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 844
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-nez v0, :cond_0

    .line 845
    new-instance v0, Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    .line 848
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    .line 849
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 850
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 851
    return-void
.end method

.method public resizeForPreviewAspectRatio()V
    .locals 4

    .prologue
    .line 1220
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_1

    .line 1221
    :cond_0
    const-string v1, "CAM_PhotoModule"

    const-string v2, "Camera not yet initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :goto_0
    return-void

    .line 1224
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->setPreviewFrameLayoutCameraOrientation()V

    .line 1225
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1226
    .local v0, "size":Landroid/hardware/Camera$Size;
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using preview width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "& height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v2, v2

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/camera/PhotoUI;->setAspectRatio(F)V

    goto :goto_0
.end method

.method public saveYUVtoPicture([BIIII)[B
    .locals 10
    .param p1, "data"    # [B
    .param p2, "strideW"    # I
    .param p3, "strideH"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 6280
    const/4 v7, 0x0

    .line 6281
    .local v7, "jpegData":[B
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    const/4 v5, 0x0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 6283
    .local v0, "yuvimage":Landroid/graphics/YuvImage;
    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v8

    .line 6285
    .local v8, "jpegQuality":I
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6287
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    const-string v1, "hdr"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6288
    const/16 v9, 0x10

    .line 6289
    .local v9, "shift":I
    new-instance v1, Landroid/graphics/Rect;

    sub-int v2, p4, v9

    sub-int v3, p5, v9

    invoke-direct {v1, v9, v9, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1, v8, v6}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 6294
    .end local v9    # "shift":I
    :goto_0
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 6295
    return-object v7

    .line 6291
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1, v8, v6}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    goto :goto_0
.end method

.method protected setCameraId(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 1120
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_id_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 1121
    .local v0, "pref":Lcom/android/camera/ListPreference;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1122
    return-void
.end method

.method public setDebugUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 6104
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mDebugUri:Landroid/net/Uri;

    .line 6105
    return-void
.end method

.method public setFocusParameters()V
    .locals 1

    .prologue
    .line 2625
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 2626
    return-void
.end method

.method public setPreferenceForTest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 979
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    .line 981
    return-void
.end method

.method setPreviewFrameLayoutCameraOrientation()V
    .locals 3

    .prologue
    .line 1209
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    aget-object v0, v1, v2

    .line 1211
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_0

    .line 1212
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/PhotoUI;->cameraOrientationPreviewResize(Z)V

    .line 1216
    :goto_0
    return-void

    .line 1214
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/PhotoUI;->cameraOrientationPreviewResize(Z)V

    goto :goto_0
.end method

.method public startFaceDetection()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1332
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_1

    .line 1344
    :cond_0
    :goto_0
    return-void

    .line 1334
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionEnabled:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-ne v2, v1, :cond_0

    .line 1336
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v2

    if-lez v2, :cond_0

    .line 1337
    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 1338
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    aget-object v0, v2, v3

    .line 1339
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget v3, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v1, :cond_2

    :goto_1
    invoke-virtual {v2, v3, v1}, Lcom/android/camera/PhotoUI;->onStartFaceDetection(IZ)V

    .line 1341
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-interface {v1, v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;)V

    .line 1342
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->startFaceDetection()V

    goto :goto_0

    .line 1339
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public stopFaceDetection()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1348
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    if-nez v0, :cond_1

    .line 1356
    :cond_0
    :goto_0
    return-void

    .line 1349
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_0

    .line 1350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 1351
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0, v1, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;)V

    .line 1352
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->pauseFaceDetection()V

    .line 1353
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopFaceDetection()V

    .line 1354
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->onStopFaceDetection()V

    goto :goto_0
.end method

.method public stopPreview()V
    .locals 2

    .prologue
    .line 4049
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v0, :cond_0

    .line 4050
    const-string v0, "CAM_PhotoModule"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4051
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 4053
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 4054
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStopped()V

    .line 4055
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->stopFaceDetection()V

    .line 4056
    return-void
.end method

.method public switchInternalStorage()V
    .locals 3

    .prologue
    .line 6252
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_savepath_key"

    const-string v2, "0"

    .line 6253
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6254
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6255
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const-string v1, "pref_camera_savepath_key"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 6256
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/Storage;->setSaveSDCard(Z)V

    .line 6257
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 6258
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateRemainingPhotos()V

    .line 6259
    return-void
.end method

.method public updateCameraOrientation()V
    .locals 2

    .prologue
    .line 3752
    iget v0, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3753
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setDisplayOrientation()V

    .line 3755
    :cond_0
    return-void
.end method

.method public updateStorageHintOnResume()Z
    .locals 1

    .prologue
    .line 3433
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    return v0
.end method

.method public waitingLocationPermissionResult(Z)V
    .locals 1
    .param p1, "result"    # Z

    .prologue
    .line 967
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/LocationManager;->waitingLocationPermissionResult(Z)V

    .line 968
    return-void
.end method
