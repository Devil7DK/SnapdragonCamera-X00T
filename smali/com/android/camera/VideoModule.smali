.class public Lcom/android/camera/VideoModule;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/android/camera/CameraModule;
.implements Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
.implements Lcom/android/camera/LocationManager$Listener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;
.implements Lcom/android/camera/VideoController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/VideoModule$JpegPictureCallback;,
        Lcom/android/camera/VideoModule$MyBroadcastReceiver;,
        Lcom/android/camera/VideoModule$MainHandler;,
        Lcom/android/camera/VideoModule$DefaultHashMap;,
        Lcom/android/camera/VideoModule$CameraOpenThread;
    }
.end annotation


# static fields
.field private static final AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/VideoModule$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final CHECK_DISPLAY_ROTATION:I = 0x3

.field private static final CLEAR_SCREEN_DELAY:I = 0x4

.field private static final ENABLE_SHUTTER_BUTTON:I = 0x6

.field private static final EXTRA_QUICK_CAPTURE:Ljava/lang/String; = "android.intent.extra.quickCapture"

.field private static final FORMAT_NV12_VENUS:Ljava/lang/String; = "nv12-venus"

.field private static final FORMAT_NV21:Ljava/lang/String; = "yuv420sp"

.field private static final HANDLE_FLASH_TORCH_DELAY:I = 0xa

.field private static final KEY_PREVIEW_FORMAT:Ljava/lang/String; = "preview-format"

.field private static final MAX_ZOOM:I = 0xa

.field private static final OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/VideoModule$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PERSIST_4K_NO_LIMIT:Z

.field private static final PERSIST_EIS_MAX_FPS:I

.field private static final SCREEN_DELAY:I = 0x1d4c0

.field private static final SDCARD_SIZE_LIMIT:J = 0xfa000000L

.field private static final SHOW_TAP_TO_SNAPSHOT_TOAST:I = 0x7

.field private static final SHUTTER_BUTTON_TIMEOUT:J = 0x0L

.field private static final SWITCH_CAMERA:I = 0x8

.field private static final SWITCH_CAMERA_START_ANIMATION:I = 0x9

.field private static final TAG:Ljava/lang/String; = "CAM_VideoModule"

.field private static final UPDATE_RECORD_TIME:I = 0x5

.field private static final VIDEOQUALITY_BITRATE_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/VideoModule$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/VideoModule$DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mAudioEncoder:I

.field private mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mCameraDisplayOrientation:I

.field private mCameraId:I

.field private mCaptureTimeLapse:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mCurrentVideoUriFromMediaSaved:Z

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mDefaultAntibanding:Ljava/lang/String;

.field private mDesiredPreviewHeight:I

.field private mDesiredPreviewWidth:I

.field private mDisplayRotation:I

.field private final mErrorCallback:Lcom/android/camera/CameraErrorCallback;

.field private mFaceDetectionEnabled:Z

.field private mFaceDetectionStarted:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsDISEnabled:Z

.field private mIsFlipEnabled:Z

.field private mIsInReviewMode:Z

.field private mIsMute:Z

.field private mIsVideoCDSUpdated:Z

.field private mIsVideoCaptureIntent:Z

.field private mIsVideoTNREnabled:Z

.field private mLocationManager:Lcom/android/camera/LocationManager;

.field private mMaxVideoDurationInMs:I

.field private mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderPausing:Z

.field private mMediaRecorderRecording:Z

.field private final mOnPhotoSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

.field private mOnResumeTime:J

.field private final mOnVideoSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

.field private mOrientation:I

.field private mOrientationManager:Lcom/android/camera/app/OrientationManager;

.field private mOverrideCDS:Z

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPaused:Z

.field private mPendingSwitchCameraId:I

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private mPreferenceRead:Z

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPrevSavedVideoCDS:Ljava/lang/String;

.field private mPreviewFocused:Z

.field mPreviewing:Z

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mQuickCapture:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordingStartTime:J

.field private mRecordingTimeCountsDown:Z

.field private mRecordingTotalTime:J

.field private mRestartPreview:Z

.field private mSaveToSDCard:Z

.field private mSnapshotInProgress:Z

.field private mStartPrevPending:Z

.field private mStartRecPending:Z

.field private mStopPrevPending:Z

.field private mStopRecPending:Z

.field private mSwitchingCamera:Z

.field private mTempVideoCDS:Ljava/lang/String;

.field private mTimeBetweenTimeLapseFrameCaptureMs:I

.field private mUI:Lcom/android/camera/VideoUI;

.field private mUnsupportedHFRVideoCodec:Z

.field private mUnsupportedHFRVideoSize:Z

.field private mUnsupportedHSRVideoSize:Z

.field mUnsupportedProfile:Z

.field mUnsupportedResolution:Z

.field private mVideoEncoder:I

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFilename:Ljava/lang/String;

.field private mWasMute:Z

