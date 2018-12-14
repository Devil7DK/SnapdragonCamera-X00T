.class public Lcom/android/camera/CameraActivity;
.super Landroid/app/Activity;
.source "CameraActivity.java"

# interfaces
.implements Landroid/app/ActionBar$OnMenuVisibilityListener;
.implements Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;
.implements Lcom/android/camera/ui/ModuleSwitcher$ModuleSwitchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;,
        Lcom/android/camera/CameraActivity$CircularDrawable;,
        Lcom/android/camera/CameraActivity$UpdateThumbnailTask;,
        Lcom/android/camera/CameraActivity$OnActionBarVisibilityListener;,
        Lcom/android/camera/CameraActivity$MainHandler;,
        Lcom/android/camera/CameraActivity$MyOrientationEventListener;
    }
.end annotation


# static fields
.field public static final ACTION_IMAGE_CAPTURE_SECURE:Ljava/lang/String; = "android.media.action.IMAGE_CAPTURE_SECURE"

.field public static final ACTION_TRIM_VIDEO:Ljava/lang/String; = "com.android.camera.action.TRIM"

.field private static final AUTO_TEST_INTENT:Ljava/lang/String; = "com.android.camera.autotest"

.field public static final GESTURE_CAMERA_NAME:Ljava/lang/String; = "com.android.camera.CameraGestureActivity"

.field private static final HIDE_ACTION_BAR:I = 0x1

.field private static final INTENT_ACTION_STILL_IMAGE_CAMERA_SECURE:Ljava/lang/String; = "android.media.action.STILL_IMAGE_CAMERA_SECURE"

.field private static final KEY_FROM_SNAPCAM:Ljava/lang/String; = "from-snapcam"

.field public static final KEY_TOTAL_NUMBER:Ljava/lang/String; = "total-number"

.field public static final MEDIA_ITEM_PATH:Ljava/lang/String; = "media-item-path"

.field private static final PERMISSIONS_REQUEST_ACCESS_COARSE_LOCATION:I = 0x1

.field private static PIE_MENU_ENABLED:Z = false

.field private static final REFOCUS_ACTIVITY_CODE:I = 0x1

.field public static final REQ_CODE_DONT_SWITCH_TO_PREVIEW:I = 0x8e

.field public static final REQ_CODE_GCAM_DEBUG_POSTCAPTURE:I = 0x3e7

.field public static final SECURE_CAMERA_EXTRA:Ljava/lang/String; = "secure_camera"

.field public static SETTING_LIST_WIDTH_1:I = 0x0

.field public static SETTING_LIST_WIDTH_2:I = 0x0

.field private static final SHOW_ACTION_BAR_TIMEOUT_MS:J = 0xbb8L

.field private static final SUPPORT_ALL:I = -0x1

.field private static final SUPPORT_CROP:I = 0x8

.field private static final SUPPORT_DELETE:I = 0x1

.field private static final SUPPORT_EDIT:I = 0x20

.field private static final SUPPORT_INFO:I = 0x4

.field private static final SUPPORT_ROTATE:I = 0x2

.field private static final SUPPORT_SETAS:I = 0x10

.field private static final SUPPORT_SHARE:I = 0x80

.field private static final SUPPORT_SHARE_PANORAMA360:I = 0x100

.field private static final SUPPORT_SHOW_ON_MAP:I = 0x200

.field private static final SUPPORT_TRIM:I = 0x40

.field private static final SWITCH_SAVE_PATH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CAM_Activity"


# instance fields
.field private final DEFAULT_SYSTEM_UI_VISIBILITY:I

.field private mAboveFilmstripControlLayout:Landroid/widget/FrameLayout;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarMenu:Landroid/view/Menu;

.field private mAutoTestEnabled:Z

.field private mAutoTestReceiver:Landroid/content/BroadcastReceiver;

.field private mBottomProgress:Landroid/widget/ProgressBar;

.field private mCameraCaptureModuleRootView:Landroid/view/View;

.field private mCameraOpenErrorCallback:Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

.field private mCameraPanoModuleRootView:Landroid/view/View;

.field private mCameraPhotoModuleRootView:Landroid/view/View;

.field private mCameraPreviewData:Lcom/android/camera/data/CameraPreviewData;

.field private mCameraRootFrame:Landroid/widget/FrameLayout;

.field private mCameraVideoModuleRootView:Landroid/view/View;

.field private mCaptureModule:Lcom/android/camera/CaptureModule;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mCurrentModule:Lcom/android/camera/CameraModule;

.field private mCurrentModuleIndex:I

.field private mCursor:Landroid/database/Cursor;

.field private mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

.field private mDataRequested:Z

.field private mDeveloperMenuEnabled:Z

.field private mFilmStripListener:Lcom/android/camera/ui/FilmStripView$Listener;

.field private mFilmStripView:Lcom/android/camera/ui/FilmStripView;

.field private mForceReleaseCamera:Z

.field private mImageShareIntent:Landroid/content/Intent;

.field private mIsEditActivityInProgress:Z

.field private mIsUndoingDeletion:Z

.field private mLastRawOrientation:I

.field private mLocalImagesObserver:Lcom/android/camera/data/LocalMediaObserver;

.field private mLocalVideosObserver:Lcom/android/camera/data/LocalMediaObserver;

.field private mMainHandler:Landroid/os/Handler;

.field private mMediaSaveService:Lcom/android/camera/MediaSaveService;