.field private mZoomIdxTbl:[I

.field private mZoomValue:I

.field private videoHeight:I

.field private videoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 234
    const-string v1, "persist.camcorder.4k.nolimit"

    .line 235
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/camera/VideoModule;->PERSIST_4K_NO_LIMIT:Z

    .line 237
    const-string v1, "persist.camcorder.eis.maxfps"

    const/16 v2, 0x1e

    .line 238
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/camera/VideoModule;->PERSIST_EIS_MAX_FPS:I

    .line 328
    new-instance v1, Lcom/android/camera/VideoModule$DefaultHashMap;

    invoke-direct {v1}, Lcom/android/camera/VideoModule$DefaultHashMap;-><init>()V

    sput-object v1, Lcom/android/camera/VideoModule;->OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    .line 330
    new-instance v1, Lcom/android/camera/VideoModule$DefaultHashMap;

    invoke-direct {v1}, Lcom/android/camera/VideoModule$DefaultHashMap;-><init>()V

    sput-object v1, Lcom/android/camera/VideoModule;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    .line 332
    new-instance v1, Lcom/android/camera/VideoModule$DefaultHashMap;

    invoke-direct {v1}, Lcom/android/camera/VideoModule$DefaultHashMap;-><init>()V

    sput-object v1, Lcom/android/camera/VideoModule;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    .line 334
    new-instance v1, Lcom/android/camera/VideoModule$DefaultHashMap;

    invoke-direct {v1}, Lcom/android/camera/VideoModule$DefaultHashMap;-><init>()V

    sput-object v1, Lcom/android/camera/VideoModule;->VIDEOQUALITY_BITRATE_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    .line 337
    sget-object v1, Lcom/android/camera/VideoModule;->OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    const-string v2, "3gp"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/VideoModule$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v1, Lcom/android/camera/VideoModule;->OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    const-string v2, "mp4"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/VideoModule$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v1, Lcom/android/camera/VideoModule;->OUTPUT_FORMAT_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoModule$DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 341
    sget-object v1, Lcom/android/camera/VideoModule;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    const-string v2, "h263"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/VideoModule$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v1, Lcom/android/camera/VideoModule;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    const-string v2, "h264"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/VideoModule$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-class v1, Landroid/media/MediaRecorder$VideoEncoder;

    const-string v2, "HEVC"

    invoke-static {v1, v2, v8, v4}, Lcom/android/camera/util/ApiHelper;->getIntFieldIfExists(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)I

    move-result v0

    .line 345
    .local v0, "h265":I
    if-nez v0, :cond_0

    .line 346
    const-class v1, Landroid/media/MediaRecorder$VideoEncoder;

    const-string v2, "H265"

    invoke-static {v1, v2, v8, v4}, Lcom/android/camera/util/ApiHelper;->getIntFieldIfExists(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)I

    move-result v0

    .line 349
    :cond_0
    sget-object v1, Lcom/android/camera/VideoModule;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    const-string v2, "h265"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/VideoModule$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v1, Lcom/android/camera/VideoModule;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    const-string v2, "m4v"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/VideoModule$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v1, Lcom/android/camera/VideoModule;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoModule$DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 353
    sget-object v1, Lcom/android/camera/VideoModule;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    const-string v2, "amrnb"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/VideoModule$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v1, Lcom/android/camera/VideoModule;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    const-string v2, "amrwb"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/VideoModule$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v1, Lcom/android/camera/VideoModule;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    const-string v2, "aac"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/VideoModule$DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v1, Lcom/android/camera/VideoModule;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoModule$DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 361
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    .line 139
    new-instance v0, Lcom/android/camera/CameraErrorCallback;

    invoke-direct {v0}, Lcom/android/camera/CameraErrorCallback;-><init>()V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 143
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mSaveToSDCard:Z

    .line 155
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    .line 156
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorderPausing:Z

    .line 159
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mRecordingTimeCountsDown:Z

    .line 179
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    .line 181
    iput v1, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 183
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 196
    new-instance v0, Lcom/android/camera/VideoModule$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/VideoModule$MainHandler;-><init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    .line 204
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    .line 208
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    .line 209
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mStopRecPending:Z

    .line 210
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mStartPrevPending:Z

    .line 211
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mStopPrevPending:Z

    .line 212
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mPrevSavedVideoCDS:Ljava/lang/String;

    .line 213
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mTempVideoCDS:Ljava/lang/String;

    .line 215
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsVideoCDSUpdated:Z

    .line 216
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mOverrideCDS:Z

    .line 219
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsFlipEnabled:Z

    .line 220
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsDISEnabled:Z

    .line 223
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mPreviewFocused:Z

    .line 225
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsMute:Z

    .line 226
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mWasMute:Z

    .line 228
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mFaceDetectionEnabled:Z

    .line 229
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mFaceDetectionStarted:Z

    .line 232
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mZoomIdxTbl:[I

    .line 240
    new-instance v0, Lcom/android/camera/VideoModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$1;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mOnVideoSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    .line 253
    new-instance v0, Lcom/android/camera/VideoModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$2;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mOnPhotoSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    .line 365
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mRestartPreview:Z

    .line 368
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mUnsupportedResolution:Z

    .line 369
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mUnsupportedHFRVideoSize:Z

    .line 370
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mUnsupportedHSRVideoSize:Z

    .line 371
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mUnsupportedHFRVideoCodec:Z

    .line 372
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mDefaultAntibanding:Ljava/lang/String;

    .line 373
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mUnsupportedProfile:Z

    .line 444
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3280
    new-instance v0, Lcom/android/camera/VideoModule$5;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$5;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    return-void

    .line 232
    nop

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

.method static synthetic access$1000(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/camera/VideoModule;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/VideoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/android/camera/VideoModule;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/camera/VideoModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showTapToSnapshotToast()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewFocused:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/VideoModule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule;->forceFlashOff(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopVideoRecording()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/camera/VideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/VideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUriFromMediaSaved:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/VideoModule;[BLandroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Landroid/location/Location;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/camera/VideoModule;->storeImage([BLandroid/location/Location;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->openCamera()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/VideoModule;)Lcom/android/camera/VideoUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/VideoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 95
    iget v0, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/camera/VideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    return p1
.end method

.method private cleanupEmptyFile()V
    .locals 6

    .prologue
    .line 1498
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1499
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1500
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1501
    const-string v1, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty video file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1505
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1323
    const-string v0, "CAM_VideoModule"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 1325
    const-string v0, "CAM_VideoModule"

    const-string v1, "already stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    :goto_0
    return-void

    .line 1328
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1329
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1330
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0, v2, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;)V

    .line 1331
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isForceReleaseCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1332
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->strongRelease()V

    .line 1336
    :goto_1
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 1337
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 1338
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    .line 1339
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mPreviewFocused:Z

    .line 1340
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mFaceDetectionStarted:Z

    goto :goto_0

    .line 1334
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    goto :goto_1
.end method

.method private closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 3138
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 3140
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3144
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 3146
    :cond_0
    return-void

    .line 3141
    :catch_0
    move-exception v0

    .line 3142
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "CAM_VideoModule"

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1
    .param p1, "outputFileFormat"    # I

    .prologue
    .line 3131
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3132
    const-string v0, ".mp4"

    .line 3134
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ".3gp"

    goto :goto_0
.end method

.method private convertOutputFormatToMimeType(I)Ljava/lang/String;
    .locals 1
    .param p1, "outputFileFormat"    # I

    .prologue
    .line 3124
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3125
    const-string v0, "video/mp4"

    .line 3127
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "video/3gpp"

    goto :goto_0
.end method

.method private createName(J)Ljava/lang/String;
    .locals 5
    .param p1, "dateTaken"    # J

    .prologue
    .line 464
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 465
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e03c3

    .line 466
    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 468
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1829
    const-string v1, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1831
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1832
    const-string v1, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    :cond_0
    return-void
.end method

.method private doReturnToCaller(Z)V
    .locals 3
    .param p1, "valid"    # Z

    .prologue
    .line 1484
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1486
    .local v1, "resultIntent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1487
    const/4 v0, -0x1

    .line 1488
    .local v0, "resultCode":I
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1489
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1493
    :goto_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 1494
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->finish()V

    .line 1495
    return-void

    .line 1491
    .end local v0    # "resultCode":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "resultCode":I
    goto :goto_0
.end method

.method private filterPreferenceScreenByIntent(Lcom/android/camera/PreferenceGroup;)Lcom/android/camera/PreferenceGroup;
    .locals 2
    .param p1, "screen"    # Lcom/android/camera/PreferenceGroup;

    .prologue
    .line 1838
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1839
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1840
    const-string v1, "pref_video_quality_key"

    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 1844
    :cond_0
    const-string v1, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1845
    const-string v1, "pref_video_quality_key"

    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 1848
    :cond_1
    return-object p1
.end method

.method private forceFlashOff(Z)V
    .locals 3
    .param p1, "forceOff"    # Z

    .prologue
    .line 3074
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3080
    :cond_0
    :goto_0
    return-void

    .line 3077
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule;->forceFlashOffIfSupported(Z)V

    .line 3078
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3079
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoUI;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Lcom/android/camera/ComboPreferences;)V

    goto :goto_0
.end method

.method private forceFlashOffIfSupported(Z)V
    .locals 6
    .param p1, "forceOff"    # Z

    .prologue
    .line 3047
    if-nez p1, :cond_1

    .line 3048
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_video_flashmode_key"

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e0386

    .line 3050
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3048
    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3054
    .local v0, "flashMode":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 3055
    .local v1, "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v1}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3056
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 3064
    :cond_0
    :goto_1
    return-void

    .line 3052
    .end local v0    # "flashMode":Ljava/lang/String;
    .end local v1    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const-string v0, "off"

    .restart local v0    # "flashMode":Ljava/lang/String;
    goto :goto_0

    .line 3058
    .restart local v1    # "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 3059
    if-nez v0, :cond_0

    .line 3060
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e037e

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private generateVideoFilename(I)V
    .locals 12
    .param p1, "outputFileFormat"    # I

    .prologue
    const/16 v9, 0x2f

    .line 1770
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1771
    .local v0, "dateTaken":J
    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoModule;->createName(J)Ljava/lang/String;

    move-result-object v6

    .line 1773
    .local v6, "title":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1774
    .local v2, "filename":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 1775
    .local v4, "mime":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1776
    .local v5, "path":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/Storage;->isSaveSDCard()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/camera/SDCard;->instance()Lcom/android/camera/SDCard;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/SDCard;->isWriteable()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1777
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/SDCard;->instance()Lcom/android/camera/SDCard;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/SDCard;->getDirectory()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1781
    :goto_0
    new-instance v7, Landroid/content/ContentValues;

    const/16 v8, 0x9

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1782
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "title"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "_display_name"

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1785
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "date_modified"

    const-wide/16 v10, 0x3e8

    div-long v10, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1786
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "mime_type"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "_data"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1788
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "resolution"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 1789
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 1790
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1788
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v7}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    .line 1792
    .local v3, "loc":Landroid/location/Location;
    if-eqz v3, :cond_0

    .line 1793
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "latitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1794
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "longitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1796
    :cond_0
    iput-object v5, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1797
    const-string v7, "CAM_VideoModule"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New video filename: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    return-void

    .line 1779
    .end local v3    # "loc":Landroid/location/Location;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0
.end method

.method private getDesiredPreviewSize()V
    .locals 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1085
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v6, :cond_0

    .line 1119
    :goto_0
    return-void

    .line 1088
    :cond_0
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v6}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1090
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v6, :cond_1

    .line 1091
    const-string v6, "CAM_VideoModule"

    const-string v7, "Parameters is null!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1095
    :cond_1
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v7, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 1096
    invoke-virtual {p0, v6, v7}, Lcom/android/camera/VideoModule;->isHFREnabled(II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1097
    :cond_2
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v6, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    .line 1098
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v6, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    .line 1116
    :goto_1
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget v7, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    iget v8, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/VideoUI;->setPreviewSize(II)V

    .line 1117
    const-string v6, "CAM_VideoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDesiredPreviewWidth="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". mDesiredPreviewHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1100
    :cond_3
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    .line 1101
    .local v5, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 1102
    .local v2, "preferred":Landroid/hardware/Camera$Size;
    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    iget v7, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int v3, v6, v7

    .line 1103
    .local v3, "product":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1105
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 1107
    .local v4, "size":Landroid/hardware/Camera$Size;
    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    iget v7, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v6, v7

    if-le v6, v3, :cond_4

    .line 1108
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 1111
    .end local v4    # "size":Landroid/hardware/Camera$Size;
    :cond_5
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v7, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v8, v7

    iget-object v7, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v10, v7

    div-double/2addr v8, v10

    invoke-static {v6, v5, v8, v9}, Lcom/android/camera/util/CameraUtil;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1113
    .local v1, "optimalSize":Landroid/hardware/Camera$Size;
    iget v6, v1, Landroid/hardware/Camera$Size;->width:I

    iput v6, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    .line 1114
    iget v6, v1, Landroid/hardware/Camera$Size;->height:I

    iput v6, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    goto :goto_1
.end method

.method private getHighSpeedVideoEncoderBitRate(Landroid/media/CamcorderProfile;I)I
    .locals 6
    .param p1, "profile"    # Landroid/media/CamcorderProfile;
    .param p2, "targetRate"    # I

    .prologue
    .line 1530
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1531
    .local v1, "key":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1532
    .local v2, "resolutionFpsEncoder":Ljava/lang/String;
    sget-object v3, Lcom/android/camera/CameraSettings;->VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1533
    sget-object v3, Lcom/android/camera/CameraSettings;->VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1540
    .local v0, "bitRate":I
    :goto_0
    return v0

    .line 1534
    .end local v0    # "bitRate":I
    :cond_0
    sget-object v3, Lcom/android/camera/CameraSettings;->VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1535
    sget-object v3, Lcom/android/camera/CameraSettings;->VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0    # "bitRate":I
    goto :goto_0

    .line 1537
    .end local v0    # "bitRate":I
    :cond_1
    const-string v3, "CAM_VideoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No pre-defined bitrate for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    iget v3, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    iget v4, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    div-int v4, p2, v4

    mul-int v0, v3, v4

    .restart local v0    # "bitRate":I
    goto :goto_0
.end method

.method private getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I
    .locals 2
    .param p1, "preferences"    # Lcom/android/camera/ComboPreferences;

    .prologue
    .line 472
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 473
    .local v0, "intentCameraId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 478
    .end local v0    # "intentCameraId":I
    :goto_0
    return v0

    .restart local v0    # "intentCameraId":I
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_0
.end method

.method private getTimeLapseVideoLength(J)J
    .locals 7
    .param p1, "deltaMs"    # J

    .prologue
    .line 2226
    long-to-double v2, p1

    iget v4, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 2227
    .local v0, "numberOfFrames":D
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-double v2, v2

    div-double v2, v0, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    return-wide v2
.end method

.method private getVideoThumbnail()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2019
    const/4 v0, 0x0

    .line 2020
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v5, :cond_2

    .line 2021
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    invoke-static {v5, v6}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2034
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 2037
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    .line 2038
    .local v2, "info":[Landroid/hardware/Camera$CameraInfo;
    iget v5, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    aget-object v5, v2, v5

    iget v5, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v5, v3, :cond_3

    .line 2039
    .local v3, "mirror":Z
    :goto_1
    invoke-static {v0, v4, v3}, Lcom/android/camera/util/CameraUtil;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2041
    .end local v2    # "info":[Landroid/hardware/Camera$CameraInfo;
    .end local v3    # "mirror":Z
    :cond_1
    return-object v0

    .line 2023
    :cond_2
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v5, :cond_0

    .line 2025
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    const-string v7, "r"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2026
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2027
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    .line 2026
    invoke-static {v5, v6}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 2028
    :catch_0
    move-exception v1

    .line 2030
    .local v1, "ex":Ljava/io/FileNotFoundException;
    const-string v5, "CAM_VideoModule"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    .restart local v2    # "info":[Landroid/hardware/Camera$CameraInfo;
    :cond_3
    move v3, v4

    .line 2038
    goto :goto_1
.end method

.method private initializeRecorder()V
    .locals 32

    .prologue
    .line 1545
    const-string v27, "CAM_VideoModule"

    const-string v28, "initializeRecorder"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v27, v0

    if-nez v27, :cond_0

    .line 1744
    :goto_0
    return-void

    .line 1549
    :cond_0
    sget-boolean v27, Lcom/android/camera/util/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v27, :cond_1

    .line 1554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/VideoUI;->showSurfaceView()V

    .line 1557
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 1558
    .local v12, "intent":Landroid/content/Intent;
    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 1560
    .local v15, "myExtras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/VideoModule;->videoWidth:I

    .line 1561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/VideoModule;->videoHeight:I

    .line 1562
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mUnsupportedResolution:Z

    .line 1565
    invoke-static {}, Landroid/media/EncoderCapabilities;->getVideoEncoders()Ljava/util/List;

    move-result-object v26

    .line 1566
    .local v26, "videoEncoders":Ljava/util/List;, "Ljava/util/List<Landroid/media/EncoderCapabilities$VideoEncoderCap;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_2
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_4

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/media/EncoderCapabilities$VideoEncoderCap;

    .line 1567
    .local v25, "videoEncoder":Landroid/media/EncoderCapabilities$VideoEncoderCap;
    move-object/from16 v0, v25

    iget v0, v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mCodec:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mVideoEncoder:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    .line 1568
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoWidth:I

    move/from16 v27, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameWidth:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoWidth:I

    move/from16 v27, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameWidth:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoHeight:I

    move/from16 v27, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameHeight:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoHeight:I

    move/from16 v27, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameHeight:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_4

    .line 1572
    :cond_3
    const-string v27, "CAM_VideoModule"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Selected codec "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mVideoEncoder:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " does not support "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoWidth:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "x"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoHeight:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " resolution"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    const-string v27, "CAM_VideoModule"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Codec capabilities: mMinFrameWidth = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v25

    iget v0, v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameWidth:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " , "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "mMinFrameHeight = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v25

    iget v0, v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameHeight:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " , "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "mMaxFrameWidth = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v25

    iget v0, v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameWidth:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " , "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "mMaxFrameHeight = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v25

    iget v0, v0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameHeight:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mUnsupportedResolution:Z

    .line 1581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v27, v0

    const v28, 0x7f0e00b5

    const/16 v29, 0x1

    invoke-static/range {v27 .. v29}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v27

    .line 1582
    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/ui/RotateTextToast;->show()V

    goto/16 :goto_0

    .line 1589
    .end local v25    # "videoEncoder":Landroid/media/EncoderCapabilities$VideoEncoderCap;
    :cond_4
    const-wide/16 v20, 0x0

    .line 1590
    .local v20, "requestedSizeLimit":J
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->closeVideoFileDescriptor()V

    .line 1591
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mCurrentVideoUriFromMediaSaved:Z

    .line 1592
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    move/from16 v27, v0

    if-eqz v27, :cond_6

    if-eqz v15, :cond_6

    .line 1593
    const-string v27, "output"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v22

    check-cast v22, Landroid/net/Uri;

    .line 1594
    .local v22, "saveUri":Landroid/net/Uri;
    if-eqz v22, :cond_5

    .line 1596
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v27, v0

    const-string v28, "rw"

    .line 1597
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1598
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1604
    :cond_5
    :goto_1
    const-string v27, "android.intent.extra.sizeLimit"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 1606
    .end local v22    # "saveUri":Landroid/net/Uri;
    :cond_6
    new-instance v27, Landroid/media/MediaRecorder;

    invoke-direct/range {v27 .. v27}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/android/camera/CameraManager$CameraProxy;->unlock()V

    .line 1610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getVideoHighFrameRate(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v7

    .line 1613
    .local v7, "hfr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    const-string v28, "video-hsr"

    invoke-virtual/range {v27 .. v28}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1614
    .local v10, "hsr":Ljava/lang/String;
    const-string v27, "CAM_VideoModule"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "NOTE: hfr = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " : hsr = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    const/4 v4, 0x0

    .line 1617
    .local v4, "captureRate":I
    if-eqz v7, :cond_f

    const-string v27, "off"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_f

    const/4 v13, 0x1

    .line 1618
    .local v13, "isHFR":Z
    :goto_2
    if-eqz v10, :cond_10

    const-string v27, "off"

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_10

    const/4 v14, 0x1

    .line 1621
    .local v14, "isHSR":Z
    :goto_3
    if-eqz v13, :cond_11

    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 1627
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 1629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mVideoEncoder:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 1630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mAudioEncoder:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/media/CamcorderProfile;->audioCodec:I

    .line 1631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/media/CamcorderProfile;->duration:I

    .line 1633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    move/from16 v27, v0

    if-nez v27, :cond_7

    if-nez v13, :cond_7

    .line 1635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/media/CamcorderProfile;->fileFormat:I

    .line 1638
    :cond_7
    if-nez v13, :cond_8

    if-eqz v14, :cond_13

    :cond_8
    if-lez v4, :cond_13

    .line 1639
    if-eqz v14, :cond_9

    .line 1640
    const-string v27, "CAM_VideoModule"

    const-string v28, "Enabling audio for HSR"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    const/16 v28, 0x5

    invoke-virtual/range {v27 .. v28}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1643
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 1644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 1645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 1646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 1647
    if-eqz v14, :cond_a

    .line 1648
    const-string v27, "CAM_VideoModule"

    const-string v28, "Configuring audio for HSR"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/media/CamcorderProfile;->audioBitRate:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 1650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/media/CamcorderProfile;->audioChannels:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 1651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/media/CamcorderProfile;->audioSampleRate:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 1652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 1662
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 1663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 1664
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    move/from16 v27, v0

    if-eqz v27, :cond_15

    .line 1665
    const-wide v28, 0x408f400000000000L    # 1000.0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v8, v28, v30

    .line 1666
    .local v8, "fps":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-static {v0, v8, v9}, Lcom/android/camera/VideoModule;->setCaptureRate(Landroid/media/MediaRecorder;D)V

    .line 1686
    .end local v8    # "fps":D
    :cond_b
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->setRecordLocation()V

    .line 1691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v27, v0

    if-eqz v27, :cond_18

    .line 1692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 1699
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v28

    const-wide/32 v30, 0x3c00000

    sub-long v16, v28, v30

    .line 1700
    .local v16, "maxFileSize":J
    const-wide/16 v28, 0x0

    cmp-long v27, v20, v28

    if-lez v27, :cond_c

    cmp-long v27, v20, v16

    if-gez v27, :cond_c

    .line 1701
    move-wide/from16 v16, v20

    .line 1704
    :cond_c
    invoke-static {}, Lcom/android/camera/Storage;->isSaveSDCard()Z

    move-result v27

    if-eqz v27, :cond_d

    const-wide v28, 0xfa000000L

    cmp-long v27, v16, v28

    if-lez v27, :cond_d

    .line 1705
    const-wide v16, 0xfa000000L

    .line 1709
    :cond_d
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1722
    :goto_8
    const/16 v19, 0x0

    .line 1723
    .local v19, "rotation":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mOrientation:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_e

    .line 1724
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mCameraId:I

    move/from16 v28, v0

    aget-object v11, v27, v28

    .line 1725
    .local v11, "info":Landroid/hardware/Camera$CameraInfo;
    iget v0, v11, Landroid/hardware/Camera$CameraInfo;->facing:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_19

    .line 1726
    iget v0, v11, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mOrientation:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move/from16 v0, v27

    add-int/lit16 v0, v0, 0x168

    move/from16 v27, v0

    move/from16 v0, v27

    rem-int/lit16 v0, v0, 0x168

    move/from16 v19, v0

    .line 1731
    .end local v11    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_e
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 1732
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->setupMediaRecorderPreviewDisplay()V

    .line 1735
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    goto/16 :goto_0

    .line 1599
    .end local v4    # "captureRate":I
    .end local v7    # "hfr":Ljava/lang/String;
    .end local v10    # "hsr":Ljava/lang/String;
    .end local v13    # "isHFR":Z
    .end local v14    # "isHSR":Z
    .end local v16    # "maxFileSize":J
    .end local v19    # "rotation":I
    .restart local v22    # "saveUri":Landroid/net/Uri;
    :catch_0
    move-exception v6

    .line 1601
    .local v6, "ex":Ljava/io/FileNotFoundException;
    const-string v27, "CAM_VideoModule"

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1617
    .end local v6    # "ex":Ljava/io/FileNotFoundException;
    .end local v22    # "saveUri":Landroid/net/Uri;
    .restart local v4    # "captureRate":I
    .restart local v7    # "hfr":Ljava/lang/String;
    .restart local v10    # "hsr":Ljava/lang/String;
    :cond_f
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 1618
    .restart local v13    # "isHFR":Z
    :cond_10
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 1621
    .restart local v14    # "isHSR":Z
    :cond_11
    if-eqz v14, :cond_12

    .line 1622
    :try_start_4
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v4

    goto/16 :goto_4

    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 1623
    :catch_1
    move-exception v18

    .line 1624
    .local v18, "nfe":Ljava/lang/NumberFormatException;
    const-string v27, "CAM_VideoModule"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Invalid hfr("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ") or hsr("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1655
    .end local v18    # "nfe":Ljava/lang/NumberFormatException;
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    move/from16 v27, v0

    if-nez v27, :cond_14

    .line 1656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    const/16 v28, 0x5

    invoke-virtual/range {v27 .. v28}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1659
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    goto/16 :goto_5

    .line 1667
    :cond_15
    if-lez v4, :cond_b

    .line 1668
    const-string v27, "CAM_VideoModule"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Setting capture-rate = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    int-to-double v0, v4

    move-wide/from16 v28, v0

    invoke-virtual/range {v27 .. v29}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 1673
    if-eqz v14, :cond_16

    move/from16 v24, v4

    .line 1676
    .local v24, "targetFrameRate":I
    :goto_a
    const-string v27, "CAM_VideoModule"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Setting target fps = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 1681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/camera/VideoModule;->getHighSpeedVideoEncoderBitRate(Landroid/media/CamcorderProfile;I)I

    move-result v23

    .line 1682
    .local v23, "scaledBitrate":I
    const-string v27, "CAM_VideoModule"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Scaled Video bitrate : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    goto/16 :goto_6

    .line 1673
    .end local v23    # "scaledBitrate":I
    .end local v24    # "targetFrameRate":I
    :cond_16
    if-eqz v13, :cond_17

    const/16 v24, 0x1e

    goto :goto_a

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    move/from16 v24, v0

    goto :goto_a

    .line 1694
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/camera/VideoModule;->generateVideoFilename(I)V

    .line 1695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1728
    .restart local v11    # "info":Landroid/hardware/Camera$CameraInfo;
    .restart local v16    # "maxFileSize":J
    .restart local v19    # "rotation":I
    :cond_19
    iget v0, v11, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mOrientation:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v0, v27

    rem-int/lit16 v0, v0, 0x168

    move/from16 v19, v0

    goto/16 :goto_9

    .line 1736
    .end local v11    # "info":Landroid/hardware/Camera$CameraInfo;
    :catch_2
    move-exception v5

    .line 1737
    .local v5, "e":Ljava/io/IOException;
    const-string v27, "CAM_VideoModule"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "prepare failed for "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1738
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    .line 1739
    new-instance v27, Ljava/lang/RuntimeException;

    move-object/from16 v0, v27

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v27

    .line 1710
    .end local v5    # "e":Ljava/io/IOException;
    .end local v19    # "rotation":I
    :catch_3
    move-exception v27

    goto/16 :goto_8
.end method

.method private initializeSurfaceView()V
    .locals 1

    .prologue
    .line 483
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->initializeSurfaceView()V

    .line 486
    :cond_0
    return-void
.end method

.method private initializeVideoControl()V
    .locals 2

    .prologue
    .line 685
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->loadCameraPreferences()V

    .line 686
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->initializePopup(Lcom/android/camera/PreferenceGroup;)V

    .line 687
    return-void
.end method

.method private initializeVideoSnapshot()V
    .locals 4

    .prologue
    .line 3021
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 3030
    :cond_0
    :goto_0
    return-void

    .line 3022
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->isVideoSnapshotSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    .line 3024
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_video_first_use_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3027
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private is1080pEnabled()Z
    .locals 2

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->quality:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1001
    const/4 v0, 0x1

    .line 1003
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private is720pEnabled()Z
    .locals 2

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->quality:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1009
    const/4 v0, 0x1

    .line 1011
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDigit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 2756
    const-string v1, "[1-9][0-9]*"

    .line 2757
    .local v1, "ruler":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2758
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method private isSessionSupportedByEncoder(III)Z
    .locals 8
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "fps"    # I

    .prologue
    const/4 v4, 0x0

    .line 1016
    mul-int v5, p1, p2

    mul-int v0, v5, p3

    .line 1018
    .local v0, "expectedMBsPerSec":I
    invoke-static {}, Landroid/media/EncoderCapabilities;->getVideoEncoders()Ljava/util/List;

    move-result-object v3

    .line 1019
    .local v3, "videoEncoders":Ljava/util/List;, "Ljava/util/List<Landroid/media/EncoderCapabilities$VideoEncoderCap;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/EncoderCapabilities$VideoEncoderCap;

    .line 1020
    .local v2, "videoEncoder":Landroid/media/EncoderCapabilities$VideoEncoderCap;
    iget v6, v2, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mCodec:I

    iget v7, p0, Lcom/android/camera/VideoModule;->mVideoEncoder:I

    if-ne v6, v7, :cond_0

    .line 1021
    iget v5, v2, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameWidth:I

    iget v6, v2, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameHeight:I

    mul-int/2addr v5, v6

    iget v6, v2, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameRate:I

    mul-int v1, v5, v6

    .line 1023
    .local v1, "maxMBsPerSec":I
    if-le v0, v1, :cond_2

    .line 1024
    const-string v5, "CAM_VideoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Selected codec "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/VideoModule;->mVideoEncoder:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not support width("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") X height ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " fps"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    const-string v5, "CAM_VideoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Max capabilities: MaxFrameWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "MaxFrameHeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "MaxFrameRate = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameRate:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    .end local v1    # "maxMBsPerSec":I
    .end local v2    # "videoEncoder":Landroid/media/EncoderCapabilities$VideoEncoderCap;
    :cond_1
    :goto_0
    return v4

    .line 1034
    .restart local v1    # "maxMBsPerSec":I
    .restart local v2    # "videoEncoder":Landroid/media/EncoderCapabilities$VideoEncoderCap;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2284
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 2174
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2175
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2176
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 2168
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2169
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2170
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2171
    return-void
.end method

.method private loadCameraPreferences()V
    .locals 15

    .prologue
    const v14, 0x7f0200f6

    const v13, 0x7f0200f4

    .line 637
    new-instance v7, Lcom/android/camera/CameraSettings;

    iget-object v9, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v10, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v11, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    .line 638
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v12

    invoke-direct {v7, v9, v10, v11, v12}, Lcom/android/camera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    .line 640
    .local v7, "settings":Lcom/android/camera/CameraSettings;
    const v9, 0x7f060003

    .line 641
    invoke-virtual {v7, v9}, Lcom/android/camera/CameraSettings;->getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;

    move-result-object v9

    .line 640
    invoke-direct {p0, v9}, Lcom/android/camera/VideoModule;->filterPreferenceScreenByIntent(Lcom/android/camera/PreferenceGroup;)Lcom/android/camera/PreferenceGroup;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 643
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v6

    .line 647
    .local v6, "numOfCams":I
    const-string v9, "CAM_VideoModule"

    const-string v10, "loadCameraPreferences() updating camera_id pref"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v10, "pref_camera_id_key"

    .line 650
    invoke-virtual {v9, v10}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v8

    check-cast v8, Lcom/android/camera/IconListPreference;

    .line 654
    .local v8, "switchIconPref":Lcom/android/camera/IconListPreference;
    if-nez v8, :cond_0

    .line 682
    :goto_0
    return-void

    .line 657
    :cond_0
    new-array v2, v6, [I

    .line 658
    .local v2, "iconIds":[I
    new-array v0, v6, [Ljava/lang/String;

    .line 659
    .local v0, "entries":[Ljava/lang/String;
    new-array v4, v6, [Ljava/lang/String;

    .line 660
    .local v4, "labels":[Ljava/lang/String;
    new-array v5, v6, [I

    .line 662
    .local v5, "largeIconIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_2

    .line 663
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v9

    aget-object v3, v9, v1

    .line 664
    .local v3, "info":Landroid/hardware/Camera$CameraInfo;
    iget v9, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v9, :cond_1

    .line 665
    aput v13, v2, v1

    .line 666
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0343

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v1

    .line 667
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e03be

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v1

    .line 668
    aput v13, v5, v1

    .line 662
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 670
    :cond_1
    aput v14, v2, v1

    .line 671
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0344

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v1

    .line 672
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e03bf

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v1

    .line 673
    aput v14, v5, v1

    goto :goto_2

    .line 677
    .end local v3    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_2
    invoke-virtual {v8, v2}, Lcom/android/camera/IconListPreference;->setIconIds([I)V

    .line 678
    invoke-virtual {v8, v0}, Lcom/android/camera/IconListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 679
    invoke-virtual {v8, v4}, Lcom/android/camera/IconListPreference;->setLabels([Ljava/lang/CharSequence;)V

    .line 680
    invoke-virtual {v8, v5}, Lcom/android/camera/IconListPreference;->setLargeIconIds([I)V

    goto :goto_0
.end method

.method private static millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 18
    .param p0, "milliSeconds"    # J
    .param p2, "displayCentiSeconds"    # Z

    .prologue
    .line 2179
    const-wide/16 v14, 0x3e8

    div-long v10, p0, v14

    .line 2180
    .local v10, "seconds":J
    const-wide/16 v14, 0x3c

    div-long v2, v10, v14

    .line 2181
    .local v2, "minutes":J
    const-wide/16 v14, 0x3c

    div-long v0, v2, v14

    .line 2182
    .local v0, "hours":J
    const-wide/16 v14, 0x3c

    mul-long/2addr v14, v0

    sub-long v6, v2, v14

    .line 2183
    .local v6, "remainderMinutes":J
    const-wide/16 v14, 0x3c

    mul-long/2addr v14, v2

    sub-long v8, v10, v14

    .line 2185
    .local v8, "remainderSeconds":J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 2188
    .local v12, "timeStringBuilder":Ljava/lang/StringBuilder;
    const-wide/16 v14, 0x0

    cmp-long v13, v0, v14

    if-lez v13, :cond_1

    .line 2189
    const-wide/16 v14, 0xa

    cmp-long v13, v0, v14

    if-gez v13, :cond_0

    .line 2190
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2192
    :cond_0
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2194
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2198
    :cond_1
    const-wide/16 v14, 0xa

    cmp-long v13, v6, v14

    if-gez v13, :cond_2

    .line 2199
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2201
    :cond_2
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2202
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2205
    const-wide/16 v14, 0xa

    cmp-long v13, v8, v14

    if-gez v13, :cond_3

    .line 2206
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2208
    :cond_3
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2211
    if-eqz p2, :cond_5

    .line 2212
    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2213
    const-wide/16 v14, 0x3e8

    mul-long/2addr v14, v10

    sub-long v14, p0, v14

    const-wide/16 v16, 0xa

    div-long v4, v14, v16

    .line 2214
    .local v4, "remainderCentiSeconds":J
    const-wide/16 v14, 0xa

    cmp-long v13, v4, v14

    if-gez v13, :cond_4

    .line 2215
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2217
    :cond_4
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2220
    .end local v4    # "remainderCentiSeconds":J
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method private onPreviewStarted()V
    .locals 2

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->enableShutter(Z)V

    .line 1304
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->startFaceDetection()V

    .line 1305
    return-void
.end method

.method private onStopVideoRecording()V
    .locals 2

    .prologue
    .line 764
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopVideoRecording()Z

    move-result v0

    .line 765
    .local v0, "recordFail":Z
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_3

    .line 766
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mQuickCapture:Z

    if-eqz v1, :cond_2

    .line 767
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/camera/VideoModule;->doReturnToCaller(Z)V

    .line 784
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->showUIafterRecording()V

    .line 785
    return-void

    .line 767
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 768
    :cond_2
    if-nez v0, :cond_0

    .line 769
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showCaptureResult()V

    goto :goto_1

    .line 771
    :cond_3
    if-nez v0, :cond_0

    .line 773
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/camera/util/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-eqz v1, :cond_0

    .line 780
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->animateFlash()V

    .line 781
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->animateCapture()V

    goto :goto_1
.end method

.method private openCamera()V
    .locals 4

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 288
    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getCameraOpenErrorCallback()Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

    move-result-object v3

    .line 286
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/util/CameraUtil;->openCamera(Landroid/app/Activity;ILandroid/os/Handler;Lcom/android/camera/CameraManager$CameraOpenErrorCallback;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 295
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->arePreviewControlsVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewFocused:Z

    goto :goto_0
.end method

.method private pauseVideoRecording()V
    .locals 6

    .prologue
    .line 2056
    const-string v0, "CAM_VideoModule"

    const-string v1, "pauseVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderPausing:Z

    .line 2058
    iget-wide v0, p0, Lcom/android/camera/VideoModule;->mRecordingTotalTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/VideoModule;->mRecordingTotalTime:J

    .line 2059
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->pause()V

    .line 2060
    return-void
.end method

.method private qcomReadVideoPreferences()V
    .locals 13

    .prologue
    const v12, 0x7f0e001d

    .line 853
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v9, "pref_camera_videoencoder_key"

    iget-object v10, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e0017

    .line 855
    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 853
    invoke-virtual {v8, v9, v10}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 856
    .local v7, "videoEncoder":Ljava/lang/String;
    sget-object v8, Lcom/android/camera/VideoModule;->VIDEO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    invoke-virtual {v8, v7}, Lcom/android/camera/VideoModule$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/android/camera/VideoModule;->mVideoEncoder:I

    .line 858
    const-string v8, "CAM_VideoModule"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Video Encoder selected = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/camera/VideoModule;->mVideoEncoder:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v9, "pref_camera_audioencoder_key"

    iget-object v10, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e0019

    .line 862
    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 860
    invoke-virtual {v8, v9, v10}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 863
    .local v0, "audioEncoder":Ljava/lang/String;
    sget-object v8, Lcom/android/camera/VideoModule;->AUDIO_ENCODER_TABLE:Lcom/android/camera/VideoModule$DefaultHashMap;

    invoke-virtual {v8, v0}, Lcom/android/camera/VideoModule$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/android/camera/VideoModule;->mAudioEncoder:I

    .line 865
    const-string v8, "CAM_VideoModule"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Audio Encoder selected = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/camera/VideoModule;->mAudioEncoder:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v9, "pref_camera_video_duration_key"

    iget-object v10, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 869
    invoke-virtual {v10, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 867
    invoke-virtual {v8, v9, v10}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 870
    .local v3, "minutesStr":Ljava/lang/String;
    const/4 v2, -0x1

    .line 872
    .local v2, "minutes":I
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 878
    :goto_0
    const/4 v8, -0x1

    if-ne v2, v8, :cond_3

    .line 880
    const/16 v8, 0x7530

    iput v8, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    .line 885
    :goto_1
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v8}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->isPowerModeSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 886
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v9, "pref_camera_powermode_key"

    iget-object v10, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e0009

    .line 888
    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 886
    invoke-virtual {v8, v9, v10}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 889
    .local v6, "powermode":Ljava/lang/String;
    const-string v8, "CAM_VideoModule"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "read videopreferences power mode ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v8}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getPowerMode(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v5

    .line 891
    .local v5, "old_mode":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-eqz v8, :cond_0

    .line 892
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/camera/VideoModule;->mRestartPreview:Z

    .line 894
    :cond_0
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v8, v6}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setPowerMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 898
    .end local v5    # "old_mode":Ljava/lang/String;
    .end local v6    # "powermode":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v8}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedDenoiseModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 899
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v9, "pref_camera_denoise_key"

    iget-object v10, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v11, 0x7f0e00e5

    .line 900
    invoke-virtual {v10, v11}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 899
    invoke-virtual {v8, v9, v10}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 901
    .local v1, "denoise":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v8, v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setDenoise(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 903
    .end local v1    # "denoise":Ljava/lang/String;
    :cond_2
    return-void

    .line 873
    :catch_0
    move-exception v4

    .line 875
    .local v4, "npe":Ljava/lang/NumberFormatException;
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v8, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 883
    .end local v4    # "npe":Ljava/lang/NumberFormatException;
    :cond_3
    const v8, 0xea60

    mul-int/2addr v8, v2

    iput v8, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    goto :goto_1
.end method

.method private qcomSetCameraParameters()V
    .locals 33

    .prologue
    .line 2397
    const-string v28, "CAM_VideoModule"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "NOTE: qcomSetCameraParameters "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoWidth:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " x "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoHeight:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->setZoomMenuValue()V

    .line 2400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v28, v0

    const-string v29, "pref_camera_coloreffect_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e00fe

    .line 2402
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 2400
    invoke-virtual/range {v28 .. v30}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2403
    .local v4, "colorEffect":Ljava/lang/String;
    const-string v28, "CAM_VideoModule"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Color effect value ="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 2405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 2408
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v28, v0

    const-string v29, "pref_camera_dis_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e0119

    .line 2410
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 2408
    invoke-virtual/range {v28 .. v30}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2411
    .local v5, "disMode":Ljava/lang/String;
    const-string v28, "CAM_VideoModule"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "DIS value ="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    const-string v28, "enable"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mIsDISEnabled:Z

    .line 2414
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/VideoModule;->is4KEnabled()Z

    move-result v28

    if-eqz v28, :cond_1e

    sget-boolean v28, Lcom/android/camera/VideoModule;->PERSIST_4K_NO_LIMIT:Z

    if-nez v28, :cond_1e

    .line 2415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v28, v0

    const v29, 0x7f0e011a

    invoke-virtual/range {v28 .. v29}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    .line 2416
    invoke-static/range {v29 .. v29}, Lcom/android/camera/CameraSettings;->getSupportedDISModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v29

    .line 2415
    invoke-static/range {v28 .. v29}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v28

    if-eqz v28, :cond_1d

    .line 2417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    const-string v29, "asus_vDIS"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e011a

    .line 2418
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 2417
    invoke-virtual/range {v28 .. v30}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const-string v31, "pref_camera_dis_key"

    aput-object v31, v29, v30

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v31, v0

    const v32, 0x7f0e011a

    .line 2420
    invoke-virtual/range {v31 .. v32}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    .line 2419
    invoke-virtual/range {v28 .. v29}, Lcom/android/camera/VideoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2421
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mIsDISEnabled:Z

    .line 2435
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mDefaultAntibanding:Ljava/lang/String;

    move-object/from16 v28, v0

    if-nez v28, :cond_1

    .line 2438
    const-string v28, "auto"

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mDefaultAntibanding:Ljava/lang/String;

    .line 2440
    const-string v28, "CAM_VideoModule"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "default antibanding value = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mDefaultAntibanding:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    :cond_1
    const-string v28, "enable"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_20

    .line 2444
    const-string v28, "CAM_VideoModule"

    const-string v29, "dis is enabled, set antibanding to auto."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    const-string v28, "auto"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    const-string v29, "auto"

    invoke-virtual/range {v28 .. v29}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 2453
    :cond_2
    :goto_1
    const-string v28, "CAM_VideoModule"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "antiBanding value = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/hardware/Camera$Parameters;->getAntibanding()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mUnsupportedHFRVideoSize:Z

    .line 2456
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mUnsupportedHFRVideoCodec:Z

    .line 2457
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mUnsupportedHSRVideoSize:Z

    .line 2460
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->isYv12FormatEnable()Z

    move-result v28

    if-eqz v28, :cond_3

    .line 2461
    const-string v28, "CAM_VideoModule"

    const-string v29, "preview format set to YV12"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    const v29, 0x32315659

    invoke-virtual/range {v28 .. v29}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 2465
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    const-string v29, "preview-format"

    const-string v30, "yuv420sp"

    invoke-virtual/range {v28 .. v30}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2466
    const-string v28, "CAM_VideoModule"

    const-string v29, "preview format set to NV21"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v28, v0

    const-string v29, "pref_camera_hfr_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e00c2

    .line 2471
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 2469
    invoke-virtual/range {v28 .. v30}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2472
    .local v14, "highFrameRate":Ljava/lang/String;
    const-string v28, "hfr"

    const/16 v29, 0x0

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 2473
    .local v17, "isHFR":Z
    const-string v28, "hsr"

    const/16 v29, 0x0

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 2475
    .local v18, "isHSR":Z
    if-nez v17, :cond_4

    if-eqz v18, :cond_27

    .line 2476
    :cond_4
    const/16 v28, 0x3

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 2477
    .local v12, "hfrRate":Ljava/lang/String;
    if-eqz v17, :cond_21

    .line 2478
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mUnsupportedHFRVideoSize:Z

    .line 2482
    :goto_2
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoWidth:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "x"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoHeight:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2483
    .local v13, "hfrsize":Ljava/lang/String;
    const-string v28, "CAM_VideoModule"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "current set resolution is : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " : Rate is : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    const/16 v22, 0x0

    .line 2486
    .local v22, "size":Landroid/hardware/Camera$Size;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    .line 2487
    invoke-static/range {v28 .. v28}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedVideoHighFrameRateModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v28

    .line 2486
    move-object/from16 v0, v28

    invoke-static {v12, v0}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 2488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    .line 2489
    invoke-static/range {v28 .. v28}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedVideoHighFrameRateModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v0, v12}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v16

    .line 2490
    .local v16, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedHfrSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v28

    check-cast v0, Landroid/hardware/Camera$Size;

    move-object/from16 v22, v0

    .line 2492
    .end local v16    # "index":I
    :cond_5
    if-eqz v22, :cond_6

    .line 2493
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoWidth:I

    move/from16 v28, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoHeight:I

    move/from16 v28, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_6

    .line 2494
    if-eqz v17, :cond_22

    .line 2495
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mUnsupportedHFRVideoSize:Z

    .line 2499
    :goto_3
    const-string v28, "CAM_VideoModule"

    const-string v29, "Current hfr resolution is supported"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2506
    :cond_6
    :goto_4
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 2507
    .local v11, "hfrFps":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoWidth:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoHeight:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v11}, Lcom/android/camera/VideoModule;->isSessionSupportedByEncoder(III)Z

    move-result v28

    if-nez v28, :cond_7

    .line 2508
    if-eqz v17, :cond_23

    .line 2509
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mUnsupportedHFRVideoSize:Z

    .line 2515
    :cond_7
    :goto_5
    if-eqz v17, :cond_25

    .line 2516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    const-string v29, "video-hsr"

    const-string v30, "off"

    invoke-virtual/range {v28 .. v30}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2517
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/VideoModule;->mUnsupportedHFRVideoSize:Z

    move/from16 v28, v0

    if-eqz v28, :cond_24

    .line 2518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    const-string v29, "off"

    invoke-static/range {v28 .. v29}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setVideoHighFrameRate(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 2519
    const-string v28, "CAM_VideoModule"

    const-string v29, "Unsupported hfr resolution"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    .end local v11    # "hfrFps":I
    .end local v12    # "hfrRate":Ljava/lang/String;
    .end local v13    # "hfrsize":Ljava/lang/String;
    .end local v22    # "size":Landroid/hardware/Camera$Size;
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->setFlipValue()V

    .line 2539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v28, v0

    const-string v29, "pref_camera_video_cds_mode_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e0096

    .line 2541
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 2539
    invoke-virtual/range {v28 .. v30}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 2543
    .local v26, "video_cds":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPrevSavedVideoCDS:Ljava/lang/String;

    move-object/from16 v28, v0

    if-nez v28, :cond_8

    if-eqz v26, :cond_8

    .line 2544
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mPrevSavedVideoCDS:Ljava/lang/String;

    .line 2547
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/VideoModule;->mOverrideCDS:Z

    move/from16 v28, v0

    if-eqz v28, :cond_9

    .line 2548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPrevSavedVideoCDS:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 2549
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mOverrideCDS:Z

    .line 2552
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    .line 2553
    invoke-static/range {v28 .. v28}, Lcom/android/camera/CameraSettings;->getSupportedVideoCDSModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v28

    .line 2552
    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v28

    if-eqz v28, :cond_a

    .line 2554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    const-string v29, "video-cds-mode"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2558
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v28, v0

    const-string v29, "pref_camera_video_tnr_mode_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e009a

    .line 2560
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 2558
    invoke-virtual/range {v28 .. v30}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 2561
    .local v27, "video_tnr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    .line 2562
    invoke-static/range {v28 .. v28}, Lcom/android/camera/CameraSettings;->getSupportedVideoTNRModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v28

    .line 2561
    invoke-static/range {v27 .. v28}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v28

    if-eqz v28, :cond_d

    .line 2563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v28, v0

    const v29, 0x7f0e008f

    invoke-virtual/range {v28 .. v29}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_28

    .line 2565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    const-string v29, "video-cds-mode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e0086

    .line 2566
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 2565
    invoke-virtual/range {v28 .. v30}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const-string v31, "pref_camera_video_cds_mode_key"

    aput-object v31, v29, v30

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v31, v0

    const v32, 0x7f0e0086

    .line 2568
    invoke-virtual/range {v31 .. v32}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    .line 2567
    invoke-virtual/range {v28 .. v29}, Lcom/android/camera/VideoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2569
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/VideoModule;->mIsVideoCDSUpdated:Z

    move/from16 v28, v0

    if-nez v28, :cond_c

    .line 2570
    if-eqz v26, :cond_b

    .line 2571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mTempVideoCDS:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mPrevSavedVideoCDS:Ljava/lang/String;

    .line 2573
    :cond_b
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mIsVideoTNREnabled:Z

    .line 2574
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mIsVideoCDSUpdated:Z

    .line 2585
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    const-string v29, "video-tnr-mode"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const-string v31, "pref_camera_video_tnr_mode_key"

    aput-object v31, v29, v30

    const/16 v30, 0x1

    aput-object v27, v29, v30

    invoke-virtual/range {v28 .. v29}, Lcom/android/camera/VideoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2589
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v28, v0

    const-string v29, "pref_camera_noise_reduction_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e00d6

    .line 2591
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 2589
    invoke-virtual/range {v28 .. v30}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2592
    .local v19, "noiseReductionMode":Ljava/lang/String;
    const-string v28, "CAM_VideoModule"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Noise ReductionMode ="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    .line 2595
    invoke-static/range {v28 .. v28}, Lcom/android/camera/CameraSettings;->getSupportedNoiseReductionModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v28

    .line 2594
    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v28

    if-eqz v28, :cond_10

    .line 2597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v28, v0

    const v29, 0x7f0e00dd

    .line 2598
    invoke-virtual/range {v28 .. v29}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 2597
    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v28, v0

    const v29, 0x7f0e0087

    .line 2599
    invoke-virtual/range {v28 .. v29}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 2601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    const-string v29, "video-cds-mode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e0086

    .line 2602
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 2601
    invoke-virtual/range {v28 .. v30}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const-string v31, "pref_camera_video_cds_mode_key"

    aput-object v31, v29, v30

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v31, v0

    const v32, 0x7f0e0086

    .line 2604
    invoke-virtual/range {v31 .. v32}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    .line 2603
    invoke-virtual/range {v28 .. v29}, Lcom/android/camera/VideoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v28, v0

    const v29, 0x7f0e03b3

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v28

    .line 2606
    invoke-virtual/range {v28 .. v28}, Landroid/widget/Toast;->show()V

    .line 2610
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v28, v0

    const v29, 0x7f0e00dd

    .line 2611
    invoke-virtual/range {v28 .. v29}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 2610
    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v28, v0

    const v29, 0x7f0e0090

    .line 2612
    invoke-virtual/range {v28 .. v29}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_f

    .line 2614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    const-string v29, "video-tnr-mode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e008f

    .line 2615
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 2614
    invoke-virtual/range {v28 .. v30}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const-string v31, "pref_camera_video_tnr_mode_key"

    aput-object v31, v29, v30

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v31, v0

    const v32, 0x7f0e008f

    .line 2617
    invoke-virtual/range {v31 .. v32}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    .line 2616
    invoke-virtual/range {v28 .. v29}, Lcom/android/camera/VideoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v28, v0

    const v29, 0x7f0e03b4

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v28

    .line 2619
    invoke-virtual/range {v28 .. v28}, Landroid/widget/Toast;->show()V

    .line 2623
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    const-string v29, "noise-reduction-mode"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2626
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v28, v0

    const-string v29, "pref_camera_see_more_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e00de

    .line 2628
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 2626
    invoke-virtual/range {v28 .. v30}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2629
    .local v21, "seeMoreMode":Ljava/lang/String;
    const-string v28, "CAM_VideoModule"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "See More value ="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    .line 2632
    invoke-static/range {v28 .. v28}, Lcom/android/camera/CameraSettings;->getSupportedSeeMoreModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v28

    .line 2631
    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v28

    if-eqz v28, :cond_14

    .line 2634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v28, v0

    const v29, 0x7f0e00e3

    .line 2635
    invoke-virtual/range {v28 .. v29}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 2634
    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v28, v0

    const v29, 0x7f0e0087

    .line 2636
    invoke-virtual/range {v28 .. v29}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_11

    .line 2638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    const-string v29, "video-cds-mode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e0086

    .line 2639
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 2638
    invoke-virtual/range {v28 .. v30}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const-string v31, "pref_camera_video_cds_mode_key"

    aput-object v31, v29, v30

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v31, v0

    const v32, 0x7f0e0086

    .line 2641
    invoke-virtual/range {v31 .. v32}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    .line 2640
    invoke-virtual/range {v28 .. v29}, Lcom/android/camera/VideoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v28, v0

    const v29, 0x7f0e03b5

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v28

    .line 2643
    invoke-virtual/range {v28 .. v28}, Landroid/widget/Toast;->show()V

    .line 2647
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v28, v0

    const v29, 0x7f0e00e3

    .line 2648
    invoke-virtual/range {v28 .. v29}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 2647
    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v28, v0

    const v29, 0x7f0e0090

    .line 2649
    invoke-virtual/range {v28 .. v29}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_12

    .line 2651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    const-string v29, "video-tnr-mode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e008f

    .line 2652
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 2651
    invoke-virtual/range {v28 .. v30}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const-string v31, "pref_camera_video_tnr_mode_key"

    aput-object v31, v29, v30

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v31, v0

    const v32, 0x7f0e008f

    .line 2654
    invoke-virtual/range {v31 .. v32}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    .line 2653
    invoke-virtual/range {v28 .. v29}, Lcom/android/camera/VideoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v28, v0

    const v29, 0x7f0e03b6

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v28

    .line 2656
    invoke-virtual/range {v28 .. v28}, Landroid/widget/Toast;->show()V

    .line 2660
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v28, v0

    const v29, 0x7f0e00e3

    .line 2661
    invoke-virtual/range {v28 .. v29}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 2660
    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v28, v0

    const v29, 0x7f0e00db

    .line 2662
    invoke-virtual/range {v28 .. v29}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_13

    .line 2664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    const-string v29, "noise-reduction-mode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e00db

    .line 2665
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 2664
    invoke-virtual/range {v28 .. v30}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const-string v31, "pref_camera_noise_reduction_key"

    aput-object v31, v29, v30

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v31, v0

    const v32, 0x7f0e00db

    .line 2667
    invoke-virtual/range {v31 .. v32}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    .line 2666
    invoke-virtual/range {v28 .. v29}, Lcom/android/camera/VideoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v28, v0

    const v29, 0x7f0e03b7

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v28

    .line 2669
    invoke-virtual/range {v28 .. v28}, Landroid/widget/Toast;->show()V

    .line 2672
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    const-string v29, "see-more"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2676
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v28, v0

    const-string v29, "pref_camera_video_hdr_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e0092

    .line 2678
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 2676
    invoke-virtual/range {v28 .. v30}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 2679
    .local v24, "videoHDR":Ljava/lang/String;
    const-string v28, "CAM_VideoModule"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Video HDR Setting ="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    .line 2681
    invoke-static/range {v28 .. v28}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedVideoHDRModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v28

    .line 2680
    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v28

    if-eqz v28, :cond_2a

    .line 2682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setVideoHDRMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 2687
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getVideoHighFrameRate(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v10

    .line 2688
    .local v10, "hfr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    const-string v29, "video-hsr"

    invoke-virtual/range {v28 .. v29}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2689
    .local v15, "hsr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getVideoHDRMode(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v9

    .line 2690
    .local v9, "hdr":Ljava/lang/String;
    const-string v28, "off"

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_18

    .line 2692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v28, v0

    const-string v29, "pref_video_time_lapse_frame_interval_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e035f

    .line 2694
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 2692
    invoke-virtual/range {v28 .. v30}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2695
    .local v8, "frameIntervalStr":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 2696
    .local v23, "timeLapseInterval":I
    const/16 v20, 0x0

    .line 2697
    .local v20, "rate":I
    const/16 v28, 0x3

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/camera/VideoModule;->isDigit(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_15

    .line 2698
    const/16 v28, 0x3

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 2700
    :cond_15
    const-string v28, "CAM_VideoModule"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "rate = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    if-nez v23, :cond_17

    const-string v28, "enable"

    .line 2702
    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_16

    sget v28, Lcom/android/camera/VideoModule;->PERSIST_EIS_MAX_FPS:I

    move/from16 v0, v20

    move/from16 v1, v28

    if-gt v0, v1, :cond_17

    :cond_16
    if-eqz v9, :cond_18

    const-string v28, "off"

    .line 2703
    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_18

    .line 2704
    :cond_17
    const-string v28, "CAM_VideoModule"

    const-string v29, "HDR/DIS/Time Lapse ON for HFR/HSR selection, turning HFR/HSR off"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    const-string v29, "off"

    invoke-static/range {v28 .. v29}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setVideoHighFrameRate(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 2706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    const-string v29, "video-hsr"

    const-string v30, "off"

    invoke-virtual/range {v28 .. v30}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const-string v31, "pref_camera_hfr_key"

    aput-object v31, v29, v30

    const/16 v30, 0x1

    const-string v31, "off"

    aput-object v31, v29, v30

    invoke-virtual/range {v28 .. v29}, Lcom/android/camera/VideoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2712
    .end local v8    # "frameIntervalStr":Ljava/lang/String;
    .end local v20    # "rate":I
    .end local v23    # "timeLapseInterval":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v28

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 2714
    .local v3, "biggestSize":Landroid/hardware/Camera$Size;
    iget v0, v3, Landroid/hardware/Camera$Size;->width:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoWidth:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_19

    iget v0, v3, Landroid/hardware/Camera$Size;->height:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoHeight:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_1a

    .line 2715
    :cond_19
    const-string v28, "enable"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1a

    .line 2716
    const-string v28, "CAM_VideoModule"

    const-string v29, "DIS is not supported for this video quality"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v28, v0

    const v29, 0x7f0e00b2

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v28

    .line 2718
    invoke-virtual/range {v28 .. v28}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    const-string v29, "asus_vDIS"

    const-string v30, "disable"

    invoke-virtual/range {v28 .. v30}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const-string v31, "pref_camera_dis_key"

    aput-object v31, v29, v30

    const/16 v30, 0x1

    const-string v31, "disable"

    aput-object v31, v29, v30

    invoke-virtual/range {v28 .. v29}, Lcom/android/camera/VideoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2721
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mIsDISEnabled:Z

    .line 2725
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v28, v0

    const-string v29, "pref_camera_video_rotation_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e0214

    .line 2727
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 2725
    invoke-virtual/range {v28 .. v30}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 2728
    .local v25, "videoRotation":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    .line 2729
    invoke-static/range {v28 .. v28}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedVideoRotationValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v28

    .line 2728
    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v28

    if-eqz v28, :cond_1b

    .line 2730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setVideoRotation(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 2734
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->updatePowerMode()V

    .line 2737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v28, v0

    const-string v29, "pref_camera_facedetection_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e009b

    .line 2739
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 2737
    invoke-virtual/range {v28 .. v30}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2741
    .local v7, "faceDetection":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    .line 2742
    invoke-static/range {v28 .. v28}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedFaceDetectionModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v28

    .line 2741
    move-object/from16 v0, v28

    invoke-static {v7, v0}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v28

    if-eqz v28, :cond_1c

    .line 2743
    const-string v28, "CAM_VideoModule"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "setFaceDetectionMode "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-static {v0, v7}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setFaceDetectionMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 2745
    const-string v28, "on"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/VideoModule;->mFaceDetectionEnabled:Z

    move/from16 v28, v0

    if-nez v28, :cond_2b

    .line 2746
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mFaceDetectionEnabled:Z

    .line 2747
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/VideoModule;->startFaceDetection()V

    .line 2753
    :cond_1c
    :goto_9
    return-void

    .line 2423
    .end local v3    # "biggestSize":Landroid/hardware/Camera$Size;
    .end local v7    # "faceDetection":Ljava/lang/String;
    .end local v9    # "hdr":Ljava/lang/String;
    .end local v10    # "hfr":Ljava/lang/String;
    .end local v14    # "highFrameRate":Ljava/lang/String;
    .end local v15    # "hsr":Ljava/lang/String;
    .end local v17    # "isHFR":Z
    .end local v18    # "isHSR":Z
    .end local v19    # "noiseReductionMode":Ljava/lang/String;
    .end local v21    # "seeMoreMode":Ljava/lang/String;
    .end local v24    # "videoHDR":Ljava/lang/String;
    .end local v25    # "videoRotation":Ljava/lang/String;
    .end local v26    # "video_cds":Ljava/lang/String;
    .end local v27    # "video_tnr":Ljava/lang/String;
    :cond_1d
    const-string v28, "CAM_VideoModule"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Not supported IS mode = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0e011a

    .line 2424
    invoke-virtual/range {v30 .. v31}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 2423
    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2427
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    .line 2428
    invoke-static/range {v28 .. v28}, Lcom/android/camera/CameraSettings;->getSupportedDISModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v28

    .line 2427
    move-object/from16 v0, v28

    invoke-static {v5, v0}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v28

    if-eqz v28, :cond_1f

    .line 2429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    const-string v29, "asus_vDIS"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2431
    :cond_1f
    const-string v28, "CAM_VideoModule"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Not supported IS mode = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2449
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mDefaultAntibanding:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mDefaultAntibanding:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2480
    .restart local v12    # "hfrRate":Ljava/lang/String;
    .restart local v14    # "highFrameRate":Ljava/lang/String;
    .restart local v17    # "isHFR":Z
    .restart local v18    # "isHSR":Z
    :cond_21
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mUnsupportedHSRVideoSize:Z

    goto/16 :goto_2

    .line 2497
    .restart local v13    # "hfrsize":Ljava/lang/String;
    .restart local v22    # "size":Landroid/hardware/Camera$Size;
    :cond_22
    const/16 v28, 0x0

    :try_start_1
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mUnsupportedHSRVideoSize:Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 2502
    :catch_0
    move-exception v6

    .line 2503
    .local v6, "e":Ljava/lang/NullPointerException;
    const-string v28, "CAM_VideoModule"

    const-string v29, "supported hfr sizes is null"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2511
    .end local v6    # "e":Ljava/lang/NullPointerException;
    .restart local v11    # "hfrFps":I
    :cond_23
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mUnsupportedHSRVideoSize:Z

    goto/16 :goto_5

    .line 2521
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-static {v0, v12}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setVideoHighFrameRate(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2524
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    const-string v29, "off"

    invoke-static/range {v28 .. v29}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setVideoHighFrameRate(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 2525
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/VideoModule;->mUnsupportedHSRVideoSize:Z

    move/from16 v28, v0

    if-eqz v28, :cond_26

    .line 2526
    const-string v28, "CAM_VideoModule"

    const-string v29, "Unsupported hsr resolution"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    const-string v29, "video-hsr"

    const-string v30, "off"

    invoke-virtual/range {v28 .. v30}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2529
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    const-string v29, "video-hsr"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v12}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2533
    .end local v11    # "hfrFps":I
    .end local v12    # "hfrRate":Ljava/lang/String;
    .end local v13    # "hfrsize":Ljava/lang/String;
    .end local v22    # "size":Landroid/hardware/Camera$Size;
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    const-string v29, "off"

    invoke-static/range {v28 .. v29}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setVideoHighFrameRate(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 2534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    const-string v29, "video-hsr"

    const-string v30, "off"

    invoke-virtual/range {v28 .. v30}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2576
    .restart local v26    # "video_cds":Ljava/lang/String;
    .restart local v27    # "video_tnr":Ljava/lang/String;
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/VideoModule;->mIsVideoTNREnabled:Z

    move/from16 v28, v0

    if-eqz v28, :cond_29

    .line 2577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    const-string v29, "video-cds-mode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPrevSavedVideoCDS:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v28 .. v30}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const-string v31, "pref_camera_video_cds_mode_key"

    aput-object v31, v29, v30

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPrevSavedVideoCDS:Ljava/lang/String;

    move-object/from16 v31, v0

    aput-object v31, v29, v30

    invoke-virtual/range {v28 .. v29}, Lcom/android/camera/VideoUI;->overrideSettings([Ljava/lang/String;)V

    .line 2579
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mIsVideoTNREnabled:Z

    .line 2580
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mIsVideoCDSUpdated:Z

    .line 2581
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mOverrideCDS:Z

    goto/16 :goto_7

    .line 2583
    :cond_29
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mTempVideoCDS:Ljava/lang/String;

    goto/16 :goto_7

    .line 2684
    .restart local v19    # "noiseReductionMode":Ljava/lang/String;
    .restart local v21    # "seeMoreMode":Ljava/lang/String;
    .restart local v24    # "videoHDR":Ljava/lang/String;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    const-string v29, "off"

    invoke-static/range {v28 .. v29}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->setVideoHDRMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2748
    .restart local v3    # "biggestSize":Landroid/hardware/Camera$Size;
    .restart local v7    # "faceDetection":Ljava/lang/String;
    .restart local v9    # "hdr":Ljava/lang/String;
    .restart local v10    # "hfr":Ljava/lang/String;
    .restart local v15    # "hsr":Ljava/lang/String;
    .restart local v25    # "videoRotation":Ljava/lang/String;
    :cond_2b
    const-string v28, "off"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/VideoModule;->mFaceDetectionEnabled:Z

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1c

    .line 2749
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/VideoModule;->stopFaceDetection()V

    .line 2750
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mFaceDetectionEnabled:Z

    goto/16 :goto_9
.end method

.method private readVideoPreferences()V
    .locals 17

    .prologue
    .line 908
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v14, "pref_video_quality_key"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 910
    .local v12, "videoQuality":Ljava/lang/String;
    if-nez v12, :cond_0

    .line 911
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v13}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 912
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0e0355

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 914
    .local v1, "defaultQuality":Ljava/lang/String;
    const-string v13, ""

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/VideoModule;->mCameraId:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 916
    invoke-static {v13, v14}, Lcom/android/camera/CameraSettings;->getSupportedVideoQualities(ILandroid/hardware/Camera$Parameters;)Ljava/util/ArrayList;

    move-result-object v13

    .line 915
    invoke-static {v1, v13}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 918
    move-object v12, v1

    .line 924
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v13}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v14, "pref_video_quality_key"

    invoke-interface {v13, v14, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 926
    .end local v1    # "defaultQuality":Ljava/lang/String;
    :cond_0
    sget-object v13, Lcom/android/camera/CameraSettings;->VIDEO_QUALITY_TABLE:Ljava/util/HashMap;

    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 929
    .local v9, "quality":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 930
    .local v6, "intent":Landroid/content/Intent;
    const-string v13, "android.intent.extra.videoQuality"

    invoke-virtual {v6, v13}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 931
    const-string v13, "android.intent.extra.videoQuality"

    const/4 v14, 0x0

    .line 932
    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 933
    .local v2, "extraVideoQuality":I
    if-lez v2, :cond_7

    .line 934
    const/4 v9, 0x1

    .line 941
    .end local v2    # "extraVideoQuality":I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v14, "pref_video_time_lapse_frame_interval_key"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v16, 0x7f0e035f

    .line 943
    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 941
    invoke-virtual {v13, v14, v15}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 944
    .local v3, "frameIntervalStr":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 945
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    if-eqz v13, :cond_8

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    .line 947
    const/4 v4, 0x0

    .line 948
    .local v4, "hfrRate":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v14, "pref_camera_hfr_key"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v16, 0x7f0e00c2

    .line 950
    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 948
    invoke-virtual {v13, v14, v15}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 951
    .local v5, "highFrameRate":Ljava/lang/String;
    const-string v13, "hfr"

    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-virtual {v5, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "hsr"

    const/4 v14, 0x0

    const/4 v15, 0x3

    .line 952
    invoke-virtual {v5, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 953
    :cond_2
    const/4 v13, 0x3

    invoke-virtual {v5, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 954
    .local v10, "rate":Ljava/lang/String;
    const-string v13, "CAM_VideoModule"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "HFR :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : rate = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :try_start_0
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 962
    .end local v10    # "rate":Ljava/lang/String;
    :cond_3
    :goto_3
    move v7, v9

    .line 963
    .local v7, "mappedQuality":I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v13, :cond_9

    .line 964
    invoke-static {v9}, Lcom/android/camera/CameraSettings;->getTimeLapseQualityFor(I)I

    move-result v7

    .line 970
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v13, v7}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 971
    move v9, v7

    .line 975
    :goto_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v13, v9}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    .line 976
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->getDesiredPreviewSize()V

    .line 977
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->qcomReadVideoPreferences()V

    .line 981
    const-string v13, "android.intent.extra.durationLimit"

    invoke-virtual {v6, v13}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 982
    const-string v13, "android.intent.extra.durationLimit"

    const/4 v14, 0x0

    .line 983
    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 984
    .local v11, "seconds":I
    mul-int/lit16 v13, v11, 0x3e8

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    .line 986
    .end local v11    # "seconds":I
    :cond_5
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/camera/VideoModule;->mPreferenceRead:Z

    .line 987
    return-void

    .line 921
    .end local v3    # "frameIntervalStr":Ljava/lang/String;
    .end local v4    # "hfrRate":I
    .end local v5    # "highFrameRate":Ljava/lang/String;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "mappedQuality":I
    .end local v9    # "quality":I
    .restart local v1    # "defaultQuality":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/VideoModule;->mCameraId:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v13, v14}, Lcom/android/camera/CameraSettings;->getSupportedHighestVideoQuality(ILandroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 936
    .end local v1    # "defaultQuality":Ljava/lang/String;
    .restart local v2    # "extraVideoQuality":I
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v9    # "quality":I
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 945
    .end local v2    # "extraVideoQuality":I
    .restart local v3    # "frameIntervalStr":Ljava/lang/String;
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 957
    .restart local v4    # "hfrRate":I
    .restart local v5    # "highFrameRate":Ljava/lang/String;
    .restart local v10    # "rate":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 958
    .local v8, "nfe":Ljava/lang/NumberFormatException;
    const-string v13, "CAM_VideoModule"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid hfr rate "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 965
    .end local v8    # "nfe":Ljava/lang/NumberFormatException;
    .end local v10    # "rate":Ljava/lang/String;
    .restart local v7    # "mappedQuality":I
    :cond_9
    if-lez v4, :cond_4

    .line 966
    invoke-static {v9}, Lcom/android/camera/CameraSettings;->getHighSpeedQualityFor(I)I

    move-result v7

    .line 967
    const-string v13, "CAM_VideoModule"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "NOTE: HighSpeed quality ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") for ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 973
    :cond_a
    const-string v13, "CAM_VideoModule"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "NOTE: Quality "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is not supported ! Will use "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method private registerMediaButtonReceiver()V
    .locals 3

    .prologue
    .line 3291
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3292
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3293
    return-void
.end method

.method private releaseAudioFocus()V
    .locals 4

    .prologue
    .line 1895
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1897
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v1

    .line 1899
    .local v1, "result":I
    if-nez v1, :cond_0

    .line 1900
    const-string v2, "CAM_VideoModule"

    const-string v3, "Audio focus release failed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    :cond_0
    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1759
    const-string v0, "CAM_VideoModule"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 1761
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->cleanupEmptyFile()V

    .line 1762
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 1763
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 1764
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1766
    :cond_0
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1767
    return-void
.end method

.method private releasePreviewResources()V
    .locals 1

    .prologue
    .line 1344
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->hideSurfaceView()V

    .line 1347
    :cond_0
    return-void
.end method

.method private requestAudioFocus()V
    .locals 5

    .prologue
    .line 1882
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1886
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 1889
    .local v1, "result":I
    if-nez v1, :cond_0

    .line 1890
    const-string v2, "CAM_VideoModule"

    const-string v3, "Audio focus request failed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    :cond_0
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 2163
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2164
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2165
    return-void
.end method

.method private resumeVideoRecording()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2063
    const-string v2, "CAM_VideoModule"

    const-string v3, "resumeVideoRecording"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    iput-boolean v4, p0, Lcom/android/camera/VideoModule;->mMediaRecorderPausing:Z

    .line 2065
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    .line 2066
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateRecordingTime()V

    .line 2067
    sget-boolean v2, Lcom/android/camera/util/ApiHelper;->HAS_RESUME_SUPPORTED:Z

    if-nez v2, :cond_0

    .line 2068
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V

    .line 2077
    :goto_0
    return-void

    .line 2071
    :cond_0
    :try_start_0
    const-string v2, "android.media.MediaRecorder"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "resume"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2072
    .local v1, "resumeRec":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2073
    .end local v1    # "resumeRec":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 2074
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CAM_VideoModule"

    const-string v3, "resume method not implemented"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveVideo()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1801
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_2

    .line 1802
    new-instance v8, Ljava/io/File;

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1803
    .local v8, "origFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_1

    .line 1804
    :cond_0
    const-string v0, "CAM_VideoModule"

    const-string v1, "Invalid file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    iput-object v10, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1826
    .end local v8    # "origFile":Ljava/io/File;
    :goto_0
    return-void

    .line 1809
    .restart local v8    # "origFile":Ljava/io/File;
    :cond_1
    const-wide/16 v2, 0x0

    .line 1810
    .local v2, "duration":J
    new-instance v9, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v9}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1813
    .local v9, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 1814
    const/16 v0, 0x9

    invoke-virtual {v9, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1819
    :goto_1
    invoke-virtual {v9}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1821
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mOnVideoSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/MediaSaveService;->addVideo(Ljava/lang/String;JLandroid/content/ContentValues;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;)V

    .line 1825
    .end local v2    # "duration":J
    .end local v8    # "origFile":Ljava/io/File;
    .end local v9    # "retriever":Landroid/media/MediaMetadataRetriever;
    :cond_2
    iput-object v10, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    goto :goto_0

    .line 1816
    .restart local v2    # "duration":J
    .restart local v8    # "origFile":Ljava/io/File;
    .restart local v9    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catch_0
    move-exception v7

    .line 1817
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v0, "CAM_VideoModule"

    const-string v1, "cannot access the file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setCameraParameters(Z)V
    .locals 20
    .param p1, "isFlashDelay"    # Z

    .prologue
    .line 2763
    const-string v16, "CAM_VideoModule"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Preview dimension in App->"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "X"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 2765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    const-string v17, "video-size"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/camera/util/CameraUtil;->getMaxPreviewFpsRange(Landroid/hardware/Camera$Parameters;)[I

    move-result-object v3

    .line 2767
    .local v3, "fpsRange":[I
    array-length v0, v3

    move/from16 v16, v0

    if-lez v16, :cond_8

    .line 2768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v17, v3, v17

    const/16 v18, 0x1

    aget v18, v3, v18

    invoke-virtual/range {v16 .. v18}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 2775
    :goto_0
    if-eqz p1, :cond_9

    .line 2776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0xa

    const-wide/16 v18, 0x320

    invoke-virtual/range {v16 .. v19}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2780
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/VideoModule;->videoWidth:I

    .line 2781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/VideoModule;->videoHeight:I

    .line 2783
    const-string v16, "CAM_VideoModule"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "NOTE: SetCameraParameters "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoWidth:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " x "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoHeight:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoWidth:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "x"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->videoHeight:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2785
    .local v8, "recordSize":Ljava/lang/String;
    const-string v16, "CAM_VideoModule"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Video dimension in App->"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    const-string v17, "video-size"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v16, v0

    const-string v17, "pref_camera_whitebalance_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v18, v0

    const v19, 0x7f0e0387

    .line 2790
    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2788
    invoke-virtual/range {v16 .. v18}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2791
    .local v15, "whiteBalance":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    .line 2792
    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v16

    .line 2791
    invoke-static/range {v15 .. v16}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 2793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 2802
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 2803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    .line 2804
    .local v7, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/VideoModule;->mZoomValue:I

    .line 2805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mZoomValue:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2809
    .end local v7    # "p":Landroid/hardware/Camera$Parameters;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v12

    .line 2810
    .local v12, "supportedFocus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v16, "continuous-video"

    move-object/from16 v0, v16

    invoke-static {v0, v12}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 2811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    const-string v17, "continuous-video"

    invoke-virtual/range {v16 .. v17}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2814
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    const-string v17, "recording-hint"

    const-string v18, "true"

    invoke-virtual/range {v16 .. v18}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    const-string v17, "video-stabilization-supported"

    invoke-virtual/range {v16 .. v17}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2819
    .local v14, "vstabSupported":Ljava/lang/String;
    const-string v16, "true"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 2820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    const-string v17, "video-stabilization"

    const-string v18, "true"

    invoke-virtual/range {v16 .. v18}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2827
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v16, v0

    const-string v17, "pref_camera_videosnapsize_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v18, v0

    const v19, 0x7f0e01fc

    .line 2829
    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2827
    invoke-virtual/range {v16 .. v18}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2831
    .local v13, "videoSnapshotSize":Ljava/lang/String;
    const-string v16, "auto"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 2832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v11

    .line 2833
    .local v11, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    invoke-static {v11, v0, v1}, Lcom/android/camera/util/CameraUtil;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 2835
    .local v5, "optimalSize":Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v6

    .line 2836
    .local v6, "original":Landroid/hardware/Camera$Size;
    invoke-virtual {v6, v5}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 2837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    iget v0, v5, Landroid/hardware/Camera$Size;->width:I

    move/from16 v17, v0

    iget v0, v5, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 2847
    .end local v6    # "original":Landroid/hardware/Camera$Size;
    .end local v11    # "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_4
    :goto_3
    const-string v16, "CAM_VideoModule"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Video snapshot size is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v5, Landroid/hardware/Camera$Size;->width:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "x"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v5, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v9

    .line 2854
    .local v9, "size":Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v10

    .line 2855
    .local v10, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget v0, v9, Landroid/hardware/Camera$Size;->width:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    iget v0, v9, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    invoke-static {v10, v0, v1}, Lcom/android/camera/util/CameraUtil;->getOptimalJpegThumbnailSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 2857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getJpegThumbnailSize()Landroid/hardware/Camera$Size;

    move-result-object v6

    .line 2858
    .restart local v6    # "original":Landroid/hardware/Camera$Size;
    invoke-virtual {v6, v5}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_5

    .line 2859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    iget v0, v5, Landroid/hardware/Camera$Size;->width:I

    move/from16 v17, v0

    iget v0, v5, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 2861
    :cond_5
    const-string v16, "CAM_VideoModule"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Thumbnail size is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v5, Landroid/hardware/Camera$Size;->width:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "x"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v5, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mCameraId:I

    move/from16 v16, v0

    const/16 v17, 0x2

    invoke-static/range {v16 .. v17}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v4

    .line 2866
    .local v4, "jpegQuality":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 2868
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->qcomSetCameraParameters()V

    .line 2870
    const/4 v2, 0x0

    .line 2871
    .local v2, "flag":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6

    .line 2872
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 2873
    const/4 v2, 0x1

    .line 2875
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2876
    if-eqz v2, :cond_7

    .line 2877
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 2880
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/android/camera/VideoUI;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Lcom/android/camera/ComboPreferences;)V

    .line 2884
    return-void

    .line 2772
    .end local v2    # "flag":Z
    .end local v4    # "jpegQuality":I
    .end local v5    # "optimalSize":Landroid/hardware/Camera$Size;
    .end local v6    # "original":Landroid/hardware/Camera$Size;
    .end local v8    # "recordSize":Ljava/lang/String;
    .end local v9    # "size":Landroid/hardware/Camera$Size;
    .end local v10    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v12    # "supportedFocus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "videoSnapshotSize":Ljava/lang/String;
    .end local v14    # "vstabSupported":Ljava/lang/String;
    .end local v15    # "whiteBalance":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    goto/16 :goto_0

    .line 2778
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/VideoModule;->mPreviewFocused:Z

    move/from16 v16, v0

    if-nez v16, :cond_a

    const/16 v16, 0x1

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/camera/VideoModule;->forceFlashOffIfSupported(Z)V

    goto/16 :goto_1

    :cond_a
    const/16 v16, 0x0

    goto :goto_4

    .line 2795
    .restart local v8    # "recordSize":Ljava/lang/String;
    .restart local v15    # "whiteBalance":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v15

    .line 2796
    if-nez v15, :cond_0

    .line 2797
    const-string v15, "auto"

    goto/16 :goto_2

    .line 2840
    .restart local v12    # "supportedFocus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "videoSnapshotSize":Ljava/lang/String;
    .restart local v14    # "vstabSupported":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    .line 2842
    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    .line 2840
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v13, v0, v1}, Lcom/android/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    .line 2844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .restart local v5    # "optimalSize":Landroid/hardware/Camera$Size;
    goto/16 :goto_3
.end method

.method private static setCaptureRate(Landroid/media/MediaRecorder;D)V
    .locals 1
    .param p0, "recorder"    # Landroid/media/MediaRecorder;
    .param p1, "fps"    # D

    .prologue
    .line 1747
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 1748
    return-void
.end method

.method private setDisplayOrientation()V
    .locals 2

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    .line 1231
    iget v0, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    .line 1232
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->setDisplayOrientation(I)V

    .line 1234
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 1235
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1237
    :cond_0
    return-void
.end method

.method private setFlipValue()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 2294
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getPreviewFlip()I

    move-result v3

    .line 2295
    .local v3, "preview_flip_value":I
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getVideoFlip()I

    move-result v6

    .line 2296
    .local v6, "video_flip_value":I
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getPictureFlip()I

    move-result v1

    .line 2297
    .local v1, "picture_flip_value":I
    iget v7, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    iget v8, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    invoke-static {v7, v8}, Lcom/android/camera/util/CameraUtil;->getJpegRotation(II)I

    move-result v4

    .line 2298
    .local v4, "rotation":I
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7, v4}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 2299
    const/16 v7, 0x5a

    if-eq v4, v7, :cond_0

    const/16 v7, 0x10e

    if-ne v4, v7, :cond_3

    .line 2301
    :cond_0
    if-ne v3, v9, :cond_8

    .line 2302
    const/4 v3, 0x2

    .line 2306
    :cond_1
    :goto_0
    if-ne v6, v9, :cond_9

    .line 2307
    const/4 v6, 0x2

    .line 2311
    :cond_2
    :goto_1
    if-ne v1, v9, :cond_a

    .line 2312
    const/4 v1, 0x2

    .line 2317
    :cond_3
    :goto_2
    invoke-static {v3}, Lcom/android/camera/util/CameraUtil;->getFilpModeString(I)Ljava/lang/String;

    move-result-object v2

    .line 2318
    .local v2, "preview_flip":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/camera/util/CameraUtil;->getFilpModeString(I)Ljava/lang/String;

    move-result-object v5

    .line 2319
    .local v5, "video_flip":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->getFilpModeString(I)Ljava/lang/String;

    move-result-object v0

    .line 2321
    .local v0, "picture_flip":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->getSupportedFlipMode(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2322
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "preview-flip"

    invoke-virtual {v7, v8, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2324
    :cond_4
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->getSupportedFlipMode(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2325
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "video-flip"

    invoke-virtual {v7, v8, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2327
    :cond_5
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->getSupportedFlipMode(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/camera/util/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2328
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "snapshot-picture-flip"

    invoke-virtual {v7, v8, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2331
    :cond_6
    if-nez v3, :cond_7

    if-nez v6, :cond_7

    if-eqz v1, :cond_b

    .line 2332
    :cond_7
    iput-boolean v9, p0, Lcom/android/camera/VideoModule;->mIsFlipEnabled:Z

    .line 2336
    :goto_3
    return-void

    .line 2303
    .end local v0    # "picture_flip":Ljava/lang/String;
    .end local v2    # "preview_flip":Ljava/lang/String;
    .end local v5    # "video_flip":Ljava/lang/String;
    :cond_8
    if-ne v3, v10, :cond_1

    .line 2304
    const/4 v3, 0x1

    goto :goto_0

    .line 2308
    :cond_9
    if-ne v6, v10, :cond_2

    .line 2309
    const/4 v6, 0x1

    goto :goto_1

    .line 2313
    :cond_a
    if-ne v1, v10, :cond_3

    .line 2314
    const/4 v1, 0x1

    goto :goto_2

    .line 2334
    .restart local v0    # "picture_flip":Ljava/lang/String;
    .restart local v2    # "preview_flip":Ljava/lang/String;
    .restart local v5    # "video_flip":Ljava/lang/String;
    :cond_b
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/camera/VideoModule;->mIsFlipEnabled:Z

    goto :goto_3
.end method

.method private setRecordLocation()V
    .locals 6

    .prologue
    .line 1751
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1752
    .local v0, "loc":Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 1753
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    .line 1754
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    double-to-float v3, v4

    .line 1753
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 1756
    :cond_0
    return-void
.end method

.method private setZoomMenuValue()V
    .locals 14

    .prologue
    const/4 v13, -0x1

    .line 2338
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v10, "pref_camera_zoom_key"

    iget-object v11, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0e02e2

    .line 2339
    invoke-virtual {v11, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2338
    invoke-virtual {v9, v10, v11}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2340
    .local v6, "zoomMenuValue":Ljava/lang/String;
    const-string v9, "0"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 2341
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2342
    .local v8, "zoomValue":I
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mZoomIdxTbl:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    if-ne v9, v13, :cond_2

    .line 2344
    const-string v9, "CAM_VideoModule"

    const-string v10, "Update the zoom index table."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v7

    .line 2346
    .local v7, "zoomRatios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 2347
    .local v1, "lastZoomIdx":I
    const/4 v4, 0x1

    .local v4, "zoom":I
    :goto_0
    const/16 v9, 0xa

    if-gt v4, v9, :cond_2

    .line 2348
    mul-int/lit8 v9, v4, 0x64

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 2349
    .local v5, "zoomIdx":I
    if-ne v5, v13, :cond_1

    .line 2350
    const-string v9, "CAM_VideoModule"

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

    .line 2351
    const/4 v2, 0x0

    .line 2352
    .local v2, "nextZoom":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_0

    mul-int/lit8 v9, v4, 0x64

    if-ge v2, v9, :cond_0

    .line 2354
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2355
    move v5, v1

    goto :goto_1

    .line 2357
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_2

    .line 2358
    add-int/lit8 v5, v1, -0x1

    .line 2363
    .end local v2    # "nextZoom":I
    :cond_1
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mZoomIdxTbl:[I

    add-int/lit8 v10, v4, -0x1

    aput v5, v9, v10

    .line 2364
    move v1, v5

    .line 2347
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2368
    .end local v1    # "lastZoomIdx":I
    .end local v4    # "zoom":I
    .end local v5    # "zoomIdx":I
    .end local v7    # "zoomRatios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mZoomIdxTbl:[I

    array-length v9, v9

    if-gt v8, v9, :cond_6

    iget-object v9, p0, Lcom/android/camera/VideoModule;->mZoomIdxTbl:[I

    add-int/lit8 v10, v8, -0x1

    aget v9, v9, v10

    if-eq v9, v13, :cond_6

    .line 2370
    const/4 v3, 0x1

    .line 2371
    .local v3, "step":I
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    .line 2372
    .local v0, "cur_zoom":I
    const-string v9, "CAM_VideoModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "zoom index = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/VideoModule;->mZoomIdxTbl:[I

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

    .line 2373
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mZoomIdxTbl:[I

    add-int/lit8 v10, v8, -0x1

    aget v9, v9, v10

    if-le v0, v9, :cond_3

    .line 2374
    const/4 v3, -0x1

    .line 2378
    :cond_3
    :goto_2
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mZoomIdxTbl:[I

    add-int/lit8 v10, v8, -0x1

    aget v9, v9, v10

    if-eq v0, v9, :cond_4

    .line 2379
    add-int/2addr v0, v3

    .line 2380
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9, v0}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2382
    const-wide/16 v10, 0x19

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2383
    :catch_0
    move-exception v9

    goto :goto_2

    .line 2387
    :cond_4
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v10, p0, Lcom/android/camera/VideoModule;->mZoomIdxTbl:[I

    add-int/lit8 v11, v8, -0x1

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2392
    .end local v0    # "cur_zoom":I
    .end local v3    # "step":I
    .end local v8    # "zoomValue":I
    :cond_5
    :goto_3
    return-void

    .line 2389
    .restart local v8    # "zoomValue":I
    :cond_6
    const-string v9, "CAM_VideoModule"

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

.method private setupMediaRecorderPreviewDisplay()V
    .locals 3

    .prologue
    .line 1509
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_0

    .line 1512
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 1513
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 1521
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    iget v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    .line 1522
    invoke-static {v1, v2}, Lcom/android/camera/util/CameraUtil;->getDisplayOrientation(II)I

    move-result v1

    .line 1521
    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1523
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V

    .line 1524
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 1525
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 1527
    :cond_0
    return-void
.end method

.method private showCaptureResult()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2045
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsInReviewMode:Z

    .line 2046
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->getVideoThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2047
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 2048
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/VideoUI;->showReviewImage(Landroid/graphics/Bitmap;)V

    .line 2050
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->showReviewControls()V

    .line 2051
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoUI;->enableCameraControls(Z)V

    .line 2052
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoUI;->showTimeLapseUI(Z)V

    .line 2053
    return-void
.end method

.method private showTapToSnapshotToast()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3149
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e03db

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 3151
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3152
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_video_first_use_hint_shown_key"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3153
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3154
    return-void
.end method

.method private startPlayVideoActivity()V
    .locals 5

    .prologue
    .line 718
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 719
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v3}, Lcom/android/camera/VideoModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 724
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/16 v3, 0x8e

    .line 725
    invoke-virtual {v2, v1, v3}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    :goto_0
    return-void

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "CAM_VideoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t view video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startPreview()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1262
    const-string v2, "CAM_VideoModule"

    const-string v3, "startPreview"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    iput-boolean v4, p0, Lcom/android/camera/VideoModule;->mStartPrevPending:Z

    .line 1265
    const/4 v1, 0x0

    .line 1266
    .local v1, "sh":Landroid/view/SurfaceHolder;
    const-string v2, "CAM_VideoModule"

    const-string v3, "startPreview: SurfaceHolder (MDP path)"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2}, Lcom/android/camera/VideoUI;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 1269
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mPreferenceRead:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_1

    .line 1270
    :cond_0
    iput-boolean v5, p0, Lcom/android/camera/VideoModule;->mStartPrevPending:Z

    .line 1300
    :goto_0
    return-void

    .line 1273
    :cond_1
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraErrorCallback;->setActivity(Lcom/android/camera/CameraActivity;)V

    .line 1274
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-interface {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1275
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-ne v2, v4, :cond_2

    .line 1276
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 1279
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setDisplayOrientation()V

    .line 1280
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v3, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    invoke-interface {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1281
    invoke-direct {p0, v4}, Lcom/android/camera/VideoModule;->setCameraParameters(Z)V

    .line 1284
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v2, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 1285
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/camera/VideoModule$4;

    invoke-direct {v4, p0}, Lcom/android/camera/VideoModule$4;-><init>(Lcom/android/camera/VideoModule;)V

    invoke-interface {v2, v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraPreviewDataCallback;)V

    .line 1292
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v2}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V

    .line 1293
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 1294
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onPreviewStarted()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1299
    iput-boolean v5, p0, Lcom/android/camera/VideoModule;->mStartPrevPending:Z

    goto :goto_0

    .line 1295
    :catch_0
    move-exception v0

    .line 1296
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeCamera()V

    .line 1297
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "startPreview failed"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private startVideoRecording()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1910
    const-string v3, "CAM_VideoModule"

    const-string v4, "startVideoRecording"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    .line 1912
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3}, Lcom/android/camera/VideoUI;->cancelAnimations()V

    .line 1913
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3, v1}, Lcom/android/camera/VideoUI;->setSwipingEnabled(Z)V

    .line 1914
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3}, Lcom/android/camera/VideoUI;->hideUIwhileRecording()V

    .line 1917
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3}, Lcom/android/camera/VideoUI;->isPreviewCoverVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1918
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3}, Lcom/android/camera/VideoUI;->hidePreviewCover()V

    .line 1920
    :cond_0
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 1921
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v4

    const-wide/32 v6, 0x3c00000

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    .line 1922
    const-string v2, "CAM_VideoModule"

    const-string v3, "Storage issue, ignore the start request"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    .line 2015
    :goto_0
    return v1

    .line 1927
    :cond_1
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mUnsupportedHFRVideoSize:Z

    if-ne v3, v2, :cond_2

    .line 1928
    const-string v2, "CAM_VideoModule"

    const-string v3, "Unsupported HFR and video size combinations"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e00b1

    invoke-static {v2, v3, v1}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v2

    .line 1930
    invoke-virtual {v2}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1931
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    goto :goto_0

    .line 1935
    :cond_2
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mUnsupportedHSRVideoSize:Z

    if-ne v3, v2, :cond_3

    .line 1936
    const-string v2, "CAM_VideoModule"

    const-string v3, "Unsupported HSR and video size combinations"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e00b3

    invoke-static {v2, v3, v1}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v2

    .line 1938
    invoke-virtual {v2}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1939
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    goto :goto_0

    .line 1943
    :cond_3
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mUnsupportedHFRVideoCodec:Z

    if-ne v3, v2, :cond_4

    .line 1944
    const-string v2, "CAM_VideoModule"

    const-string v3, "Unsupported HFR and video codec combinations"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e00b4

    invoke-static {v2, v3, v1}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v2

    .line 1946
    invoke-virtual {v2}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1947
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    goto :goto_0

    .line 1950
    :cond_4
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mUnsupportedProfile:Z

    if-ne v3, v2, :cond_5

    .line 1951
    const-string v2, "CAM_VideoModule"

    const-string v3, "Unsupported video profile"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0e00b6

    invoke-static {v2, v3, v1}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v2

    .line 1953
    invoke-virtual {v2}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1954
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    goto :goto_0

    .line 1959
    :cond_5
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1961
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeRecorder()V

    .line 1962
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mUnsupportedResolution:Z

    if-ne v3, v2, :cond_6

    .line 1963
    const-string v2, "CAM_VideoModule"

    const-string v3, "Unsupported Resolution according to target"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    goto :goto_0

    .line 1967
    :cond_6
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v3, :cond_7

    .line 1968
    const-string v2, "CAM_VideoModule"

    const-string v3, "Fail to initialize media recorder"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    goto/16 :goto_0

    .line 1973
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->requestAudioFocus()V

    .line 1976
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1989
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3}, Lcom/android/camera/VideoUI;->getShutterButton()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e03dc

    .line 1990
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1989
    invoke-static {v3, v4}, Lcom/android/camera/util/AccessibilityUtils;->makeAnnouncement(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1994
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v3}, Lcom/android/camera/CameraManager$CameraProxy;->refreshParameters()V

    .line 1999
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v3}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2001
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3, v1}, Lcom/android/camera/VideoUI;->enableCameraControls(Z)V

    .line 2003
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    .line 2004
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorderPausing:Z

    .line 2005
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3}, Lcom/android/camera/VideoUI;->resetPauseButton()V

    .line 2006
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/camera/VideoModule;->mRecordingTotalTime:J

    .line 2007
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    .line 2008
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3, v2}, Lcom/android/camera/VideoUI;->showRecordingUI(Z)V

    .line 2010
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateRecordingTime()V

    .line 2011
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->keepScreenOn()V

    .line 2012
    const-string v3, "Camera"

    const-string v4, "CaptureStart"

    const-string v5, "Video"

    invoke-static {v3, v4, v5}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2014
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    move v1, v2

    .line 2015
    goto/16 :goto_0

    .line 1977
    :catch_0
    move-exception v0

    .line 1978
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v4, "Could not start media recorder.\n Can\'t start video recording."

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1979
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    .line 1980
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseAudioFocus()V

    .line 1982
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v2}, Lcom/android/camera/CameraManager$CameraProxy;->lock()V

    .line 1983
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    goto/16 :goto_0
.end method

.method private stopVideoRecording()Z
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 2080
    const-string v3, "CAM_VideoModule"

    const-string v4, "stopVideoRecording"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    iput-boolean v6, p0, Lcom/android/camera/VideoModule;->mStopRecPending:Z

    .line 2082
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3, v6}, Lcom/android/camera/VideoUI;->setSwipingEnabled(Z)V

    .line 2083
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->isVideoCaptureIntent()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2084
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3}, Lcom/android/camera/VideoUI;->showSwitcher()V

    .line 2087
    :cond_0
    const/4 v1, 0x0

    .line 2088
    .local v1, "fail":Z
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v3, :cond_3

    .line 2089
    const/4 v2, 0x0

    .line 2092
    .local v2, "shouldAddToMediaStoreNow":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 2093
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 2094
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->stop()V

    .line 2095
    const/4 v2, 0x1

    .line 2096
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2097
    const-string v3, "CAM_VideoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopVideoRecording: Setting current video filename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3}, Lcom/android/camera/VideoUI;->getShutterButton()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0e03dd

    .line 2100
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2099
    invoke-static {v3, v4}, Lcom/android/camera/util/AccessibilityUtils;->makeAnnouncement(Landroid/view/View;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2106
    :goto_0
    iput-boolean v10, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    .line 2111
    iput-boolean v10, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    .line 2112
    invoke-virtual {p0, v10}, Lcom/android/camera/VideoModule;->showVideoSnapshotUI(Z)V

    .line 2117
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v3, :cond_1

    .line 2118
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeCamera()V

    .line 2121
    :cond_1
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3, v10}, Lcom/android/camera/VideoUI;->showRecordingUI(Z)V

    .line 2122
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v3, :cond_2

    .line 2123
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3, v6}, Lcom/android/camera/VideoUI;->enableCameraControls(Z)V

    .line 2127
    :cond_2
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3, v10, v6}, Lcom/android/camera/VideoUI;->setOrientationIndicator(IZ)V

    .line 2128
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->keepScreenOnAwhile()V

    .line 2129
    if-eqz v2, :cond_3

    if-nez v1, :cond_3

    .line 2130
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v3, :cond_7

    .line 2131
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->saveVideo()V

    .line 2139
    .end local v2    # "shouldAddToMediaStoreNow":Z
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    .line 2140
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseAudioFocus()V

    .line 2141
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v3, :cond_4

    .line 2142
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v3}, Lcom/android/camera/CameraManager$CameraProxy;->lock()V

    .line 2143
    sget-boolean v3, Lcom/android/camera/util/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v3, :cond_4

    .line 2144
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 2145
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3}, Lcom/android/camera/VideoUI;->hideSurfaceView()V

    .line 2147
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 2152
    :cond_4
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v3}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2153
    :cond_5
    const-string v6, "Camera"

    if-eqz v1, :cond_8

    const-string v3, "CaptureFail"

    :goto_2
    const-string v7, "Video"

    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mMediaRecorderPausing:Z

    if-eqz v4, :cond_9

    iget-wide v4, p0, Lcom/android/camera/VideoModule;->mRecordingTotalTime:J

    :goto_3
    invoke-static {v6, v3, v7, v4, v5}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2158
    iput-boolean v10, p0, Lcom/android/camera/VideoModule;->mStopRecPending:Z

    .line 2159
    return v1

    .line 2101
    .restart local v2    # "shouldAddToMediaStoreNow":Z
    :catch_0
    move-exception v0

    .line 2102
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "CAM_VideoModule"

    const-string v4, "stop fail"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2103
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/camera/VideoModule;->deleteVideoFile(Ljava/lang/String;)V

    .line 2104
    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    .line 2132
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_7
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v3, :cond_3

    .line 2134
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showCaptureResult()V

    goto :goto_1

    .line 2153
    .end local v2    # "shouldAddToMediaStoreNow":Z
    :cond_8
    const-string v3, "CaptureDone"

    goto :goto_2

    .line 2157
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v8, p0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    sub-long/2addr v4, v8

    iget-wide v8, p0, Lcom/android/camera/VideoModule;->mRecordingTotalTime:J

    add-long/2addr v4, v8

    goto :goto_3
.end method

.method private storeImage([BLandroid/location/Location;)V
    .locals 14
    .param p1, "data"    # [B
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 3112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3113
    .local v4, "dateTaken":J
    invoke-static {v4, v5}, Lcom/android/camera/util/CameraUtil;->createJpegName(J)Ljava/lang/String;

    move-result-object v3

    .line 3114
    .local v3, "title":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v10

    .line 3115
    .local v10, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-static {v10}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v9

    .line 3116
    .local v9, "orientation":I
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 3117
    .local v0, "s":Landroid/hardware/Camera$Size;
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v1

    iget v7, v0, Landroid/hardware/Camera$Size;->width:I

    iget v8, v0, Landroid/hardware/Camera$Size;->height:I

    iget-object v11, p0, Lcom/android/camera/VideoModule;->mOnPhotoSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    iget-object v12, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string v13, "jpeg"

    move-object v2, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v13}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 3121
    return-void
.end method

.method private switchCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2971
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 3007
    :goto_0
    return-void

    .line 2975
    :cond_0
    const-string v0, "CAM_VideoModule"

    const-string v1, "Start to switch camera."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2976
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    sget-object v1, Lcom/android/camera/VideoUI$SURFACE_STATUS;->HIDE:Lcom/android/camera/VideoUI$SURFACE_STATUS;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->applySurfaceChange(Lcom/android/camera/VideoUI$SURFACE_STATUS;)V

    .line 2977
    iget v0, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    iput v0, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    .line 2978
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    .line 2979
    iget v0, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoModule;->setCameraId(I)V

    .line 2981
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeCamera()V

    .line 2982
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->collapseCameraControls()Z

    .line 2984
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 2985
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 2986
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->openCamera()V

    .line 2987
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 2988
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    sget-object v1, Lcom/android/camera/VideoUI$SURFACE_STATUS;->SURFACE_VIEW:Lcom/android/camera/VideoUI$SURFACE_STATUS;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->applySurfaceChange(Lcom/android/camera/VideoUI$SURFACE_STATUS;)V

    .line 2989
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 2990
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoSnapshot()V

    .line 2991
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 2992
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoControl()V

    .line 2995
    iput v3, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    .line 2996
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->initializeZoom(Landroid/hardware/Camera$Parameters;)V

    .line 2997
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, v3, v3}, Lcom/android/camera/VideoUI;->setOrientationIndicator(IZ)V

    .line 3001
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3002
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoUI;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Lcom/android/camera/ComboPreferences;)V

    .line 3005
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->showTimeLapseUI(Z)V

    goto :goto_0
.end method

.method private takeASnapshot()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 604
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->isVideoSnapshotSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    .line 605
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    if-eqz v0, :cond_1

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v8

    .line 609
    .local v8, "s":Lcom/android/camera/MediaSaveService;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/android/camera/MediaSaveService;->isQueueFull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 614
    iget v0, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    iget v1, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->getJpegRotation(II)I

    move-result v7

    .line 615
    .local v7, "rotation":I
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v7}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 616
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    .line 617
    .local v6, "loc":Landroid/location/Location;
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v6}, Lcom/android/camera/util/CameraUtil;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 618
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 620
    const-string v0, "CAM_VideoModule"

    const-string v1, "Video snapshot start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/camera/VideoModule$JpegPictureCallback;

    invoke-direct {v5, p0, v6}, Lcom/android/camera/VideoModule$JpegPictureCallback;-><init>(Lcom/android/camera/VideoModule;Landroid/location/Location;)V

    move-object v3, v2

    move-object v4, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraShutterCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;Lcom/android/camera/CameraManager$CameraPictureCallback;)V

    .line 623
    invoke-virtual {p0, v9}, Lcom/android/camera/VideoModule;->showVideoSnapshotUI(Z)V

    .line 624
    iput-boolean v9, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    .line 625
    const-string v0, "Camera"

    const-string v1, "CaptureDone"

    const-string v2, "VideoSnapshot"

    invoke-static {v0, v1, v2}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updatePowerMode()V
    .locals 4

    .prologue
    .line 3223
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "low-power-mode-supported"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3224
    .local v0, "lpmSupported":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3225
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsDISEnabled:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsFlipEnabled:Z

    if-nez v1, :cond_1

    .line 3226
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "low-power-mode"

    const-string v3, "enable"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3231
    :cond_0
    :goto_0
    return-void

    .line 3228
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "low-power-mode"

    const-string v3, "disable"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateRecordingTime()V
    .locals 20

    .prologue
    .line 2231
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-nez v15, :cond_1

    .line 2281
    :cond_0
    :goto_0
    return-void

    .line 2234
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/VideoModule;->mMediaRecorderPausing:Z

    if-nez v15, :cond_0

    .line 2238
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2239
    .local v10, "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    move-wide/from16 v16, v0

    sub-long v16, v10, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/VideoModule;->mRecordingTotalTime:J

    move-wide/from16 v18, v0

    add-long v6, v16, v18

    .line 2243
    .local v6, "delta":J
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    const v16, 0xea60

    sub-int v15, v15, v16

    int-to-long v0, v15

    move-wide/from16 v16, v0

    cmp-long v15, v6, v16

    if-ltz v15, :cond_4

    const/4 v5, 0x1

    .line 2246
    .local v5, "countdownRemainingTime":Z
    :goto_1
    move-wide v8, v6

    .line 2247
    .local v8, "deltaAdjusted":J
    if-eqz v5, :cond_2

    .line 2248
    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    int-to-long v0, v15

    move-wide/from16 v18, v0

    sub-long v18, v18, v8

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    const-wide/16 v18, 0x3e7

    add-long v8, v16, v18

    .line 2253
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-nez v15, :cond_5

    .line 2254
    const/4 v15, 0x0

    invoke-static {v8, v9, v15}, Lcom/android/camera/VideoModule;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v14

    .line 2255
    .local v14, "text":Ljava/lang/String;
    const-wide/16 v12, 0x3e8

    .line 2264
    .local v12, "targetNextUpdateDelay":J
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v15, v14}, Lcom/android/camera/VideoUI;->setRecordingTime(Ljava/lang/String;)V

    .line 2266
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/VideoModule;->mRecordingTimeCountsDown:Z

    if-eq v15, v5, :cond_3

    .line 2269
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/camera/VideoModule;->mRecordingTimeCountsDown:Z

    .line 2271
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v15}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    if-eqz v5, :cond_6

    const v15, 0x7f0a0012

    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 2275
    .local v4, "color":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v15, v4}, Lcom/android/camera/VideoUI;->setRecordingTimeTextColor(I)V

    .line 2278
    .end local v4    # "color":I
    :cond_3
    rem-long v16, v6, v12

    sub-long v2, v12, v16

    .line 2279
    .local v2, "actualNextUpdateDelay":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-virtual {v15, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2243
    .end local v2    # "actualNextUpdateDelay":J
    .end local v5    # "countdownRemainingTime":Z
    .end local v8    # "deltaAdjusted":J
    .end local v12    # "targetNextUpdateDelay":J
    .end local v14    # "text":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 2260
    .restart local v5    # "countdownRemainingTime":Z
    .restart local v8    # "deltaAdjusted":J
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/camera/VideoModule;->getTimeLapseVideoLength(J)J

    move-result-wide v16

    const/4 v15, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v15}, Lcom/android/camera/VideoModule;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v14

    .line 2261
    .restart local v14    # "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-long v12, v15

    .restart local v12    # "targetNextUpdateDelay":J
    goto :goto_2

    .line 2271
    :cond_6
    const v15, 0x7f0a0011

    goto :goto_3
.end method


# virtual methods
.method public arePreviewControlsVisible()Z
    .locals 1

    .prologue
    .line 3091
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->arePreviewControlsVisible()Z

    move-result v0

    return v0
.end method

.method public enableRecordingLocation(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 578
    if-eqz p1, :cond_1

    const-string v0, "on"

    .line 580
    .local v0, "value":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_camera_recordlocation_key"

    .line 582
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 583
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 585
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, p1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 586
    return-void

    .line 578
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    const-string v0, "off"

    goto :goto_0
.end method

.method public init(Lcom/android/camera/CameraActivity;Landroid/view/View;)V
    .locals 5
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "root"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 507
    iput-object p1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 508
    new-instance v1, Lcom/android/camera/VideoUI;

    invoke-direct {v1, p1, p0, p2}, Lcom/android/camera/VideoUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/VideoController;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    .line 509
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 510
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-nez v1, :cond_0

    .line 511
    new-instance v1, Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v1, v2}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 514
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    .line 515
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v1}, Lcom/android/camera/VideoModule;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    .line 517
    const-string v1, "ro.hq.build.factory"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 518
    iput v4, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    .line 522
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v3, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 523
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 525
    new-instance v1, Lcom/android/camera/app/OrientationManager;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v1, v2}, Lcom/android/camera/app/OrientationManager;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mOrientationManager:Lcom/android/camera/app/OrientationManager;

    .line 531
    new-instance v0, Lcom/android/camera/VideoModule$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$CameraOpenThread;-><init>(Lcom/android/camera/VideoModule;)V

    .line 532
    .local v0, "cameraOpenThread":Lcom/android/camera/VideoModule$CameraOpenThread;
    invoke-virtual {v0}, Lcom/android/camera/VideoModule$CameraOpenThread;->start()V

    .line 534
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 536
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_savepath_key"

    const-string v3, "0"

    .line 537
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 536
    invoke-static {v1}, Lcom/android/camera/Storage;->setSaveSDCard(Z)V

    .line 538
    invoke-static {}, Lcom/android/camera/Storage;->isSaveSDCard()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mSaveToSDCard:Z

    .line 541
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->isVideoCaptureIntent()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    .line 542
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeSurfaceView()V

    .line 546
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/VideoModule$CameraOpenThread;->join()V

    .line 547
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_2

    .line 569
    :goto_0
    return-void

    .line 550
    :catch_0
    move-exception v1

    .line 554
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 555
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1, p0}, Lcom/android/camera/VideoUI;->setPrefChangedListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 557
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.quickCapture"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mQuickCapture:Z

    .line 558
    new-instance v1, Lcom/android/camera/LocationManager;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v1, v2, p0}, Lcom/android/camera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/camera/LocationManager$Listener;)V

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 560
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1, v4, v4}, Lcom/android/camera/VideoUI;->setOrientationIndicator(IZ)V

    .line 561
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setDisplayOrientation()V

    .line 563
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoUI;->showTimeLapseUI(Z)V

    .line 564
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoSnapshot()V

    .line 565
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 567
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoControl()V

    .line 568
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    goto :goto_0
.end method

.method public installIntentFilter()V
    .locals 3

    .prologue
    .line 1147
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 1157
    :goto_0
    return-void

    .line 1150
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1152
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1153
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1154
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1155
    new-instance v1, Lcom/android/camera/VideoModule$MyBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/VideoModule$MyBroadcastReceiver;-><init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1156
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public is4KEnabled()Z
    .locals 2

    .prologue
    .line 990
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->quality:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->quality:I

    const/16 v1, 0x3f0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->quality:I

    sget v1, Lorg/codeaurora/snapcam/wrapper/CamcorderProfileWrapper;->QUALITY_4KDCI:I

    if-ne v0, v1, :cond_1

    .line 993
    :cond_0
    const/4 v0, 0x1

    .line 995
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAudioMute()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsMute:Z

    return v0
.end method

.method isHFREnabled(II)Z
    .locals 11
    .param p1, "videoWidth"    # I
    .param p2, "videoHeight"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v5, 0x0

    .line 1042
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v6, :cond_1

    .line 1080
    :cond_0
    :goto_0
    return v5

    .line 1046
    :cond_1
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v7, "pref_camera_hfr_key"

    iget-object v8, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v9, 0x7f0e00c2

    .line 1048
    invoke-virtual {v8, v9}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1046
    invoke-virtual {v6, v7, v8}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1050
    .local v0, "HighFrameRate":Ljava/lang/String;
    const-string v6, "off"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1051
    const/4 v4, 0x0

    .line 1053
    .local v4, "size":Landroid/hardware/Camera$Size;
    const/4 v6, 0x3

    :try_start_0
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1054
    invoke-static {v7}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedVideoHighFrameRateModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v7

    .line 1053
    invoke-static {v6, v7}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1055
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1056
    invoke-static {v6}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedVideoHighFrameRateModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x3

    .line 1057
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1056
    invoke-interface {v6, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 1058
    .local v3, "index":I
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v6}, Lorg/codeaurora/snapcam/wrapper/ParametersWrapper;->getSupportedHfrSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "size":Landroid/hardware/Camera$Size;
    check-cast v4, Landroid/hardware/Camera$Size;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1068
    .restart local v4    # "size":Landroid/hardware/Camera$Size;
    if-eqz v4, :cond_0

    .line 1069
    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    if-gt p1, v6, :cond_0

    iget v6, v4, Landroid/hardware/Camera$Size;->height:I

    if-gt p2, v6, :cond_0

    .line 1076
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1077
    .local v2, "hfrFps":I
    invoke-direct {p0, p1, p2, v2}, Lcom/android/camera/VideoModule;->isSessionSupportedByEncoder(III)Z

    move-result v5

    goto :goto_0

    .line 1062
    .end local v2    # "hfrFps":I
    .end local v3    # "index":I
    .end local v4    # "size":Landroid/hardware/Camera$Size;
    :catch_0
    move-exception v1

    .line 1063
    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 1064
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 1065
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0
.end method