.field private mNfcPushUris:[Landroid/net/Uri;

.field private mOnActionBarVisibilityListener:Lcom/android/camera/CameraActivity$OnActionBarVisibilityListener;

.field private mOrientationListener:Lcom/android/camera/CameraActivity$MyOrientationEventListener;

.field private mPano2Module:Lcom/android/camera/PanoCaptureModule;

.field private mPanoModule:Lcom/android/camera/WideAnglePanoramaModule;

.field private mPanoStitchingPanel:Landroid/view/View;

.field private mPanoramaManager:Lcom/android/camera/app/PanoramaStitchingManager;

.field private mPanoramaShareActionProvider:Landroid/widget/ShareActionProvider;

.field private mPanoramaShareIntent:Landroid/content/Intent;

.field private mPanoramaViewHelper:Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

.field private mPaused:Z

.field private mPendingDeletion:Z

.field private mPhotoModule:Lcom/android/camera/PhotoModule;

.field private mPlaceholderListener:Lcom/android/camera/ImageTaskManager$TaskListener;

.field private mPlaceholderManager:Lcom/android/camera/app/PlaceholderManager;

.field private mPreviewContentLayout:Landroid/widget/FrameLayout;

.field private mPreviewCover:Landroid/view/View;

.field private mResetToPreviewOnResume:Z

.field private mResultCodeForTesting:I

.field private mResultDataForTesting:Landroid/content/Intent;

.field private mSDcardMountedReceiver:Landroid/content/BroadcastReceiver;

.field private mSecureCamera:Z

.field private mStandardShareActionProvider:Landroid/widget/ShareActionProvider;

.field private mStandardShareIntent:Landroid/content/Intent;

.field private mStitchingListener:Lcom/android/camera/ImageTaskManager$TaskListener;

.field private mStorageHint:Lcom/android/camera/OnScreenHint;

.field private mStorageSpaceBytes:J

.field private final mStorageSpaceLock:Ljava/lang/Object;

.field private mThumbnail:Landroid/widget/ImageView;

.field private mThumbnailDrawable:Lcom/android/camera/CameraActivity$CircularDrawable;

.field private mUndoDeletionBar:Landroid/view/ViewGroup;

.field private mUpdateThumbnailTask:Lcom/android/camera/CameraActivity$UpdateThumbnailTask;

.field private mVideoModule:Lcom/android/camera/VideoModule;

.field private mVideoShareIntent:Landroid/content/Intent;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWrappedDataAdapter:Lcom/android/camera/data/LocalDataAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xfa

    .line 194
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/CameraActivity;->PIE_MENU_ENABLED:Z

    .line 257
    sput v1, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_1:I

    .line 258
    sput v1, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_2:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 177
    iput-boolean v3, p0, Lcom/android/camera/CameraActivity;->mResetToPreviewOnResume:Z

    .line 195
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mDeveloperMenuEnabled:Z

    .line 223
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceLock:Ljava/lang/Object;

    .line 224
    const-wide/32 v0, 0x3c00000

    iput-wide v0, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceBytes:J

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mOnActionBarVisibilityListener:Lcom/android/camera/CameraActivity$OnActionBarVisibilityListener;

    .line 235
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mIsUndoingDeletion:Z

    .line 236
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mIsEditActivityInProgress:Z

    .line 239
    iput-boolean v3, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    .line 240
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mForceReleaseCamera:Z

    .line 242
    new-array v0, v3, [Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mNfcPushUris:[Landroid/net/Uri;

    .line 251
    const/16 v0, 0x400

    iput v0, p0, Lcom/android/camera/CameraActivity;->DEFAULT_SYSTEM_UI_VISIBILITY:I

    .line 253
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mPendingDeletion:Z

    .line 268
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mAutoTestEnabled:Z

    .line 293
    new-instance v0, Lcom/android/camera/CameraActivity$1;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$1;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 309
    new-instance v0, Lcom/android/camera/CameraActivity$2;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$2;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraOpenErrorCallback:Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

    .line 342
    new-instance v0, Lcom/android/camera/CameraActivity$3;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$3;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mSDcardMountedReceiver:Landroid/content/BroadcastReceiver;

    .line 402
    new-instance v0, Lcom/android/camera/CameraActivity$4;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$4;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mFilmStripListener:Lcom/android/camera/ui/FilmStripView$Listener;

    .line 1192
    new-instance v0, Lcom/android/camera/CameraActivity$6;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$6;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mPlaceholderListener:Lcom/android/camera/ImageTaskManager$TaskListener;

    .line 1227
    new-instance v0, Lcom/android/camera/CameraActivity$7;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$7;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mStitchingListener:Lcom/android/camera/ImageTaskManager$TaskListener;

    .line 1469
    new-instance v0, Lcom/android/camera/CameraActivity$9;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraActivity$9;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mAutoTestReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/CameraActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/android/camera/CameraActivity;->mLastRawOrientation:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/CameraActivity;)Lcom/android/camera/CameraModule;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/CameraActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->setPreviewControlsVisibility(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/CameraActivity;)Lcom/android/camera/ui/FilmStripView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/CameraActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->arePreviewControlsVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->hidePanoStitchingProgress()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/CameraActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mPendingDeletion:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->performDeletion()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/CameraActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # I

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->updateActionBarMenu(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/CameraActivity;)Lcom/android/camera/app/PanoramaStitchingManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPanoramaManager:Lcom/android/camera/app/PanoramaStitchingManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->showPanoStitchingProgress()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/CameraActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # I

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->updateStitchingProgress(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/MediaSaveService;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMediaSaveService:Lcom/android/camera/MediaSaveService;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/CameraActivity;)[Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mNfcPushUris:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/CameraActivity;Lcom/android/camera/MediaSaveService;)Lcom/android/camera/MediaSaveService;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Lcom/android/camera/MediaSaveService;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/camera/CameraActivity;->mMediaSaveService:Lcom/android/camera/MediaSaveService;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/camera/CameraActivity;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->getPathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/CameraActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/CameraActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/camera/CameraActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->hideUndoDeletionBar(Z)V

    return-void
.end method

.method static synthetic access$2502(Lcom/android/camera/CameraActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/camera/CameraActivity;->mIsUndoingDeletion:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/camera/CameraActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->showOpenCameraErrorDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/CameraActivity;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # I

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->fileNameFromDataID(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/CameraActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # I

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->removeData(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/CameraActivity;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CameraActivity;->setSystemBarsVisibility(ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/CameraActivity;)Landroid/app/ActionBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/CameraActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalDataAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    return-object v0
.end method

.method private arePreviewControlsVisible()Z
    .locals 1

    .prologue
    .line 2419
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->arePreviewControlsVisible()Z

    move-result v0

    return v0
.end method

.method private bindMediaSaveService()V
    .locals 3

    .prologue
    .line 1325
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/camera/MediaSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1326
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/CameraActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1327
    return-void
.end method

.method private closeModule(Lcom/android/camera/CameraModule;)V
    .locals 0
    .param p1, "module"    # Lcom/android/camera/CameraModule;

    .prologue
    .line 2301
    invoke-interface {p1}, Lcom/android/camera/CameraModule;->onPauseBeforeSuper()V

    .line 2302
    invoke-interface {p1}, Lcom/android/camera/CameraModule;->onPauseAfterSuper()V

    .line 2303
    return-void
.end method

.method private fileNameFromDataID(I)Ljava/lang/String;
    .locals 3
    .param p1, "dataID"    # I

    .prologue
    .line 396
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v2, p1}, Lcom/android/camera/data/LocalDataAdapter;->getLocalData(I)Lcom/android/camera/data/LocalData;

    move-result-object v0

    .line 398
    .local v0, "localData":Lcom/android/camera/data/LocalData;
    new-instance v1, Ljava/io/File;

    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 399
    .local v1, "localFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getPathFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 739
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 742
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 743
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 751
    :goto_0
    return-object v3

    .line 745
    :cond_0
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 746
    .local v6, "column_index":I
    const/4 v8, 0x0

    .line 747
    .local v8, "s":Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 748
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 750
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v3, v8

    .line 751
    goto :goto_0
.end method

.method private getShareIntentFromType(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 1036
    const-string v0, "video/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1037
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mVideoShareIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 1038
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mVideoShareIntent:Landroid/content/Intent;

    .line 1039
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mVideoShareIntent:Landroid/content/Intent;

    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mVideoShareIntent:Landroid/content/Intent;

    .line 1050
    :goto_0
    return-object v0

    .line 1042
    :cond_1
    const-string v0, "image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1043
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mImageShareIntent:Landroid/content/Intent;

    if-nez v0, :cond_2

    .line 1044
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mImageShareIntent:Landroid/content/Intent;

    .line 1045
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mImageShareIntent:Landroid/content/Intent;

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1047
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mImageShareIntent:Landroid/content/Intent;

    goto :goto_0

    .line 1049
    :cond_3
    const-string v0, "CAM_Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported mimeType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasCriticalPermissions()Z
    .locals 2

    .prologue
    .line 1789
    const/4 v0, 0x0

    .line 1790
    .local v0, "hasCriticalPermission":Z
    const-string v1, "android.permission.CAMERA"

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.RECORD_AUDIO"

    .line 1792
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1794
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 1796
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1798
    const/4 v0, 0x1

    .line 1802
    :goto_0
    return v0

    .line 1800
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hidePanoStitchingProgress()V
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPanoStitchingPanel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 698
    return-void
.end method

.method private hideUndoDeletionBar(Z)V
    .locals 4
    .param p1, "withAnimation"    # Z

    .prologue
    .line 2358
    const-string v0, "CAM_Activity"

    const-string v1, "Hiding undo deletion bar"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraActivity;->mPendingDeletion:Z

    .line 2360
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2361
    if-eqz p1, :cond_1

    .line 2362
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    .line 2363
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 2364
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/camera/CameraActivity$15;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraActivity$15;-><init>(Lcom/android/camera/CameraActivity;)V

    .line 2365
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2386
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2391
    :cond_0
    :goto_0
    return-void

    .line 2388
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public static isPieMenuEnabled()Z
    .locals 1

    .prologue
    .line 384
    sget-boolean v0, Lcom/android/camera/CameraActivity;->PIE_MENU_ENABLED:Z

    return v0
.end method

.method private isStartRequsetPermission()Z
    .locals 12

    .prologue
    const/high16 v11, 0x4000000

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1807
    const/4 v5, 0x0

    .line 1808
    .local v5, "isStartPermissionActivity":Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1809
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-string v7, "request_permission"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1810
    .local v4, "isRequestShown":Z
    const-string v7, "location_request"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1812
    .local v3, "isLocationShowing":Z
    iget-boolean v7, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-nez v7, :cond_1

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->hasCriticalPermissions()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1813
    :cond_0
    const-string v7, "CAM_Activity"

    const-string v8, "Start Request Permission"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    new-instance v2, Landroid/content/Intent;

    const-class v7, Lcom/android/camera/PermissionsActivity;

    invoke-direct {v2, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1815
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1816
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 1817
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1818
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "request_permission"

    invoke-interface {v1, v7, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1819
    const-string v7, "location_request"

    invoke-interface {v1, v7, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1820
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1821
    const/4 v5, 0x1

    .line 1823
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    if-eqz v3, :cond_2

    .line 1824
    const-string v7, "activity"

    invoke-virtual {p0, v7}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1825
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    if-le v7, v9, :cond_3

    .line 1826
    const/4 v5, 0x1

    .line 1839
    .end local v0    # "am":Landroid/app/ActivityManager;
    :cond_2
    :goto_0
    return v5

    .line 1828
    .restart local v0    # "am":Landroid/app/ActivityManager;
    :cond_3
    const-string v7, "CAM_Activity"

    const-string v8, "Start Request Permission"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    new-instance v2, Landroid/content/Intent;

    const-class v7, Lcom/android/camera/PermissionsActivity;

    invoke-direct {v2, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1830
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1831
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 1832
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1833
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "request_permission"

    invoke-interface {v1, v7, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1834
    const-string v7, "location_request"

    invoke-interface {v1, v7, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1835
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1836
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private openModule(Lcom/android/camera/CameraModule;)V
    .locals 0
    .param p1, "module"    # Lcom/android/camera/CameraModule;

    .prologue
    .line 2296
    invoke-interface {p1}, Lcom/android/camera/CameraModule;->onResumeBeforeSuper()V

    .line 2297
    invoke-interface {p1}, Lcom/android/camera/CameraModule;->onResumeAfterSuper()V

    .line 2298
    return-void
.end method

.method private performDeletion()V
    .locals 2

    .prologue
    .line 2306
    iget-boolean v1, p0, Lcom/android/camera/CameraActivity;->mPendingDeletion:Z

    if-nez v1, :cond_0

    .line 2315
    :goto_0
    return-void

    .line 2309
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/CameraActivity;->hideUndoDeletionBar(Z)V

    .line 2310
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v1, p0}, Lcom/android/camera/data/LocalDataAdapter;->executeDeletion(Landroid/content/Context;)Z

    .line 2312
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView;->getCurrentId()I

    move-result v0

    .line 2313
    .local v0, "currentId":I
    invoke-direct {p0, v0}, Lcom/android/camera/CameraActivity;->updateActionBarMenu(I)V

    .line 2314
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mFilmStripListener:Lcom/android/camera/ui/FilmStripView$Listener;

    invoke-interface {v1, v0}, Lcom/android/camera/ui/FilmStripView$Listener;->onCurrentDataCentered(I)V

    goto :goto_0
.end method

.method private registerAutoTestReceiver()V
    .locals 2

    .prologue
    .line 1483
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.camera.autotest"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1484
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mAutoTestReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1485
    return-void
.end method

.method private registerSDcardMountedReceiver()V
    .locals 2

    .prologue
    .line 352
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 353
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mSDcardMountedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 357
    return-void
.end method

.method private removeData(I)V
    .locals 2
    .param p1, "dataID"    # I

    .prologue
    const/4 v1, 0x1

    .line 1313
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v0, p0, p1}, Lcom/android/camera/data/LocalDataAdapter;->removeData(Landroid/content/Context;I)V

    .line 1314
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/data/LocalDataAdapter;->getTotalNumber()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 1315
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->showUndoDeletionBar()V

    .line 1322
    :goto_0
    return-void

    .line 1319
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/CameraActivity;->mPendingDeletion:Z

    .line 1320
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->performDeletion()V

    goto :goto_0
.end method

.method private setMenuItemVisible(Landroid/view/Menu;IZ)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "itemId"    # I
    .param p3, "visible"    # Z

    .prologue
    .line 1187
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1188
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1189
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1190
    :cond_0
    return-void
.end method

.method private setModuleFromIndex(I)V
    .locals 4
    .param p1, "moduleIndex"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 2178
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraPhotoModuleRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2179
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraVideoModuleRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2180
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraPanoModuleRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2181
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraCaptureModuleRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2182
    iput p1, p0, Lcom/android/camera/CameraActivity;->mCurrentModuleIndex:I

    .line 2183
    packed-switch p1, :pswitch_data_0

    .line 2249
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPhotoModule:Lcom/android/camera/PhotoModule;

    if-nez v1, :cond_6

    .line 2250
    new-instance v1, Lcom/android/camera/PhotoModule;

    invoke-direct {v1}, Lcom/android/camera/PhotoModule;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mPhotoModule:Lcom/android/camera/PhotoModule;

    .line 2251
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPhotoModule:Lcom/android/camera/PhotoModule;

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCameraPhotoModuleRootView:Landroid/view/View;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/PhotoModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;)V

    .line 2255
    :goto_1
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPhotoModule:Lcom/android/camera/PhotoModule;

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    .line 2256
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraPhotoModuleRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2259
    :goto_2
    return-void

    .line 2185
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mVideoModule:Lcom/android/camera/VideoModule;

    if-nez v1, :cond_0

    .line 2186
    new-instance v1, Lcom/android/camera/VideoModule;

    invoke-direct {v1}, Lcom/android/camera/VideoModule;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mVideoModule:Lcom/android/camera/VideoModule;

    .line 2187
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mVideoModule:Lcom/android/camera/VideoModule;

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCameraVideoModuleRootView:Landroid/view/View;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/VideoModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;)V

    .line 2191
    :goto_3
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mVideoModule:Lcom/android/camera/VideoModule;

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    .line 2192
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraVideoModuleRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 2189
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mVideoModule:Lcom/android/camera/VideoModule;

    invoke-virtual {v1}, Lcom/android/camera/VideoModule;->reinit()V

    goto :goto_3

    .line 2196
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPhotoModule:Lcom/android/camera/PhotoModule;

    if-nez v1, :cond_1

    .line 2197
    new-instance v1, Lcom/android/camera/PhotoModule;

    invoke-direct {v1}, Lcom/android/camera/PhotoModule;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mPhotoModule:Lcom/android/camera/PhotoModule;

    .line 2198
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPhotoModule:Lcom/android/camera/PhotoModule;

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCameraPhotoModuleRootView:Landroid/view/View;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/PhotoModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;)V

    .line 2202
    :goto_4
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPhotoModule:Lcom/android/camera/PhotoModule;

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    .line 2203
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraPhotoModuleRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 2200
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPhotoModule:Lcom/android/camera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule;->reinit()V

    goto :goto_4

    .line 2207
    :pswitch_3
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPanoModule:Lcom/android/camera/WideAnglePanoramaModule;

    if-nez v1, :cond_2

    .line 2208
    new-instance v1, Lcom/android/camera/WideAnglePanoramaModule;

    invoke-direct {v1}, Lcom/android/camera/WideAnglePanoramaModule;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mPanoModule:Lcom/android/camera/WideAnglePanoramaModule;

    .line 2209
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPanoModule:Lcom/android/camera/WideAnglePanoramaModule;

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCameraPanoModuleRootView:Landroid/view/View;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/WideAnglePanoramaModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;)V

    .line 2211
    :cond_2
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPanoModule:Lcom/android/camera/WideAnglePanoramaModule;

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    .line 2212
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraPanoModuleRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 2216
    :pswitch_4
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCaptureModule:Lcom/android/camera/CaptureModule;

    if-nez v1, :cond_3

    .line 2217
    new-instance v1, Lcom/android/camera/CaptureModule;

    invoke-direct {v1}, Lcom/android/camera/CaptureModule;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCaptureModule:Lcom/android/camera/CaptureModule;

    .line 2218
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCaptureModule:Lcom/android/camera/CaptureModule;

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCameraCaptureModuleRootView:Landroid/view/View;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/CaptureModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;)V

    .line 2222
    :goto_5
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCaptureModule:Lcom/android/camera/CaptureModule;

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    .line 2223
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraCaptureModuleRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 2220
    :cond_3
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCaptureModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/CaptureModule;->reinit()V

    goto :goto_5

    .line 2227
    :pswitch_5
    move-object v0, p0

    .line 2228
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Lcom/android/camera/ui/PanoCaptureProcessView;->isSupportedStatic()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2229
    new-instance v1, Lcom/android/camera/CameraActivity$12;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/CameraActivity$12;-><init>(Lcom/android/camera/CameraActivity;Landroid/app/Activity;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2234
    iput v3, p0, Lcom/android/camera/CameraActivity;->mCurrentModuleIndex:I

    goto/16 :goto_0

    .line 2237
    :cond_4
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPano2Module:Lcom/android/camera/PanoCaptureModule;

    if-nez v1, :cond_5

    .line 2238
    new-instance v1, Lcom/android/camera/PanoCaptureModule;

    invoke-direct {v1}, Lcom/android/camera/PanoCaptureModule;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mPano2Module:Lcom/android/camera/PanoCaptureModule;

    .line 2239
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPano2Module:Lcom/android/camera/PanoCaptureModule;

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCameraPanoModuleRootView:Landroid/view/View;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/PanoCaptureModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;)V

    .line 2241
    :cond_5
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPano2Module:Lcom/android/camera/PanoCaptureModule;

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    .line 2242
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraPanoModuleRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 2253
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_6
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPhotoModule:Lcom/android/camera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule;->reinit()V

    goto/16 :goto_1

    .line 2183
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setNfcBeamPushUri(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mNfcPushUris:[Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 732
    return-void
.end method

.method private setPanoramaShareIntent(Landroid/net/Uri;)V
    .locals 2
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 1055
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareIntent:Landroid/content/Intent;

    .line 1057
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareIntent:Landroid/content/Intent;

    const-string v1, "application/vnd.google.panorama360+jpg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1058
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1059
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareActionProvider:Landroid/widget/ShareActionProvider;

    if-eqz v0, :cond_1

    .line 1060
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareActionProvider:Landroid/widget/ShareActionProvider;

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 1062
    :cond_1
    return-void
.end method

.method private setPreviewControlsVisibility(Z)V
    .locals 1
    .param p1, "showControls"    # Z

    .prologue
    .line 2429
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, p1}, Lcom/android/camera/CameraModule;->onPreviewFocusChanged(Z)V

    .line 2430
    return-void
.end method

.method private setRotationAnimation()V
    .locals 3

    .prologue
    .line 1690
    const/4 v0, 0x0

    .line 1691
    .local v0, "rotationAnimation":I
    const/4 v0, 0x1

    .line 1692
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1693
    .local v1, "win":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1694
    .local v2, "winParams":Landroid/view/WindowManager$LayoutParams;
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 1695
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1696
    return-void
.end method

.method private setStandardShareIntent(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 1018
    invoke-direct {p0, p2}, Lcom/android/camera/CameraActivity;->getShareIntentFromType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mStandardShareIntent:Landroid/content/Intent;

    .line 1019
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mStandardShareIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mStandardShareIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1021
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mStandardShareIntent:Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1022
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mStandardShareActionProvider:Landroid/widget/ShareActionProvider;

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mStandardShareActionProvider:Landroid/widget/ShareActionProvider;

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mStandardShareIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 1026
    :cond_0
    return-void
.end method

.method private setSystemBarsVisibility(ZZ)V
    .locals 10
    .param p1, "visible"    # Z
    .param p2, "hideLater"    # Z

    .prologue
    const/4 v7, 0x1

    .line 664
    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 666
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 667
    .local v2, "decorView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 668
    .local v1, "currentSystemUIVisibility":I
    const/16 v5, 0x400

    .line 669
    .local v5, "systemUIVisibility":I
    const/4 v4, 0x5

    .line 671
    .local v4, "systemUINotVisible":I
    if-eqz p1, :cond_0

    const/4 v4, 0x0

    .end local v4    # "systemUINotVisible":I
    :cond_0
    or-int v3, v5, v4

    .line 674
    .local v3, "newSystemUIVisibility":I
    if-eq v3, v1, :cond_1

    .line 675
    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 678
    :cond_1
    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    .line 679
    .local v0, "currentActionBarVisibility":Z
    if-eq p1, v0, :cond_2

    .line 680
    if-eqz p1, :cond_4

    .line 681
    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6}, Landroid/app/ActionBar;->show()V

    .line 685
    :goto_0
    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mOnActionBarVisibilityListener:Lcom/android/camera/CameraActivity$OnActionBarVisibilityListener;

    if-eqz v6, :cond_2

    .line 686
    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mOnActionBarVisibilityListener:Lcom/android/camera/CameraActivity$OnActionBarVisibilityListener;

    invoke-interface {v6, p1}, Lcom/android/camera/CameraActivity$OnActionBarVisibilityListener;->onActionBarVisibilityChanged(Z)V

    .line 691
    :cond_2
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 692
    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v8, 0xbb8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 694
    :cond_3
    return-void

    .line 683
    :cond_4
    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6}, Landroid/app/ActionBar;->hide()V

    goto :goto_0
.end method

.method private setWindowBrightness(F)V
    .locals 2
    .param p1, "brightness"    # F

    .prologue
    .line 1699
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1700
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1701
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1702
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1703
    return-void
.end method

.method private setupNfcBeamPush()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 710
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 711
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_0

    .line 728
    :goto_0
    return-void

    .line 715
    :cond_0
    sget-boolean v1, Lcom/android/camera/util/ApiHelper;->HAS_SET_BEAM_PUSH_URIS:Z

    if-nez v1, :cond_1

    .line 717
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/app/Activity;

    invoke-virtual {v0, v2, p0, v1}, Landroid/nfc/NfcAdapter;->setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;[Landroid/app/Activity;)V

    goto :goto_0

    .line 721
    :cond_1
    invoke-virtual {v0, v2, p0}, Landroid/nfc/NfcAdapter;->setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V

    .line 722
    new-instance v1, Lcom/android/camera/CameraActivity$5;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraActivity$5;-><init>(Lcom/android/camera/CameraActivity;)V

    invoke-virtual {v0, v1, p0}, Landroid/nfc/NfcAdapter;->setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private showOpenCameraErrorDialog()V
    .locals 1

    .prologue
    .line 2479
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    if-nez v0, :cond_0

    .line 2480
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->hasCriticalPermissions()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2481
    const v0, 0x7f0e0339

    invoke-static {p0, v0}, Lcom/android/camera/util/CameraUtil;->showErrorAndFinish(Landroid/app/Activity;I)V

    .line 2489
    :cond_0
    :goto_0
    return-void

    .line 2484
    :cond_1
    const v0, 0x7f0e0337

    invoke-static {p0, v0}, Lcom/android/camera/util/CameraUtil;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method private showPanoStitchingProgress()V
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPanoStitchingPanel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 702
    return-void
.end method

.method private unbindMediaSaveService()V
    .locals 1

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 1331
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1333
    :cond_0
    return-void
.end method

.method private updateActionBarMenu(I)V
    .locals 14
    .param p1, "dataID"    # I

    .prologue
    const v13, 0x7f0d00fa

    const v12, 0x7f0d00fb

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1092
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v7, p1}, Lcom/android/camera/data/LocalDataAdapter;->getLocalData(I)Lcom/android/camera/data/LocalData;

    move-result-object v0

    .line 1093
    .local v0, "currentData":Lcom/android/camera/data/LocalData;
    if-nez v0, :cond_1

    .line 1184
    :cond_0
    :goto_0
    return-void

    .line 1096
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getLocalDataType()I

    move-result v6

    .line 1098
    .local v6, "type":I
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    if-eqz v7, :cond_0

    .line 1102
    const/4 v5, 0x0

    .line 1104
    .local v5, "supported":I
    packed-switch v6, :pswitch_data_0

    .line 1129
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1130
    and-int/lit8 v5, v5, 0x1

    .line 1133
    :cond_2
    iget-object v10, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    const v11, 0x7f0d00fc

    and-int/lit8 v7, v5, 0x1

    if-eqz v7, :cond_8

    move v7, v8

    :goto_2
    invoke-direct {p0, v10, v11, v7}, Lcom/android/camera/CameraActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1135
    iget-object v10, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    const v11, 0x7f0d00ff

    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_9

    move v7, v8

    :goto_3
    invoke-direct {p0, v10, v11, v7}, Lcom/android/camera/CameraActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1137
    iget-object v10, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    const v11, 0x7f0d0100

    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_a

    move v7, v8

    :goto_4
    invoke-direct {p0, v10, v11, v7}, Lcom/android/camera/CameraActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1139
    iget-object v10, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    const v11, 0x7f0d0103

    and-int/lit8 v7, v5, 0x4

    if-eqz v7, :cond_b

    move v7, v8

    :goto_5
    invoke-direct {p0, v10, v11, v7}, Lcom/android/camera/CameraActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1141
    iget-object v10, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    const v11, 0x7f0d0101

    and-int/lit8 v7, v5, 0x8

    if-eqz v7, :cond_c

    move v7, v8

    :goto_6
    invoke-direct {p0, v10, v11, v7}, Lcom/android/camera/CameraActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1143
    iget-object v10, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    const v11, 0x7f0d0102

    and-int/lit8 v7, v5, 0x10

    if-eqz v7, :cond_d

    move v7, v8

    :goto_7
    invoke-direct {p0, v10, v11, v7}, Lcom/android/camera/CameraActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1145
    iget-object v10, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    const v11, 0x7f0d00fd

    and-int/lit8 v7, v5, 0x20

    if-eqz v7, :cond_e

    move v7, v8

    :goto_8
    invoke-direct {p0, v10, v11, v7}, Lcom/android/camera/CameraActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1147
    iget-object v10, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    const v11, 0x7f0d00fe

    and-int/lit8 v7, v5, 0x40

    if-eqz v7, :cond_f

    move v7, v8

    :goto_9
    invoke-direct {p0, v10, v11, v7}, Lcom/android/camera/CameraActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1150
    and-int/lit16 v7, v5, 0x80

    if-eqz v7, :cond_10

    move v4, v8

    .line 1151
    .local v4, "standardShare":Z
    :goto_a
    and-int/lit16 v7, v5, 0x100

    if-eqz v7, :cond_11

    move v3, v8

    .line 1152
    .local v3, "panoramaShare":Z
    :goto_b
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    invoke-direct {p0, v7, v12, v4}, Lcom/android/camera/CameraActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1153
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    invoke-direct {p0, v7, v13, v3}, Lcom/android/camera/CameraActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1155
    if-eqz v3, :cond_5

    .line 1157
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    invoke-interface {v7, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1158
    .local v1, "item":Landroid/view/MenuItem;
    if-eqz v1, :cond_3

    .line 1159
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1160
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0e030c

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1163
    :cond_3
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    invoke-interface {v7, v13}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1164
    if-eqz v1, :cond_4

    .line 1165
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1167
    :cond_4
    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/camera/CameraActivity;->setPanoramaShareIntent(Landroid/net/Uri;)V

    .line 1169
    .end local v1    # "item":Landroid/view/MenuItem;
    :cond_5
    if-eqz v4, :cond_7

    .line 1170
    if-nez v3, :cond_6

    .line 1171
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    invoke-interface {v7, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1172
    .restart local v1    # "item":Landroid/view/MenuItem;
    if-eqz v1, :cond_6

    .line 1173
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1174
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0e030a

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1177
    .end local v1    # "item":Landroid/view/MenuItem;
    :cond_6
    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getMimeType()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v7, v10}, Lcom/android/camera/CameraActivity;->setStandardShareIntent(Landroid/net/Uri;Ljava/lang/String;)V

    .line 1178
    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/camera/CameraActivity;->setNfcBeamPushUri(Landroid/net/Uri;)V

    .line 1181
    :cond_7
    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getLatLong()[D

    move-result-object v7

    if-eqz v7, :cond_12

    move v2, v8

    .line 1182
    .local v2, "itemHasLocation":Z
    :goto_c
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    const v10, 0x7f0d0104

    if-eqz v2, :cond_13

    and-int/lit16 v11, v5, 0x200

    if-eqz v11, :cond_13

    :goto_d
    invoke-direct {p0, v7, v10, v8}, Lcom/android/camera/CameraActivity;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    goto/16 :goto_0

    .line 1106
    .end local v2    # "itemHasLocation":Z
    .end local v3    # "panoramaShare":Z
    .end local v4    # "standardShare":Z
    :pswitch_0
    or-int/lit16 v5, v5, 0x2bf

    .line 1109
    goto/16 :goto_1

    .line 1111
    :pswitch_1
    or-int/lit16 v5, v5, 0x85

    .line 1112
    goto/16 :goto_1

    .line 1114
    :pswitch_2
    or-int/lit16 v5, v5, 0x2bf

    .line 1117
    goto/16 :goto_1

    .line 1119
    :pswitch_3
    or-int/lit16 v5, v5, 0x3bf

    .line 1123
    goto/16 :goto_1

    :cond_8
    move v7, v9

    .line 1133
    goto/16 :goto_2

    :cond_9
    move v7, v9

    .line 1135
    goto/16 :goto_3

    :cond_a
    move v7, v9

    .line 1137
    goto/16 :goto_4

    :cond_b
    move v7, v9

    .line 1139
    goto/16 :goto_5

    :cond_c
    move v7, v9

    .line 1141
    goto/16 :goto_6

    :cond_d
    move v7, v9

    .line 1143
    goto/16 :goto_7

    :cond_e
    move v7, v9

    .line 1145
    goto/16 :goto_8

    :cond_f
    move v7, v9

    .line 1147
    goto/16 :goto_9

    :cond_10
    move v4, v9

    .line 1150
    goto/16 :goto_a

    .restart local v4    # "standardShare":Z
    :cond_11
    move v3, v9

    .line 1151
    goto/16 :goto_b

    .restart local v3    # "panoramaShare":Z
    :cond_12
    move v2, v9

    .line 1181
    goto :goto_c

    .restart local v2    # "itemHasLocation":Z
    :cond_13
    move v8, v9

    .line 1182
    goto :goto_d

    .line 1104
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateStitchingProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mBottomProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 706
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1716
    const/4 v0, 0x0

    .line 1717
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/FilmStripView;->checkSendToModeView(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1718
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/FilmStripView;->sendToModeView(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1720
    :cond_0
    if-nez v0, :cond_1

    .line 1721
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1722
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_2

    .line 1727
    iget-boolean v1, p0, Lcom/android/camera/CameraActivity;->mPendingDeletion:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/CameraActivity;->mIsUndoingDeletion:Z

    if-nez v1, :cond_2

    .line 1728
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->performDeletion()V

    .line 1731
    :cond_2
    return v0
.end method

.method public enableDeveloperMenu()V
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraActivity;->mDeveloperMenuEnabled:Z

    .line 393
    return-void
.end method

.method public getAutoFocusTime()J
    .locals 2

    .prologue
    .line 2434
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mAutoFocusTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getCameraOpenErrorCallback()Lcom/android/camera/CameraManager$CameraOpenErrorCallback;
    .locals 1

    .prologue
    .line 2469
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCameraOpenErrorCallback:Lcom/android/camera/CameraManager$CameraOpenErrorCallback;

    return-object v0
.end method

.method public getCaptureStartTime()J
    .locals 2

    .prologue
    .line 2459
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getCurrentModule()Lcom/android/camera/CameraModule;
    .locals 1

    .prologue
    .line 2474
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    return-object v0
.end method

.method public getDataAdapter()Lcom/android/camera/data/LocalDataAdapter;
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    return-object v0
.end method

.method public getJpegCallbackFinishTime()J
    .locals 2

    .prologue
    .line 2454
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mJpegCallbackFinishTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getMediaSaveService()Lcom/android/camera/MediaSaveService;
    .locals 1

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMediaSaveService:Lcom/android/camera/MediaSaveService;

    return-object v0
.end method

.method public getPictureDisplayedToJpegCallbackTime()J
    .locals 2

    .prologue
    .line 2449
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 2097
    iget v0, p0, Lcom/android/camera/CameraActivity;->mResultCodeForTesting:I

    return v0
.end method

.method public getResultData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 2101
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mResultDataForTesting:Landroid/content/Intent;

    return-object v0
.end method

.method public getShutterLag()J
    .locals 2

    .prologue
    .line 2439
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mShutterLag:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getShutterToPictureDisplayedTime()J
    .locals 2

    .prologue
    .line 2444
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/PhotoModule;

    iget-wide v0, v0, Lcom/android/camera/PhotoModule;->mShutterToPictureDisplayedTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method protected getStorageSpaceBytes()J
    .locals 4

    .prologue
    .line 2020
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2021
    :try_start_0
    iget-wide v2, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceBytes:J

    monitor-exit v1

    return-wide v2

    .line 2022
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public gotoGallery()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 580
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getDataAdapter()Lcom/android/camera/data/LocalDataAdapter;

    move-result-object v0

    .line 581
    .local v0, "adapter":Lcom/android/camera/data/LocalDataAdapter;
    invoke-interface {v0, v7}, Lcom/android/camera/data/LocalDataAdapter;->getImageData(I)Lcom/android/camera/ui/FilmStripView$ImageData;

    move-result-object v3

    .line 582
    .local v3, "img":Lcom/android/camera/ui/FilmStripView$ImageData;
    if-nez v3, :cond_0

    .line 647
    :goto_0
    return-void

    .line 584
    :cond_0
    invoke-interface {v3}, Lcom/android/camera/ui/FilmStripView$ImageData;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    .line 585
    .local v5, "uri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v6, v6, Lcom/android/camera/PhotoModule;

    if-eqz v6, :cond_1

    .line 586
    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v6, Lcom/android/camera/PhotoModule;

    invoke-virtual {v6}, Lcom/android/camera/PhotoModule;->isRefocus()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 587
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 588
    .local v4, "intent":Landroid/content/Intent;
    const-class v6, Lcom/android/camera/RefocusActivity;

    invoke-virtual {v4, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 589
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 590
    invoke-virtual {p0, v4}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 594
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v6, v6, Lcom/android/camera/CaptureModule;

    if-eqz v6, :cond_3

    .line 595
    iget-object v6, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v6, Lcom/android/camera/CaptureModule;

    invoke-virtual {v6}, Lcom/android/camera/CaptureModule;->isRefocus()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 596
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 597
    .restart local v4    # "intent":Landroid/content/Intent;
    const-class v6, Lcom/android/camera/RefocusActivity;

    invoke-virtual {v4, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 598
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 599
    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 600
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 601
    const-string v6, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    :cond_2
    invoke-virtual {p0, v4, v7}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 608
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 610
    :try_start_0
    invoke-static {p0}, Lcom/android/camera/util/IntentHelper;->getGalleryIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    .line 611
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 613
    const-string v6, "from-snapcam"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 614
    const-string v6, "total-number"

    invoke-interface {v0}, Lcom/android/camera/data/LocalDataAdapter;->getTotalNumber()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 615
    const-string v6, "CAM_Activity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "expose number of photos:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Lcom/android/camera/data/LocalDataAdapter;->getTotalNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const-string v6, "showWhenLocked"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 617
    invoke-virtual {p0, v4}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 618
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 620
    .local v2, "ex":Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string v6, "CAM_Activity"

    const-string v7, "Gallery not found"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v4, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 622
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v6, "from-snapcam"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 623
    invoke-virtual {p0, v4}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 624
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 625
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v6, "CAM_Activity"

    const-string v7, "No Activity could be found to open image or video"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 627
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catch_2
    move-exception v1

    .line 628
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v6, "CAM_Activity"

    const-string v7, "Unsupportted uri"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 633
    .end local v1    # "e":Ljava/lang/SecurityException;
    .end local v2    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_4
    :try_start_2
    const-string v6, "CAM_Activity"

    const-string v7, "Gallery not found"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v4, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 635
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v6, "from-snapcam"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 636
    invoke-virtual {p0, v4}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_0

    .line 637
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_3
    move-exception v1

    .line 638
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v6, "CAM_Activity"

    const-string v7, "No Activity could be found to open image or video"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 641
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catch_4
    move-exception v1

    .line 642
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v6, "CAM_Activity"

    const-string v7, "Unsupportted uri"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public isCaptureIntent()Z
    .locals 2

    .prologue
    .line 1460
    const-string v0, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    .line 1461
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 1462
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1463
    :cond_0
    const/4 v0, 0x1

    .line 1465
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeveloperMenuEnabled()Z
    .locals 1

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mDeveloperMenuEnabled:Z

    return v0
.end method

.method public isForceReleaseCamera()Z
    .locals 1

    .prologue
    .line 2140
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mForceReleaseCamera:Z

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 2464
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/VideoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/VideoModule;

    .line 2465
    invoke-virtual {v0}, Lcom/android/camera/VideoModule;->isRecording()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecureCamera()Z
    .locals 1

    .prologue
    .line 2105
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    return v0
.end method

.method public launchEditor(Lcom/android/camera/data/LocalData;)V
    .locals 7
    .param p1, "data"    # Lcom/android/camera/data/LocalData;

    .prologue
    const/16 v6, 0x8e

    const/4 v5, 0x1

    .line 2265
    iget-boolean v2, p0, Lcom/android/camera/CameraActivity;->mIsEditActivityInProgress:Z

    if-nez v2, :cond_0

    .line 2266
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2267
    invoke-interface {p1}, Lcom/android/camera/data/LocalData;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/camera/data/LocalData;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 2268
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 2270
    .local v1, "intent":Landroid/content/Intent;
    const/16 v2, 0x8e

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2275
    :goto_0
    iput-boolean v5, p0, Lcom/android/camera/CameraActivity;->mIsEditActivityInProgress:Z

    .line 2277
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 2271
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 2272
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public launchTinyPlanetEditor(Lcom/android/camera/data/LocalData;)V
    .locals 4
    .param p1, "data"    # Lcom/android/camera/data/LocalData;

    .prologue
    .line 2287
    new-instance v1, Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-direct {v1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;-><init>()V

    .line 2288
    .local v1, "fragment":Lcom/android/camera/tinyplanet/TinyPlanetFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2289
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "uri"

    invoke-interface {p1}, Lcom/android/camera/data/LocalData;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2290
    const-string v2, "title"

    invoke-interface {p1}, Lcom/android/camera/data/LocalData;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2291
    invoke-virtual {v1, v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2292
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "tiny_planet"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2293
    return-void
.end method

.method public notifyNewMedia(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1290
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1291
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1292
    .local v1, "mimeType":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1293
    const-string v2, "CAM_Activity"

    const-string v3, "mimeType is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    :goto_0
    return-void

    .line 1296
    :cond_0
    const-string v2, "video/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1297
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.hardware.action.NEW_VIDEO"

    invoke-direct {v2, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1298
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v2, v0, p1}, Lcom/android/camera/data/LocalDataAdapter;->addNewVideo(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 1299
    :cond_1
    const-string v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1300
    invoke-static {p0, p1}, Lcom/android/camera/util/CameraUtil;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1301
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v2, v0, p1}, Lcom/android/camera/data/LocalDataAdapter;->addNewPhoto(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 1302
    :cond_2
    const-string v2, "application/stitching-preview"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1303
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v2, v0, p1}, Lcom/android/camera/data/LocalDataAdapter;->addNewPhoto(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 1304
    :cond_3
    const-string v2, "application/placeholder-image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1305
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v2, v0, p1}, Lcom/android/camera/data/LocalDataAdapter;->addNewPhoto(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 1307
    :cond_4
    const-string v2, "CAM_Activity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown new media with MIME type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1754
    const/16 v1, 0x8e

    if-ne p1, v1, :cond_1

    .line 1755
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mResetToPreviewOnResume:Z

    .line 1756
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mIsEditActivityInProgress:Z

    .line 1771
    :cond_0
    :goto_0
    return-void

    .line 1757
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 1758
    if-ne p2, v3, :cond_0

    .line 1759
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCaptureModule:Lcom/android/camera/CaptureModule;

    invoke-virtual {v1, v2}, Lcom/android/camera/CaptureModule;->setRefocusLastTaken(Z)V

    goto :goto_0

    .line 1761
    :cond_2
    sget v1, Lcom/android/camera/BestpictureActivity;->BESTPICTURE_ACTIVITY_CODE:I

    if-ne p1, v1, :cond_3

    .line 1762
    if-ne p2, v3, :cond_0

    .line 1763
    const-string v1, "thumbnail"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 1764
    .local v0, "jpeg":[B
    if-eqz v0, :cond_0

    .line 1765
    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->updateThumbnail([B)V

    goto :goto_0

    .line 1769
    .end local v0    # "jpeg":[B
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1996
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView;->inCameraFullscreen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1997
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView;->getController()Lcom/android/camera/ui/FilmStripView$Controller;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/FilmStripView$Controller;->goToFirstItem()V

    .line 1998
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->resizeForPreviewAspectRatio()V

    .line 2002
    :cond_0
    :goto_0
    return-void

    .line 1999
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2000
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 1966
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1967
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, p1}, Lcom/android/camera/CameraModule;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1968
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 26
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 1489
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1492
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/camera/CameraActivity;->setWindowBrightness(F)V

    .line 1494
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 1495
    .local v13, "intent":Landroid/content/Intent;
    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 1496
    .local v8, "action":Ljava/lang/String;
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 1497
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1498
    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.android.camera.CameraGestureActivity"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1499
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    .line 1504
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-eqz v2, :cond_2

    .line 1506
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v23

    .line 1507
    .local v23, "win":Landroid/view/Window;
    invoke-virtual/range {v23 .. v23}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v17

    .line 1508
    .local v17, "params":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v17

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x80000

    or-int/2addr v2, v4

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1509
    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.android.camera.CameraGestureActivity"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1510
    move-object/from16 v0, v17

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x200000

    or-int/2addr v2, v4

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1511
    const-string v2, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/PowerManager;

    .line 1512
    .local v18, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v4, "CAM_Activity"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1514
    const-string v2, "CAM_Activity"

    const-string v4, "acquire wake lock"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    .end local v18    # "pm":Landroid/os/PowerManager;
    :cond_1
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1519
    .end local v17    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v23    # "win":Landroid/view/Window;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-eqz v2, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->hasCriticalPermissions()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1687
    :cond_3
    :goto_1
    return-void

    .line 1501
    :cond_4
    const-string v2, "secure_camera"

    const/4 v4, 0x0

    invoke-virtual {v13, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    goto :goto_0

    .line 1523
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->isStartRequsetPermission()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1524
    const-string v2, "CAM_Activity"

    const-string v4, "onCreate: Missing critical permissions."

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->finish()V

    goto :goto_1

    .line 1529
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mCursor:Landroid/database/Cursor;

    .line 1531
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/util/GcamHelper;->init(Landroid/content/ContentResolver;)V

    .line 1533
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 1535
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v12

    .line 1536
    .local v12, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040003

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v12, v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    .line 1537
    .local v20, "rootLayout":Landroid/view/View;
    const v2, 0x7f0d0014

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mCameraRootFrame:Landroid/widget/FrameLayout;

    .line 1538
    const v2, 0x7f0d0015

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mCameraPhotoModuleRootView:Landroid/view/View;

    .line 1539
    const v2, 0x7f0d0016

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mCameraVideoModuleRootView:Landroid/view/View;

    .line 1540
    const v2, 0x7f0d0017

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mCameraPanoModuleRootView:Landroid/view/View;

    .line 1541
    const v2, 0x7f0d0018

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mCameraCaptureModuleRootView:Landroid/view/View;

    .line 1543
    const/4 v15, -0x1

    .line 1544
    .local v15, "moduleIndex":I
    const-string v2, "android.media.action.VIDEO_CAMERA"

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "android.media.action.VIDEO_CAPTURE"

    .line 1545
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1546
    :cond_7
    const/4 v15, 0x1

    .line 1570
    :cond_8
    :goto_2
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCamera2Mode()Z

    move-result v9

    .line 1571
    .local v9, "cam2on":Z
    if-eqz v9, :cond_a

    if-eqz v15, :cond_9

    const/4 v2, 0x1

    if-ne v15, v2, :cond_a

    .line 1573
    :cond_9
    const/4 v15, 0x5

    .line 1575
    :cond_a
    new-instance v2, Lcom/android/camera/CameraActivity$MyOrientationEventListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1}, Lcom/android/camera/CameraActivity$MyOrientationEventListener;-><init>(Lcom/android/camera/CameraActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mOrientationListener:Lcom/android/camera/CameraActivity$MyOrientationEventListener;

    .line 1576
    const v2, 0x7f040005

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraActivity;->setContentView(I)V

    .line 1577
    const v2, 0x7f0d002c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/FilmStripView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    .line 1578
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/camera/CameraActivity;->setModuleFromIndex(I)V

    .line 1580
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mActionBar:Landroid/app/ActionBar;

    .line 1581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 1583
    sget-boolean v2, Lcom/android/camera/util/ApiHelper;->HAS_ROTATION_ANIMATION:Z

    if-eqz v2, :cond_b

    .line 1584
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->setRotationAnimation()V

    .line 1587
    :cond_b
    new-instance v2, Lcom/android/camera/CameraActivity$MainHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4}, Lcom/android/camera/CameraActivity$MainHandler;-><init>(Lcom/android/camera/CameraActivity;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    .line 1589
    const v2, 0x7f0d002d

    .line 1590
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mAboveFilmstripControlLayout:Landroid/widget/FrameLayout;

    .line 1591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraActivity;->mAboveFilmstripControlLayout:Landroid/widget/FrameLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 1592
    invoke-static/range {p0 .. p0}, Lcom/android/camera/app/AppManagerFactory;->getInstance(Landroid/content/Context;)Lcom/android/camera/app/AppManagerFactory;

    move-result-object v2

    .line 1593
    invoke-virtual {v2}, Lcom/android/camera/app/AppManagerFactory;->getPanoramaStitchingManager()Lcom/android/camera/app/PanoramaStitchingManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mPanoramaManager:Lcom/android/camera/app/PanoramaStitchingManager;

    .line 1594
    invoke-static/range {p0 .. p0}, Lcom/android/camera/app/AppManagerFactory;->getInstance(Landroid/content/Context;)Lcom/android/camera/app/AppManagerFactory;

    move-result-object v2

    .line 1595
    invoke-virtual {v2}, Lcom/android/camera/app/AppManagerFactory;->getGcamProcessingManager()Lcom/android/camera/app/PlaceholderManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mPlaceholderManager:Lcom/android/camera/app/PlaceholderManager;

    .line 1596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraActivity;->mPanoramaManager:Lcom/android/camera/app/PanoramaStitchingManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraActivity;->mStitchingListener:Lcom/android/camera/ImageTaskManager$TaskListener;

    invoke-virtual {v2, v4}, Lcom/android/camera/app/PanoramaStitchingManager;->addTaskListener(Lcom/android/camera/ImageTaskManager$TaskListener;)V

    .line 1597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraActivity;->mPlaceholderManager:Lcom/android/camera/app/PlaceholderManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraActivity;->mPlaceholderListener:Lcom/android/camera/ImageTaskManager$TaskListener;

    invoke-virtual {v2, v4}, Lcom/android/camera/app/PlaceholderManager;->addTaskListener(Lcom/android/camera/ImageTaskManager$TaskListener;)V

    .line 1598
    const v2, 0x7f0d002e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mPanoStitchingPanel:Landroid/view/View;

    .line 1599
    const v2, 0x7f0d0030

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mBottomProgress:Landroid/widget/ProgressBar;

    .line 1600
    new-instance v2, Lcom/android/camera/data/CameraPreviewData;

    const/4 v4, -0x2

    const/4 v5, -0x2

    move-object/from16 v0, v20

    invoke-direct {v2, v0, v4, v5}, Lcom/android/camera/data/CameraPreviewData;-><init>(Landroid/view/View;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mCameraPreviewData:Lcom/android/camera/data/CameraPreviewData;

    .line 1604
    new-instance v2, Lcom/android/camera/data/FixedFirstDataAdapter;

    new-instance v4, Lcom/android/camera/data/CameraDataAdapter;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    .line 1606
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v4, v5}, Lcom/android/camera/data/CameraDataAdapter;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraActivity;->mCameraPreviewData:Lcom/android/camera/data/CameraPreviewData;

    invoke-direct {v2, v4, v5}, Lcom/android/camera/data/FixedFirstDataAdapter;-><init>(Lcom/android/camera/data/LocalDataAdapter;Lcom/android/camera/data/LocalData;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mWrappedDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    .line 1609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    .line 1610
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0065

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1609
    invoke-virtual {v2, v4}, Lcom/android/camera/ui/FilmStripView;->setViewGap(I)V

    .line 1611
    new-instance v2, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mPanoramaViewHelper:Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

    .line 1612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraActivity;->mPanoramaViewHelper:Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

    invoke-virtual {v2}, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->onCreate()V

    .line 1613
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraActivity;->mPanoramaViewHelper:Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

    invoke-virtual {v2, v4}, Lcom/android/camera/ui/FilmStripView;->setPanoramaViewHelper(Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;)V

    .line 1615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraActivity;->mFilmStripListener:Lcom/android/camera/ui/FilmStripView$Listener;

    invoke-virtual {v2, v4}, Lcom/android/camera/ui/FilmStripView;->setListener(Lcom/android/camera/ui/FilmStripView$Listener;)V

    .line 1617
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-nez v2, :cond_14

    .line 1618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraActivity;->mWrappedDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    .line 1619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-virtual {v2, v4}, Lcom/android/camera/ui/FilmStripView;->setDataAdapter(Lcom/android/camera/ui/FilmStripView$DataAdapter;)V

    .line 1620
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->isCaptureIntent()Z

    move-result v2

    if-nez v2, :cond_c

    .line 1621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/camera/data/LocalDataAdapter;->requestLoad(Landroid/content/ContentResolver;)V

    .line 1622
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/CameraActivity;->mDataRequested:Z

    .line 1654
    :cond_c
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->setupNfcBeamPush()V

    .line 1656
    new-instance v2, Lcom/android/camera/data/LocalMediaObserver;

    invoke-direct {v2}, Lcom/android/camera/data/LocalMediaObserver;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mLocalImagesObserver:Lcom/android/camera/data/LocalMediaObserver;

    .line 1657
    new-instance v2, Lcom/android/camera/data/LocalMediaObserver;

    invoke-direct {v2}, Lcom/android/camera/data/LocalMediaObserver;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraActivity;->mLocalVideosObserver:Lcom/android/camera/data/LocalMediaObserver;

    .line 1659
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/CameraActivity;->mLocalImagesObserver:Lcom/android/camera/data/LocalMediaObserver;

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1662
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/CameraActivity;->mLocalVideosObserver:Lcom/android/camera/data/LocalMediaObserver;

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1666
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 1667
    .local v19, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "pref_developer_menu_key"

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/CameraActivity;->mDeveloperMenuEnabled:Z

    .line 1669
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    .line 1670
    .local v10, "display":Landroid/view/Display;
    new-instance v21, Landroid/graphics/Point;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Point;-><init>()V

    .line 1671
    .local v21, "size":Landroid/graphics/Point;
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1672
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v22, v0

    .line 1673
    .local v22, "width":I
    move-object/from16 v0, v21

    iget v11, v0, Landroid/graphics/Point;->y:I

    .line 1675
    .local v11, "height":I
    move/from16 v0, v22

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1677
    .local v14, "lower":I
    mul-int/lit8 v2, v14, 0x7

    div-int/lit8 v16, v2, 0x64

    .line 1678
    .local v16, "offset":I
    div-int/lit8 v2, v14, 0x2

    add-int v2, v2, v16

    sput v2, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_1:I

    .line 1679
    div-int/lit8 v2, v14, 0x2

    sub-int v2, v2, v16

    sput v2, Lcom/android/camera/CameraActivity;->SETTING_LIST_WIDTH_2:I

    .line 1680
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->registerSDcardMountedReceiver()V

    .line 1682
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->isAutoTestEnabled()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/CameraActivity;->mAutoTestEnabled:Z

    .line 1684
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/CameraActivity;->mAutoTestEnabled:Z

    if-eqz v2, :cond_3

    .line 1685
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->registerAutoTestReceiver()V

    goto/16 :goto_1

    .line 1547
    .end local v9    # "cam2on":Z
    .end local v10    # "display":Landroid/view/Display;
    .end local v11    # "height":I
    .end local v14    # "lower":I
    .end local v16    # "offset":I
    .end local v19    # "prefs":Landroid/content/SharedPreferences;
    .end local v21    # "size":Landroid/graphics/Point;
    .end local v22    # "width":I
    :cond_d
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 1548
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 1549
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 1548
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1550
    :cond_e
    const/4 v15, 0x0

    .line 1551
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 1552
    .restart local v19    # "prefs":Landroid/content/SharedPreferences;
    const-string v2, "camera.startup_module"

    const/4 v4, -0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_8

    .line 1553
    invoke-static {}, Lcom/android/camera/util/GcamHelper;->hasGcamCapture()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1554
    const/4 v15, 0x4

    goto/16 :goto_2

    .line 1556
    .end local v19    # "prefs":Landroid/content/SharedPreferences;
    :cond_f
    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 1557
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1558
    :cond_10
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 1562
    :cond_11
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 1563
    .restart local v19    # "prefs":Landroid/content/SharedPreferences;
    const-string v2, "camera.startup_module"

    const/4 v4, -0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 1564
    const/4 v2, 0x4

    if-ne v15, v2, :cond_12

    .line 1565
    invoke-static {}, Lcom/android/camera/util/GcamHelper;->hasGcamCapture()Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    if-gez v15, :cond_8

    .line 1566
    :cond_13
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 1627
    .end local v19    # "prefs":Landroid/content/SharedPreferences;
    .restart local v9    # "cam2on":Z
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f040039

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1629
    .local v3, "v":Landroid/widget/ImageView;
    new-instance v2, Lcom/android/camera/CameraActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/camera/CameraActivity$10;-><init>(Lcom/android/camera/CameraActivity;)V

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1642
    new-instance v24, Lcom/android/camera/data/FixedLastDataAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraActivity;->mWrappedDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    move-object/from16 v25, v0

    new-instance v2, Lcom/android/camera/data/SimpleViewData;

    .line 1646
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 1647
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/data/SimpleViewData;-><init>(Landroid/view/View;IIII)V

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v2}, Lcom/android/camera/data/FixedLastDataAdapter;-><init>(Lcom/android/camera/data/LocalDataAdapter;Lcom/android/camera/data/LocalData;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    .line 1650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v2}, Lcom/android/camera/data/LocalDataAdapter;->flush()V

    .line 1651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-virtual {v2, v4}, Lcom/android/camera/ui/FilmStripView;->setDataAdapter(Lcom/android/camera/ui/FilmStripView$DataAdapter;)V

    goto/16 :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1338
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1339
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v2, 0x7f110000

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1340
    iput-object p1, p0, Lcom/android/camera/CameraActivity;->mActionBarMenu:Landroid/view/Menu;

    .line 1343
    const v2, 0x7f0d00fb

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1344
    .local v1, "item":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v2

    check-cast v2, Landroid/widget/ShareActionProvider;

    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mStandardShareActionProvider:Landroid/widget/ShareActionProvider;

    .line 1345
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mStandardShareActionProvider:Landroid/widget/ShareActionProvider;

    const-string v3, "standard_share_history.xml"

    invoke-virtual {v2, v3}, Landroid/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 1346
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mStandardShareIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 1347
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mStandardShareActionProvider:Landroid/widget/ShareActionProvider;

    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mStandardShareIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 1351
    :cond_0
    const v2, 0x7f0d00fa

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1352
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v2

    check-cast v2, Landroid/widget/ShareActionProvider;

    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareActionProvider:Landroid/widget/ShareActionProvider;

    .line 1353
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareActionProvider:Landroid/widget/ShareActionProvider;

    const-string v3, "panorama_share_history.xml"

    invoke-virtual {v2, v3}, Landroid/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 1354
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareIntent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    .line 1355
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareActionProvider:Landroid/widget/ShareActionProvider;

    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 1358
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mStandardShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v2, p0}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 1359
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mPanoramaShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v2, p0}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 1361
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1943
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1944
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1945
    const-string v0, "CAM_Activity"

    const-string v1, "wake lock release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 1948
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mLocalImagesObserver:Lcom/android/camera/data/LocalMediaObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1949
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mLocalVideosObserver:Lcom/android/camera/data/LocalMediaObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1950
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mSDcardMountedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1952
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1953
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mCursor:Landroid/database/Cursor;

    .line 1955
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mAutoTestEnabled:Z

    if-eqz v0, :cond_2

    .line 1956
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mAutoTestReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1958
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    if-eqz v0, :cond_3

    .line 1959
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onDestroy()V

    .line 1961
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1962
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1972
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView;->inCameraFullscreen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1973
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v1, p1, p2}, Lcom/android/camera/CameraModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1983
    :cond_0
    :goto_0
    return v0

    .line 1977
    :cond_1
    const/16 v1, 0x54

    if-eq p1, v1, :cond_0

    const/16 v1, 0x52

    if-eq p1, v1, :cond_0

    .line 1983
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1988
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FilmStripView;->inCameraFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/CameraModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1989
    const/4 v0, 0x1

    .line 1991
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuVisibilityChanged(Z)V
    .locals 4
    .param p1, "isVisible"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1067
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1068
    if-nez p1, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1071
    :cond_0
    return-void
.end method

.method public onModuleSelected(I)V
    .locals 5
    .param p1, "moduleIndex"    # I

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 2145
    invoke-static {}, Lcom/android/camera/util/PersistUtil;->getCamera2Mode()Z

    move-result v0

    .line 2146
    .local v0, "cam2on":Z
    if-eq p1, v4, :cond_0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/CameraActivity;->mForceReleaseCamera:Z

    .line 2148
    iget-boolean v2, p0, Lcom/android/camera/CameraActivity;->mForceReleaseCamera:Z

    if-eqz v2, :cond_1

    .line 2149
    const/4 p1, 0x5

    .line 2151
    :cond_1
    iget v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModuleIndex:I

    if-ne v2, p1, :cond_3

    .line 2152
    iget v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModuleIndex:I

    if-eq v2, v4, :cond_3

    .line 2171
    :goto_1
    return-void

    :cond_2
    move v2, v3

    .line 2146
    goto :goto_0

    .line 2156
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->keep()V

    .line 2157
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-direct {p0, v2}, Lcom/android/camera/CameraActivity;->closeModule(Lcom/android/camera/CameraModule;)V

    .line 2158
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity;->setModuleFromIndex(I)V

    .line 2160
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-direct {p0, v2}, Lcom/android/camera/CameraActivity;->openModule(Lcom/android/camera/CameraModule;)V

    .line 2161
    iput-boolean v3, p0, Lcom/android/camera/CameraActivity;->mForceReleaseCamera:Z

    .line 2162
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    iget v3, p0, Lcom/android/camera/CameraActivity;->mLastRawOrientation:I

    invoke-interface {v2, v3}, Lcom/android/camera/CameraModule;->onOrientationChanged(I)V

    .line 2163
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mMediaSaveService:Lcom/android/camera/MediaSaveService;

    if-eqz v2, :cond_4

    .line 2164
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    iget-object v3, p0, Lcom/android/camera/CameraActivity;->mMediaSaveService:Lcom/android/camera/MediaSaveService;

    invoke-interface {v2, v3}, Lcom/android/camera/CameraModule;->onMediaSaveServiceConnected(Lcom/android/camera/MediaSaveService;)V

    .line 2169
    :cond_4
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2170
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "camera.startup_module"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/16 v13, 0x8e

    const/4 v1, 0x0

    const/4 v12, 0x1

    .line 1366
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FilmStripView;->getCurrentId()I

    move-result v7

    .line 1367
    .local v7, "currentDataId":I
    if-gez v7, :cond_0

    .line 1455
    :goto_0
    return v1

    .line 1370
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v2, v7}, Lcom/android/camera/data/LocalDataAdapter;->getLocalData(I)Lcom/android/camera/data/LocalData;

    move-result-object v11

    .line 1373
    .local v11, "localData":Lcom/android/camera/data/LocalData;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1455
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 1377
    :sswitch_0
    :try_start_0
    invoke-static {p0}, Lcom/android/camera/util/IntentHelper;->getGalleryIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v12

    .line 1378
    goto :goto_0

    .line 1379
    :catch_0
    move-exception v8

    .line 1380
    .local v8, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "CAM_Activity"

    const-string v2, "Failed to launch gallery activity, closing"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->finish()V

    .line 1384
    .end local v8    # "e":Landroid/content/ActivityNotFoundException;
    :sswitch_1
    const-string v1, "Camera"

    const-string v2, "Delete"

    .line 1386
    invoke-direct {p0, v7}, Lcom/android/camera/CameraActivity;->fileNameFromDataID(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/util/UsageStatistics;->hashFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1384
    invoke-static/range {v1 .. v6}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 1387
    invoke-direct {p0, v7}, Lcom/android/camera/CameraActivity;->removeData(I)V

    move v1, v12

    .line 1388
    goto :goto_0

    .line 1390
    :sswitch_2
    const-string v1, "Camera"

    const-string v2, "Edit"

    .line 1392
    invoke-direct {p0, v7}, Lcom/android/camera/CameraActivity;->fileNameFromDataID(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/util/UsageStatistics;->hashFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1390
    invoke-static/range {v1 .. v6}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 1393
    invoke-virtual {p0, v11}, Lcom/android/camera/CameraActivity;->launchEditor(Lcom/android/camera/data/LocalData;)V

    move v1, v12

    .line 1394
    goto :goto_0

    .line 1397
    :sswitch_3
    new-instance v9, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.TRIM"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1398
    .local v9, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    .line 1399
    invoke-virtual {v2}, Lcom/android/camera/ui/FilmStripView;->getCurrentId()I

    move-result v2

    .line 1398
    invoke-interface {v1, v2}, Lcom/android/camera/data/LocalDataAdapter;->getLocalData(I)Lcom/android/camera/data/LocalData;

    move-result-object v0

    .line 1400
    .local v0, "currentData":Lcom/android/camera/data/LocalData;
    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1402
    const-string v1, "media-item-path"

    invoke-interface {v0}, Lcom/android/camera/data/LocalData;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1403
    invoke-virtual {p0, v9, v13}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v12

    .line 1404
    goto :goto_0

    .line 1407
    .end local v0    # "currentData":Lcom/android/camera/data/LocalData;
    .end local v9    # "intent":Landroid/content/Intent;
    :sswitch_4
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v11, p0, v2, v7, v1}, Lcom/android/camera/data/LocalData;->rotate90Degrees(Landroid/content/Context;Lcom/android/camera/data/LocalDataAdapter;IZ)Z

    move v1, v12

    .line 1408
    goto :goto_0

    .line 1410
    :sswitch_5
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v11, p0, v1, v7, v12}, Lcom/android/camera/data/LocalData;->rotate90Degrees(Landroid/content/Context;Lcom/android/camera/data/LocalDataAdapter;IZ)Z

    move v1, v12

    .line 1411
    goto/16 :goto_0

    .line 1413
    :sswitch_6
    const-string v1, "Camera"

    const-string v2, "Crop"

    .line 1415
    invoke-direct {p0, v7}, Lcom/android/camera/CameraActivity;->fileNameFromDataID(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/util/UsageStatistics;->hashFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1413
    invoke-static/range {v1 .. v6}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 1416
    new-instance v9, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1417
    .restart local v9    # "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/camera/crop/CropActivity;

    invoke-virtual {v9, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1418
    invoke-interface {v11}, Lcom/android/camera/data/LocalData;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v11}, Lcom/android/camera/data/LocalData;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1419
    invoke-virtual {v1, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1420
    invoke-virtual {p0, v9, v13}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v12

    .line 1421
    goto/16 :goto_0

    .line 1424
    .end local v9    # "intent":Landroid/content/Intent;
    :sswitch_7
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ATTACH_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1425
    invoke-interface {v11}, Lcom/android/camera/data/LocalData;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    .line 1426
    invoke-interface {v11}, Lcom/android/camera/data/LocalData;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 1425
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1427
    invoke-virtual {v1, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v9

    .line 1428
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string v1, "mimeType"

    invoke-virtual {v9}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1429
    const v1, 0x7f0e0317

    .line 1430
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1429
    invoke-static {v9, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1, v13}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v12

    .line 1431
    goto/16 :goto_0

    .line 1434
    .end local v9    # "intent":Landroid/content/Intent;
    :sswitch_8
    new-instance v2, Lcom/android/camera/CameraActivity$8;

    invoke-direct {v2, p0, v11}, Lcom/android/camera/CameraActivity$8;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/data/LocalData;)V

    new-array v1, v1, [Ljava/lang/Void;

    .line 1446
    invoke-virtual {v2, v1}, Lcom/android/camera/CameraActivity$8;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v1, v12

    .line 1447
    goto/16 :goto_0

    .line 1449
    :sswitch_9
    invoke-interface {v11}, Lcom/android/camera/data/LocalData;->getLatLong()[D

    move-result-object v10

    .line 1450
    .local v10, "latLong":[D
    if-eqz v10, :cond_1

    .line 1451
    invoke-static {p0, v10}, Lcom/android/camera/util/CameraUtil;->showOnMap(Landroid/app/Activity;[D)V

    :cond_1
    move v1, v12

    .line 1453
    goto/16 :goto_0

    .line 1373
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0d00fc -> :sswitch_1
        0x7f0d00fd -> :sswitch_2
        0x7f0d00fe -> :sswitch_3
        0x7f0d00ff -> :sswitch_4
        0x7f0d0100 -> :sswitch_5
        0x7f0d0101 -> :sswitch_6
        0x7f0d0102 -> :sswitch_7
        0x7f0d0103 -> :sswitch_8
        0x7f0d0104 -> :sswitch_9
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1736
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->hasCriticalPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1737
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1750
    :goto_0
    return-void

    .line 1741
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->performDeletion()V

    .line 1742
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mOrientationListener:Lcom/android/camera/CameraActivity$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity$MyOrientationEventListener;->disable()V

    .line 1743
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onPauseBeforeSuper()V

    .line 1744
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1745
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onPauseAfterSuper()V

    .line 1747
    iput-boolean v1, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    .line 1748
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mLocalImagesObserver:Lcom/android/camera/data/LocalMediaObserver;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/LocalMediaObserver;->setActivityPaused(Z)V

    .line 1749
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mLocalVideosObserver:Lcom/android/camera/data/LocalMediaObserver;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/LocalMediaObserver;->setActivityPaused(Z)V

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v2, 0x0

    .line 2122
    packed-switch p1, :pswitch_data_0

    .line 2137
    :goto_0
    return-void

    .line 2125
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, v2}, Lcom/android/camera/CameraModule;->waitingLocationPermissionResult(Z)V

    .line 2126
    array-length v0, p3

    if-lez v0, :cond_0

    aget v0, p3, v2

    if-nez v0, :cond_0

    .line 2128
    const-string v0, "CAM_Activity"

    const-string v1, "Location permission is granted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/CameraModule;->enableRecordingLocation(Z)V

    goto :goto_0

    .line 2131
    :cond_0
    const-string v0, "CAM_Activity"

    const-string v1, "Location permission is denied"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, v2}, Lcom/android/camera/CameraModule;->enableRecordingLocation(Z)V

    goto :goto_0

    .line 2122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1845
    iget-boolean v7, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-eqz v7, :cond_0

    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->hasCriticalPermissions()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1846
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1847
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->showOpenCameraErrorDialog()V

    .line 1919
    :goto_0
    return-void

    .line 1850
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->isStartRequsetPermission()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1851
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1852
    const-string v7, "CAM_Activity"

    const-string v8, "onResume: Missing critical permissions."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->finish()V

    goto :goto_0

    .line 1856
    :cond_1
    invoke-static {}, Lcom/android/camera/SettingsManager;->getInstance()Lcom/android/camera/SettingsManager;

    move-result-object v6

    .line 1857
    .local v6, "settingsManager":Lcom/android/camera/SettingsManager;
    if-nez v6, :cond_2

    .line 1858
    invoke-static {p0}, Lcom/android/camera/SettingsManager;->createInstance(Landroid/content/Context;)Lcom/android/camera/SettingsManager;

    .line 1862
    :cond_2
    invoke-virtual {p0, v10}, Lcom/android/camera/CameraActivity;->setSystemBarsVisibility(Z)V

    .line 1864
    const-string v7, "Camera"

    const-string v8, "Foregrounded"

    .line 1865
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    .line 1864
    invoke-static {v7, v8, v9}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mOrientationListener:Lcom/android/camera/CameraActivity$MyOrientationEventListener;

    invoke-virtual {v7}, Lcom/android/camera/CameraActivity$MyOrientationEventListener;->enable()V

    .line 1868
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v7}, Lcom/android/camera/CameraModule;->onResumeBeforeSuper()V

    .line 1869
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1870
    iput-boolean v10, p0, Lcom/android/camera/CameraActivity;->mPaused:Z

    .line 1871
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v7}, Lcom/android/camera/CameraModule;->onResumeAfterSuper()V

    .line 1873
    invoke-virtual {p0, v11}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 1875
    iget-boolean v7, p0, Lcom/android/camera/CameraActivity;->mResetToPreviewOnResume:Z

    if-eqz v7, :cond_3

    .line 1877
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v7}, Lcom/android/camera/ui/FilmStripView;->getController()Lcom/android/camera/ui/FilmStripView$Controller;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/camera/ui/FilmStripView$Controller;->goToFirstItem()V

    .line 1882
    :cond_3
    iput-boolean v11, p0, Lcom/android/camera/CameraActivity;->mResetToPreviewOnResume:Z

    .line 1884
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mLocalVideosObserver:Lcom/android/camera/data/LocalMediaObserver;

    invoke-virtual {v7}, Lcom/android/camera/data/LocalMediaObserver;->isMediaDataChangedDuringPause()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mLocalImagesObserver:Lcom/android/camera/data/LocalMediaObserver;

    .line 1885
    invoke-virtual {v7}, Lcom/android/camera/data/LocalMediaObserver;->isMediaDataChangedDuringPause()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1886
    :cond_4
    iget-boolean v7, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-nez v7, :cond_6

    .line 1889
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/camera/data/LocalDataAdapter;->requestLoad(Landroid/content/ContentResolver;)V

    .line 1890
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/camera/CameraActivity;->mThumbnailDrawable:Lcom/android/camera/CameraActivity$CircularDrawable;

    .line 1909
    :cond_5
    :goto_1
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mLocalImagesObserver:Lcom/android/camera/data/LocalMediaObserver;

    invoke-virtual {v7, v10}, Lcom/android/camera/data/LocalMediaObserver;->setActivityPaused(Z)V

    .line 1910
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mLocalVideosObserver:Lcom/android/camera/data/LocalMediaObserver;

    invoke-virtual {v7, v10}, Lcom/android/camera/data/LocalMediaObserver;->setActivityPaused(Z)V

    .line 1915
    const-string v7, "CAM_Activity"

    const-string v8, "send the turn off Flashlight broadcast"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    new-instance v2, Landroid/content/Intent;

    const-string v7, "org.codeaurora.snapcam.action.CLOSE_FLASHLIGHT"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1917
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "camera_led"

    invoke-virtual {v2, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1918
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1894
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_6
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v7}, Lcom/android/camera/data/LocalDataAdapter;->getTotalNumber()I

    move-result v4

    .line 1895
    .local v4, "num":I
    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_8

    .line 1896
    invoke-direct {p0, v1}, Lcom/android/camera/CameraActivity;->fileNameFromDataID(I)Ljava/lang/String;

    move-result-object v3

    .line 1897
    .local v3, "name":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v7, v1}, Lcom/android/camera/data/LocalDataAdapter;->getLocalData(I)Lcom/android/camera/data/LocalData;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/camera/data/LocalData;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 1898
    .local v5, "path":Ljava/lang/String;
    if-eqz v5, :cond_7

    .line 1899
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1900
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_7

    .line 1901
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-interface {v7, p0, v1}, Lcom/android/camera/data/LocalDataAdapter;->removeData(Landroid/content/Context;I)V

    .line 1895
    .end local v0    # "file":Ljava/io/File;
    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1905
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "path":Ljava/lang/String;
    :cond_8
    iget-object v7, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    iget-object v8, p0, Lcom/android/camera/CameraActivity;->mDataAdapter:Lcom/android/camera/data/LocalDataAdapter;

    invoke-virtual {v7, v8}, Lcom/android/camera/ui/FilmStripView;->setDataAdapter(Lcom/android/camera/ui/FilmStripView$DataAdapter;)V

    goto :goto_1
.end method

.method public onShareTargetSelected(Landroid/widget/ShareActionProvider;Landroid/content/Intent;)Z
    .locals 7
    .param p1, "shareActionProvider"    # Landroid/widget/ShareActionProvider;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1075
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FilmStripView;->getCurrentId()I

    move-result v0

    .line 1076
    .local v0, "currentDataId":I
    if-gez v0, :cond_0

    .line 1077
    const/4 v1, 0x0

    .line 1082
    :goto_0
    return v1

    .line 1079
    :cond_0
    const-string v1, "Camera"

    const-string v2, "Share"

    .line 1080
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 1081
    invoke-direct {p0, v0}, Lcom/android/camera/CameraActivity;->fileNameFromDataID(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/util/UsageStatistics;->hashFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1079
    invoke-static/range {v1 .. v6}, Lcom/android/camera/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 1082
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onShowSwitcherPopup()V
    .locals 1

    .prologue
    .line 2395
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onShowSwitcherPopup()V

    .line 2396
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 1923
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1924
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->hasCriticalPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1929
    :goto_0
    return-void

    .line 1927
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->bindMediaSaveService()V

    .line 1928
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPanoramaViewHelper:Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->onStart()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1933
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1934
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity;->mSecureCamera:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->hasCriticalPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1939
    :goto_0
    return-void

    .line 1937
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mPanoramaViewHelper:Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->onStop()V

    .line 1938
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->unbindMediaSaveService()V

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 1708
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 1709
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    if-eqz v0, :cond_0

    .line 1710
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0}, Lcom/android/camera/CameraModule;->onUserInteraction()V

    .line 1712
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "focus"    # Z

    .prologue
    .line 1777
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->setSystemBarsVisibility(Z)V

    .line 1778
    :cond_0
    return-void
.end method

.method public requestLocationPermission()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2109
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2111
    const-string v0, "CAM_Activity"

    const-string v1, "Request Location permission"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v0, v3}, Lcom/android/camera/CameraModule;->waitingLocationPermissionResult(Z)V

    .line 2113
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0, v3}, Lcom/android/camera/CameraActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 2117
    :cond_0
    return-void
.end method

.method public setOnActionBarVisibilityListener(Lcom/android/camera/CameraActivity$OnActionBarVisibilityListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/CameraActivity$OnActionBarVisibilityListener;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/camera/CameraActivity;->mOnActionBarVisibilityListener:Lcom/android/camera/CameraActivity$OnActionBarVisibilityListener;

    .line 381
    return-void
.end method

.method public setPreviewGestures(Lcom/android/camera/PreviewGestures;)V
    .locals 1
    .param p1, "previewGestures"    # Lcom/android/camera/PreviewGestures;

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mFilmStripView:Lcom/android/camera/ui/FilmStripView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FilmStripView;->setPreviewGestures(Lcom/android/camera/PreviewGestures;)V

    .line 2006
    return-void
.end method

.method protected setResultEx(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    .line 2086
    iput p1, p0, Lcom/android/camera/CameraActivity;->mResultCodeForTesting:I

    .line 2087
    invoke-virtual {p0, p1}, Lcom/android/camera/CameraActivity;->setResult(I)V

    .line 2088
    return-void
.end method

.method protected setResultEx(ILandroid/content/Intent;)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 2091
    iput p1, p0, Lcom/android/camera/CameraActivity;->mResultCodeForTesting:I

    .line 2092
    iput-object p2, p0, Lcom/android/camera/CameraActivity;->mResultDataForTesting:Landroid/content/Intent;

    .line 2093
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 2094
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const/4 v0, 0x1

    .line 2405
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2406
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraPreviewData:Lcom/android/camera/data/CameraPreviewData;

    invoke-virtual {v1, v0}, Lcom/android/camera/data/CameraPreviewData;->lockPreview(Z)V

    .line 2410
    :goto_0
    return-void

    .line 2408
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCameraPreviewData:Lcom/android/camera/data/CameraPreviewData;

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/camera/data/CameraPreviewData;->lockPreview(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setSystemBarsVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 655
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/CameraActivity;->setSystemBarsVisibility(ZZ)V

    .line 656
    return-void
.end method

.method public showUndoDeletionBar()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2318
    iget-boolean v2, p0, Lcom/android/camera/CameraActivity;->mPendingDeletion:Z

    if-eqz v2, :cond_0

    .line 2319
    invoke-direct {p0}, Lcom/android/camera/CameraActivity;->performDeletion()V

    .line 2321
    :cond_0
    const-string v2, "CAM_Activity"

    const-string v3, "showing undo bar"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    iput-boolean v5, p0, Lcom/android/camera/CameraActivity;->mPendingDeletion:Z

    .line 2323
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 2324
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040044

    iget-object v4, p0, Lcom/android/camera/CameraActivity;->mAboveFilmstripControlLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2326
    .local v1, "v":Landroid/view/ViewGroup;
    const v2, 0x7f0d00f3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    .line 2327
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    const v3, 0x7f0d00f4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2328
    .local v0, "button":Landroid/view/View;
    new-instance v2, Lcom/android/camera/CameraActivity$13;

    invoke-direct {v2, p0}, Lcom/android/camera/CameraActivity$13;-><init>(Lcom/android/camera/CameraActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2337
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 2340
    new-instance v2, Lcom/android/camera/CameraActivity$14;

    invoke-direct {v2, p0}, Lcom/android/camera/CameraActivity$14;-><init>(Lcom/android/camera/CameraActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2352
    .end local v0    # "button":Landroid/view/View;
    .end local v1    # "v":Landroid/view/ViewGroup;
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2353
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2354
    iget-object v2, p0, Lcom/android/camera/CameraActivity;->mUndoDeletionBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2355
    return-void
.end method

.method protected updateStorageHint(J)V
    .locals 5
    .param p1, "storageSpace"    # J

    .prologue
    .line 2056
    const/4 v0, 0x0

    .line 2057
    .local v0, "message":Ljava/lang/String;
    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-nez v1, :cond_2

    .line 2058
    const v1, 0x7f0e033c

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2072
    :cond_0
    :goto_0
    if-eqz v0, :cond_6

    .line 2073
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-nez v1, :cond_5

    .line 2074
    invoke-static {p0, v0}, Lcom/android/camera/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/android/camera/OnScreenHint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mStorageHint:Lcom/android/camera/OnScreenHint;

    .line 2078
    :goto_1
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/OnScreenHint;->show()V

    .line 2083
    :cond_1
    :goto_2
    return-void

    .line 2059
    :cond_2
    const-wide/16 v2, -0x2

    cmp-long v1, p1, v2

    if-nez v1, :cond_3

    .line 2060
    const v1, 0x7f0e033d

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2061
    :cond_3
    const-wide/16 v2, -0x3

    cmp-long v1, p1, v2

    if-nez v1, :cond_4

    .line 2064
    invoke-static {}, Lcom/android/camera/Storage;->isSaveSDCard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2065
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    invoke-interface {v1}, Lcom/android/camera/CameraModule;->switchInternalStorage()V

    goto :goto_0

    .line 2068
    :cond_4
    const-wide/32 v2, 0x3c00000

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    .line 2069
    const v1, 0x7f0e03c1

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2076
    :cond_5
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1, v0}, Lcom/android/camera/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2079
    :cond_6
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v1, :cond_1

    .line 2080
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/OnScreenHint;->cancel()V

    .line 2081
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/CameraActivity;->mStorageHint:Lcom/android/camera/OnScreenHint;

    goto :goto_2
.end method

.method protected updateStorageSpace()J
    .locals 4

    .prologue
    .line 2009
    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2010
    :try_start_0
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceBytes:J

    .line 2011
    invoke-static {}, Lcom/android/camera/Storage;->switchSavePath()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2012
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceBytes:J

    .line 2013
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2015
    :cond_0
    iget-wide v2, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceBytes:J

    monitor-exit v1

    return-wide v2

    .line 2016
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected updateStorageSpaceAndHint()V
    .locals 2

    .prologue
    .line 2026
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->updateStorageSpace()J

    .line 2027
    iget-wide v0, p0, Lcom/android/camera/CameraActivity;->mStorageSpaceBytes:J

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CameraActivity;->updateStorageHint(J)V

    .line 2028
    return-void
.end method

.method protected updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;

    .prologue
    .line 2035
    new-instance v0, Lcom/android/camera/CameraActivity$11;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/CameraActivity$11;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 2052
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraActivity$11;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2053
    return-void
.end method

.method public updateThumbnail(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 761
    if-nez p1, :cond_1

    .line 783
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    new-instance v0, Lcom/android/camera/CameraActivity$CircularDrawable;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/CameraActivity$CircularDrawable;-><init>(Lcom/android/camera/CameraActivity;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnailDrawable:Lcom/android/camera/CameraActivity$CircularDrawable;

    .line 763
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mThumbnailDrawable:Lcom/android/camera/CameraActivity$CircularDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 765
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v0

    if-nez v0, :cond_2

    .line 766
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 770
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/CaptureModule;

    if-eqz v0, :cond_4

    .line 771
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->isRefocus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 772
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 774
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 778
    :cond_4
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateThumbnail(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "thumbnail"    # Landroid/widget/ImageView;

    .prologue
    const/4 v2, 0x0

    .line 786
    iput-object p1, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    .line 787
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 808
    :cond_0
    :goto_0
    return-void

    .line 788
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnailDrawable:Lcom/android/camera/CameraActivity$CircularDrawable;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/CameraActivity;->mThumbnailDrawable:Lcom/android/camera/CameraActivity$CircularDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 790
    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/CameraActivity;->isCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 791
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 795
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/CaptureModule;

    if-eqz v0, :cond_4

    .line 796
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    check-cast v0, Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/CaptureModule;->isRefocus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 797
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 799
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 803
    :cond_4
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateThumbnail(Z)V
    .locals 3
    .param p1, "videoOnly"    # Z

    .prologue
    .line 813
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/VideoModule;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mCurrentModule:Lcom/android/camera/CameraModule;

    instance-of v0, v0, Lcom/android/camera/CaptureModule;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 815
    :cond_0
    new-instance v0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;-><init>(Lcom/android/camera/CameraActivity;[BZ)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 817
    :cond_1
    return-void
.end method

.method public updateThumbnail([B)V
    .locals 2
    .param p1, "jpegData"    # [B

    .prologue
    const/4 v1, 0x1

    .line 755
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mUpdateThumbnailTask:Lcom/android/camera/CameraActivity$UpdateThumbnailTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mUpdateThumbnailTask:Lcom/android/camera/CameraActivity$UpdateThumbnailTask;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->cancel(Z)Z

    .line 756
    :cond_0
    new-instance v0, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;-><init>(Lcom/android/camera/CameraActivity;[BZ)V

    iput-object v0, p0, Lcom/android/camera/CameraActivity;->mUpdateThumbnailTask:Lcom/android/camera/CameraActivity$UpdateThumbnailTask;

    .line 757
    iget-object v0, p0, Lcom/android/camera/CameraActivity;->mUpdateThumbnailTask:Lcom/android/camera/CameraActivity$UpdateThumbnailTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity$UpdateThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 758
    return-void
.end method