.method public isInReviewMode()Z
    .locals 1

    .prologue
    .line 760
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsInReviewMode:Z

    return v0
.end method

.method public isPreviewReady()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 798
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mStartPrevPending:Z

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mStopPrevPending:Z

    if-ne v1, v0, :cond_1

    .line 799
    :cond_0
    const/4 v0, 0x0

    .line 801
    :cond_1
    return v0
.end method

.method public isRecorderReady()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 805
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mStartRecPending:Z

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mStopRecPending:Z

    if-ne v1, v0, :cond_1

    .line 806
    :cond_0
    const/4 v0, 0x0

    .line 808
    :cond_1
    return v0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 1906
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    return v0
.end method

.method public isVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 1479
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1480
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 2889
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1410
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v1, :cond_1

    .line 1417
    :cond_0
    :goto_0
    return v0

    .line 1411
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_2

    .line 1412
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    goto :goto_0

    .line 1414
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->hideSwitcherPopup()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1417
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->onBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public onButtonContinue()V
    .locals 0

    .prologue
    .line 3219
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resumeVideoRecording()V

    .line 3220
    return-void
.end method

.method public onButtonPause()V
    .locals 0

    .prologue
    .line 3214
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->pauseVideoRecording()V

    .line 3215
    return-void
.end method

.method public onCameraPickerClicked(I)V
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    .line 3164
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 3175
    :cond_0
    :goto_0
    return-void

    .line 3166
    :cond_1
    iput p1, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    .line 3167
    const-string v0, "CAM_VideoModule"

    const-string v1, "Start to copy texture."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    .line 3173
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->switchCamera()V

    goto :goto_0
.end method

.method public onCaptureTextureCopied()V
    .locals 0

    .prologue
    .line 3018
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2893
    const-string v0, "CAM_VideoModule"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setDisplayOrientation()V

    .line 2895
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 2896
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 634
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 1854
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRecorder error. what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopVideoRecording()Z

    .line 1856
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->showUIafterRecording()V

    .line 1857
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1859
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 1861
    :cond_0
    return-void
.end method

.method public onErrorListener(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 3264
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoModule;->enableRecordingLocation(Z)V

    .line 3265
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 1866
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 1867
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    .line 1875
    :cond_0
    :goto_0
    return-void

    .line 1868
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 1869
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    .line 1872
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e03c5

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    .line 1873
    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1424
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v2, :cond_0

    .line 1455
    :goto_0
    return v0

    .line 1428
    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    move v0, v1

    .line 1455
    goto :goto_0

    .line 1430
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 1431
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->clickShutter()V

    goto :goto_0

    .line 1436
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 1437
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->clickShutter()V

    goto :goto_0

    .line 1442
    :sswitch_2
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1447
    :sswitch_3
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->volumeKeyShutterDisable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 1448
    goto :goto_0

    .line 1450
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->clickShutter()V

    goto :goto_0

    .line 1428
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1b -> :sswitch_0
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1460
    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v0, v1

    .line 1474
    :goto_0
    return v0

    .line 1462
    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2, v1}, Lcom/android/camera/VideoUI;->pressShutter(Z)V

    goto :goto_0

    .line 1467
    :pswitch_2
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->volumeKeyShutterDisable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1468
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2, v1}, Lcom/android/camera/VideoUI;->pressShutter(Z)V

    goto :goto_0

    .line 1460
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onMediaSaveServiceConnected(Lcom/android/camera/MediaSaveService;)V
    .locals 0
    .param p1, "s"    # Lcom/android/camera/MediaSaveService;

    .prologue
    .line 3185
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x1

    .line 694
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    iget v1, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    invoke-static {p1, v1}, Lcom/android/camera/util/CameraUtil;->roundOrientation(II)I

    move-result v0

    .line 697
    .local v0, "newOrientation":I
    iget v1, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    if-eq v1, v0, :cond_3

    .line 698
    iput v0, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    .line 699
    const-string v1, "CAM_VideoModule"

    const-string v2, "onOrientationChanged, update parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-ne v3, v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-nez v1, :cond_2

    .line 702
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setFlipValue()V

    .line 703
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updatePowerMode()V

    .line 704
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 706
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->tryToCloseSubList()V

    .line 707
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1, v0, v3}, Lcom/android/camera/VideoUI;->setOrientation(IZ)V

    .line 711
    :cond_3
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 712
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 713
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showTapToSnapshotToast()V

    goto :goto_0
.end method

.method public onOverriddenPreferencesClicked()V
    .locals 0

    .prologue
    .line 2900
    return-void
.end method

.method public onPauseAfterSuper()V
    .locals 2

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1399
    return-void
.end method

.method public onPauseBeforeSuper()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    .line 1353
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->showPreviewCover()V

    .line 1354
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->hideSurfaceView()V

    .line 1355
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_3

    .line 1357
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    .line 1363
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeVideoFileDescriptor()V

    .line 1366
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releasePreviewResources()V

    .line 1368
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1369
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1370
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1372
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resetScreenOn()V

    .line 1374
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1375
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mOrientationManager:Lcom/android/camera/app/OrientationManager;

    invoke-virtual {v0}, Lcom/android/camera/app/OrientationManager;->pause()V

    .line 1377
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1378
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1379
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1380
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1381
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    .line 1382
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    .line 1383
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mPreferenceRead:Z

    .line 1385
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->collapseCameraControls()Z

    .line 1386
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->removeDisplayChangeListener()V

    .line 1388
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mWasMute:Z

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsMute:Z

    if-eq v0, v1, :cond_2

    .line 1389
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mWasMute:Z

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/VideoModule;->setMute(ZZ)V

    .line 1391
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    sget-object v1, Lcom/android/camera/VideoUI$SURFACE_STATUS;->HIDE:Lcom/android/camera/VideoUI$SURFACE_STATUS;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->applySurfaceChange(Lcom/android/camera/VideoUI$SURFACE_STATUS;)V

    .line 1392
    return-void

    .line 1359
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeCamera()V

    .line 1360
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    goto :goto_0
.end method

.method public onPreviewFocusChanged(Z)V
    .locals 4
    .param p1, "previewFocused"    # Z

    .prologue
    .line 3084
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoUI;->onPreviewFocusChanged(Z)V

    .line 3085
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3086
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mPreviewFocused:Z

    .line 3087
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 3013
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3014
    return-void
.end method

.method public onPreviewUIDestroyed()V
    .locals 0

    .prologue
    .line 3209
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 3210
    return-void
.end method

.method public onPreviewUIReady()V
    .locals 4

    .prologue
    .line 3189
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_1

    .line 3205
    :cond_0
    :goto_0
    return-void

    .line 3192
    :cond_1
    const-string v1, "CAM_VideoModule"

    const-string v2, "onPreviewUIReady"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3193
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-nez v1, :cond_2

    .line 3194
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    goto :goto_0

    .line 3196
    :cond_2
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v2

    .line 3197
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 3198
    .local v0, "sh":Landroid/view/SurfaceHolder;
    if-nez v0, :cond_3

    .line 3199
    const-string v1, "CAM_VideoModule"

    const-string v3, "holder for preview is not ready."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3200
    monitor-exit v2

    goto :goto_0

    .line 3203
    .end local v0    # "sh":Landroid/view/SurfaceHolder;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3202
    .restart local v0    # "sh":Landroid/view/SurfaceHolder;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 3203
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onProtectiveCurtainClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 795
    return-void
.end method

.method public onRestorePreferencesClicked()V
    .locals 0

    .prologue
    .line 2905
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1166
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2, v4}, Lcom/android/camera/VideoUI;->enableShutter(Z)V

    .line 1167
    iput v4, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    .line 1168
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2}, Lcom/android/camera/VideoUI;->showSurfaceView()V

    .line 1169
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1170
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mWasMute:Z

    .line 1171
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mWasMute:Z

    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mIsMute:Z

    if-eq v2, v3, :cond_0

    .line 1172
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsMute:Z

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/VideoModule;->setMute(ZZ)V

    .line 1174
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/camera/VideoModule;->showVideoSnapshotUI(Z)V

    .line 1175
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->installIntentFilter()V

    .line 1178
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->registerMediaButtonReceiver()V

    .line 1182
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-nez v2, :cond_5

    .line 1183
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->openCamera()V

    .line 1184
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v2, :cond_2

    .line 1227
    :cond_1
    :goto_0
    return-void

    .line 1187
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 1188
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 1189
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoControl()V

    .line 1190
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 1196
    :goto_1
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    sget-object v3, Lcom/android/camera/VideoUI$SURFACE_STATUS;->SURFACE_VIEW:Lcom/android/camera/VideoUI$SURFACE_STATUS;

    invoke-virtual {v2, v3}, Lcom/android/camera/VideoUI;->applySurfaceChange(Lcom/android/camera/VideoUI$SURFACE_STATUS;)V

    .line 1198
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2}, Lcom/android/camera/VideoUI;->initDisplayChangeListener()V

    .line 1200
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/VideoUI;->initializeZoom(Landroid/hardware/Camera$Parameters;)V

    .line 1201
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2}, Lcom/android/camera/VideoUI;->setPreviewGesturesVideoUI()V

    .line 1202
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2}, Lcom/android/camera/VideoUI;->setSwitcherIndex()V

    .line 1203
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->keepScreenOnAwhile()V

    .line 1205
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mOrientationManager:Lcom/android/camera/app/OrientationManager;

    invoke-virtual {v2}, Lcom/android/camera/app/OrientationManager;->resume()V

    .line 1207
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_recordlocation_key"

    invoke-static {v2, v3}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v1

    .line 1209
    .local v1, "recordLocation":Z
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v2, :cond_3

    .line 1210
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v2, v1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1214
    :cond_3
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-eqz v2, :cond_4

    .line 1215
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/VideoModule;->mOnResumeTime:J

    .line 1216
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1219
    :cond_4
    const-string v2, "Camera"

    const-string v3, "VideoModule"

    invoke-static {v2, v3}, Lcom/android/camera/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/camera/VideoModule$3;

    invoke-direct {v3, p0}, Lcom/android/camera/VideoModule$3;-><init>(Lcom/android/camera/VideoModule;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1193
    .end local v1    # "recordLocation":Z
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoControl()V

    .line 1194
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/VideoUI;->enableShutter(Z)V

    goto :goto_1
.end method

.method public onResumeBeforeSuper()V
    .locals 1

    .prologue
    .line 1161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    .line 1162
    return-void
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 751
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUriFromMediaSaved:Z

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 754
    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsInReviewMode:Z

    .line 755
    invoke-direct {p0, v2}, Lcom/android/camera/VideoModule;->doReturnToCaller(Z)V

    .line 756
    return-void
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    .prologue
    .line 740
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsInReviewMode:Z

    .line 741
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->doReturnToCaller(Z)V

    .line 742
    return-void
.end method

.method public onReviewPlayClicked(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    .prologue
    .line 734
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPlayVideoActivity()V

    .line 735
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 6

    .prologue
    .line 2932
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v2, :cond_0

    .line 2963
    :goto_0
    return-void

    .line 2935
    :cond_0
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    monitor-enter v3

    .line 2938
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_1

    monitor-exit v3

    goto :goto_0

    .line 2962
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2940
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_recordlocation_key"

    invoke-static {v2, v4}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 2942
    .local v0, "recordLocation":Z
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v2, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 2944
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 2945
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    invoke-virtual {v2, v4}, Lcom/android/camera/VideoUI;->showTimeLapseUI(Z)V

    .line 2947
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2948
    .local v1, "size":Landroid/hardware/Camera$Size;
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    if-ne v2, v4, :cond_2

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    iget v4, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    if-ne v2, v4, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mRestartPreview:Z

    if-eqz v2, :cond_3

    .line 2951
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 2952
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 2953
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 2957
    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mRestartPreview:Z

    .line 2958
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/VideoUI;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Lcom/android/camera/ComboPreferences;)V

    .line 2959
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_savepath_key"

    const-string v5, "0"

    .line 2960
    invoke-virtual {v2, v4, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2959
    invoke-static {v2}, Lcom/android/camera/Storage;->setSaveSDCard(Z)V

    .line 2961
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 2962
    monitor-exit v3

    goto :goto_0

    .line 2955
    :cond_3
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/camera/VideoModule;->setCameraParameters(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onSharedPreferenceChanged(Lcom/android/camera/ListPreference;)V
    .locals 6
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 2909
    if-eqz p1, :cond_1

    const-string v3, "pref_video_quality_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/camera/VideoModule;->PERSIST_4K_NO_LIMIT:Z

    if-nez v3, :cond_1

    .line 2911
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 2912
    .local v2, "videoQuality":Ljava/lang/String;
    sget-object v3, Lcom/android/camera/CameraSettings;->VIDEO_QUALITY_TABLE:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2913
    sget-object v3, Lcom/android/camera/CameraSettings;->VIDEO_QUALITY_TABLE:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2914
    .local v1, "quality":I
    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    sget v3, Lorg/codeaurora/snapcam/wrapper/CamcorderProfileWrapper;->QUALITY_4KDCI:I

    if-ne v1, v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-eqz v3, :cond_1

    .line 2917
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e011a

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2918
    .local v0, "disDisable":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v4, "pref_camera_dis_key"

    .line 2919
    invoke-virtual {v3, v4, v0}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2918
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2920
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0e03b1

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v3

    .line 2921
    invoke-virtual {v3}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2926
    .end local v0    # "disDisable":Ljava/lang/String;
    .end local v1    # "quality":I
    .end local v2    # "videoQuality":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->onSharedPreferenceChanged()V

    .line 2927
    return-void
.end method

.method public onShowSwitcherPopup()V
    .locals 1

    .prologue
    .line 3179
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->onShowSwitcherPopup()V

    .line 3180
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 6

    .prologue
    .line 813
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->collapseCameraControls()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    if-eqz v1, :cond_1

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 816
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    .line 818
    .local v0, "stop":Z
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->isPreviewReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 821
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->isRecorderReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 824
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoUI;->enableShutter(Z)V

    .line 826
    if-eqz v0, :cond_4

    .line 827
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    .line 838
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    .line 839
    :cond_3
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 829
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startVideoRecording()Z

    move-result v1

    if-nez v1, :cond_2

    .line 831
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->showUIafterRecording()V

    goto :goto_1
.end method

.method public onShutterButtonFocus(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoUI;->setShutterPressed(Z)V

    .line 847
    return-void
.end method

.method public onShutterButtonLongClick()V
    .locals 0

    .prologue
    .line 850
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 598
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderPausing:Z

    if-eqz v0, :cond_0

    .line 600
    :goto_0
    return-void

    .line 599
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->takeASnapshot()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 631
    return-void
.end method

.method public onSwitchSavePath()V
    .locals 3

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    const-string v1, "pref_camera_savepath_key"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e0207

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/RotateTextToast;->makeText(Landroid/app/Activity;II)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    .line 1142
    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 1143
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 1403
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1404
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->keepScreenOnAwhile()V

    .line 1406
    :cond_0
    return-void
.end method

.method public onVideoSaved()V
    .locals 1

    .prologue
    .line 788
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 789
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showCaptureResult()V

    .line 791
    :cond_0
    return-void
.end method

.method public onZoomChanged(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1250
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v1, :cond_1

    .line 1258
    .end local p1    # "index":I
    :cond_0
    :goto_0
    return p1

    .line 1251
    .restart local p1    # "index":I
    :cond_1
    iput p1, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    .line 1252
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    .line 1254
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1255
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1256
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1257
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result p1

    goto :goto_0
.end method

.method public reinit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 489
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/camera/ComboPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 490
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    if-nez v0, :cond_0

    .line 491
    new-instance v0, Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    .line 495
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    .line 497
    const-string v0, "ro.hq.build.factory"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 498
    iput v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    .line 501
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 502
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 503
    return-void
.end method

.method public resizeForPreviewAspectRatio()V
    .locals 6

    .prologue
    .line 1133
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->setPreviewFrameLayoutCameraOrientation()V

    .line 1134
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v2, v1

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v4, v1

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/VideoUI;->setAspectRatio(D)V

    .line 1136
    return-void
.end method

.method protected setCameraId(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 2966
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_id_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 2967
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

    .line 2968
    return-void
.end method

.method public setMute(ZZ)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "isValue"    # Z

    .prologue
    .line 265
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 266
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 267
    if-eqz p2, :cond_0

    .line 268
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mIsMute:Z

    .line 270
    :cond_0
    return-void
.end method

.method public setPreferenceForTest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/VideoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->onSharedPreferenceChanged()V

    .line 592
    return-void
.end method

.method setPreviewFrameLayoutCameraOrientation()V
    .locals 3

    .prologue
    .line 1122
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    aget-object v0, v1, v2

    .line 1125
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_0

    .line 1126
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoUI;->cameraOrientationPreviewResize(Z)V

    .line 1129
    :goto_0
    return-void

    .line 1128
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoUI;->cameraOrientationPreviewResize(Z)V

    goto :goto_0
.end method

.method showVideoSnapshotUI(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 3033
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 3043
    :cond_0
    :goto_0
    return-void

    .line 3034
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->isVideoSnapshotSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    .line 3035
    if-eqz p1, :cond_2

    .line 3036
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->animateFlash()V

    .line 3037
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->animateCapture()V

    .line 3041
    :goto_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    if-nez p1, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v0}, Lcom/android/camera/VideoUI;->enableShutter(Z)V

    goto :goto_0

    .line 3039
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoUI;->showPreviewBorder(Z)V

    goto :goto_1

    .line 3041
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public startFaceDetection()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 3235
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_1

    .line 3248
    :cond_0
    :goto_0
    return-void

    .line 3237
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mFaceDetectionEnabled:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mFaceDetectionStarted:Z

    if-nez v2, :cond_0

    .line 3239
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v2

    if-lez v2, :cond_0

    .line 3240
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mFaceDetectionStarted:Z

    .line 3241
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    aget-object v0, v2, v3

    .line 3242
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget v3, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v1, :cond_2

    :goto_1
    invoke-virtual {v2, v3, v1}, Lcom/android/camera/VideoUI;->onStartFaceDetection(IZ)V

    .line 3244
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-interface {v1, v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;)V

    .line 3245
    const-string v1, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start face detection Video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3246
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/android/camera/CameraManager$CameraProxy;->startFaceDetection()V

    goto :goto_0

    .line 3242
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public stopFaceDetection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3251
    const-string v0, "CAM_VideoModule"

    const-string v1, "stop face detection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3252
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mFaceDetectionStarted:Z

    if-nez v0, :cond_1

    .line 3260
    :cond_0
    :goto_0
    return-void

    .line 3253
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_0

    .line 3254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mFaceDetectionStarted:Z

    .line 3255
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0, v2, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/camera/CameraManager$CameraFaceDetectionCallback;)V

    .line 3256
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->pauseFaceDetection()V

    .line 3257
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopFaceDetection()V

    .line 3258
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->onStopFaceDetection()V

    goto :goto_0
.end method

.method public stopPreview()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mStopPrevPending:Z

    .line 1311
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-nez v0, :cond_0

    .line 1312
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mStopPrevPending:Z

    .line 1320
    :goto_0
    return-void

    .line 1315
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 1316
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 1317
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mStopPrevPending:Z

    .line 1318
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->enableShutter(Z)V

    .line 1319
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->stopFaceDetection()V

    goto :goto_0
.end method

.method public switchInternalStorage()V
    .locals 3

    .prologue
    .line 3270
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_savepath_key"

    const-string v2, "0"

    .line 3271
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3272
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3273
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    const-string v1, "pref_camera_savepath_key"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoUI;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 3274
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/Storage;->setSaveSDCard(Z)V

    .line 3275
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 3276
    return-void
.end method

.method public updateCameraOrientation()V
    .locals 2

    .prologue
    .line 1241
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    .line 1245
    :cond_0
    :goto_0
    return-void

    .line 1242
    :cond_1
    iget v0, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1243
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setDisplayOrientation()V

    goto :goto_0
.end method

.method public updateStorageHintOnResume()Z
    .locals 1

    .prologue
    .line 3158
    const/4 v0, 0x1

    return v0
.end method

.method public waitingLocationPermissionResult(Z)V
    .locals 1
    .param p1, "result"    # Z

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/LocationManager;->waitingLocationPermissionResult(Z)V

    .line 574
    return-void
.end method
